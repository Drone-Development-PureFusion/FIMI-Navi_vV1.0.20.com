package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStore;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStoreImpl;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class IdManager {
    static final String ADVERTISING_PREFERENCES = "com.twitter.sdk.android.AdvertisingPreferences";
    static final String COLLECT_IDENTIFIERS_ENABLED = "com.twitter.sdk.android.COLLECT_IDENTIFIERS_ENABLED";
    static final String PREFKEY_INSTALLATION_UUID = "installation_uuid";
    AdvertisingInfo advertisingInfo;
    AdvertisingInfoProvider advertisingInfoProvider;
    private final String appIdentifier;
    private final boolean collectHardwareIds;
    boolean fetchedAdvertisingInfo;
    private final ReentrantLock installationIdLock;
    private final PreferenceStore preferenceStore;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    public IdManager(Context appContext) {
        this(appContext, new PreferenceStoreImpl(appContext, ADVERTISING_PREFERENCES));
    }

    IdManager(Context appContext, PreferenceStore preferenceStore) {
        this(appContext, preferenceStore, new AdvertisingInfoProvider(appContext, preferenceStore));
    }

    IdManager(Context appContext, PreferenceStore preferenceStore, AdvertisingInfoProvider advertisingInfoProvider) {
        this.installationIdLock = new ReentrantLock();
        if (appContext == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        this.appIdentifier = appContext.getPackageName();
        this.advertisingInfoProvider = advertisingInfoProvider;
        this.preferenceStore = preferenceStore;
        this.collectHardwareIds = CommonUtils.getBooleanResourceValue(appContext, COLLECT_IDENTIFIERS_ENABLED, true);
        if (!this.collectHardwareIds) {
            Twitter.getLogger().mo1293d("Twitter", "Device ID collection disabled for " + appContext.getPackageName());
        }
    }

    private String formatId(String id) {
        if (id == null) {
            return null;
        }
        return ID_PATTERN.matcher(id).replaceAll("").toLowerCase(Locale.US);
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getOsVersionString() {
        return getOsDisplayVersionString() + "/" + getOsBuildVersionString();
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL));
    }

    private String removeForwardSlashesIn(String s) {
        return s.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public String getDeviceUUID() {
        if (!this.collectHardwareIds) {
            return "";
        }
        SharedPreferences prefs = this.preferenceStore.get();
        String toReturn = prefs.getString(PREFKEY_INSTALLATION_UUID, null);
        if (toReturn == null) {
            return createInstallationUUID();
        }
        return toReturn;
    }

    private String createInstallationUUID() {
        this.installationIdLock.lock();
        try {
            String uuid = this.preferenceStore.get().getString(PREFKEY_INSTALLATION_UUID, null);
            if (uuid == null) {
                uuid = formatId(UUID.randomUUID().toString());
                this.preferenceStore.save(this.preferenceStore.edit().putString(PREFKEY_INSTALLATION_UUID, uuid));
            }
            return uuid;
        } finally {
            this.installationIdLock.unlock();
        }
    }

    synchronized AdvertisingInfo getAdvertisingInfo() {
        if (!this.fetchedAdvertisingInfo) {
            this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
            this.fetchedAdvertisingInfo = true;
        }
        return this.advertisingInfo;
    }

    public Boolean isLimitAdTrackingEnabled() {
        AdvertisingInfo advertisingInfo;
        if (!this.collectHardwareIds || (advertisingInfo = getAdvertisingInfo()) == null) {
            return null;
        }
        Boolean toReturn = Boolean.valueOf(advertisingInfo.limitAdTrackingEnabled);
        return toReturn;
    }

    public String getAdvertisingId() {
        AdvertisingInfo advertisingInfo;
        if (!this.collectHardwareIds || (advertisingInfo = getAdvertisingInfo()) == null) {
            return null;
        }
        String toReturn = advertisingInfo.advertisingId;
        return toReturn;
    }
}
