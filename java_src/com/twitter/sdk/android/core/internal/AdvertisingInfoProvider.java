package com.twitter.sdk.android.core.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class AdvertisingInfoProvider {
    private static final String PREFKEY_ADVERTISING_ID = "advertising_id";
    private static final String PREFKEY_LIMIT_AD_TRACKING = "limit_ad_tracking_enabled";
    private final Context context;
    private final PreferenceStore preferenceStore;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingInfoProvider(Context context, PreferenceStore preferenceStore) {
        this.context = context.getApplicationContext();
        this.preferenceStore = preferenceStore;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingInfo getAdvertisingInfo() {
        AdvertisingInfo infoToReturn = getInfoFromPreferences();
        if (isInfoValid(infoToReturn)) {
            Twitter.getLogger().mo1293d("Twitter", "Using AdvertisingInfo from Preference Store");
            refreshInfoIfNeededAsync(infoToReturn);
            return infoToReturn;
        }
        AdvertisingInfo infoToReturn2 = getAdvertisingInfoFromStrategies();
        storeInfoToPreferences(infoToReturn2);
        return infoToReturn2;
    }

    private void refreshInfoIfNeededAsync(final AdvertisingInfo advertisingInfo) {
        new Thread(new Runnable() { // from class: com.twitter.sdk.android.core.internal.AdvertisingInfoProvider.1
            @Override // java.lang.Runnable
            public void run() {
                AdvertisingInfo infoToStore = AdvertisingInfoProvider.this.getAdvertisingInfoFromStrategies();
                if (!advertisingInfo.equals(infoToStore)) {
                    Twitter.getLogger().mo1293d("Twitter", "Asychronously getting Advertising Info and storing it to preferences");
                    AdvertisingInfoProvider.this.storeInfoToPreferences(infoToStore);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public void storeInfoToPreferences(AdvertisingInfo infoToReturn) {
        if (isInfoValid(infoToReturn)) {
            this.preferenceStore.save(this.preferenceStore.edit().putString(PREFKEY_ADVERTISING_ID, infoToReturn.advertisingId).putBoolean(PREFKEY_LIMIT_AD_TRACKING, infoToReturn.limitAdTrackingEnabled));
        } else {
            this.preferenceStore.save(this.preferenceStore.edit().remove(PREFKEY_ADVERTISING_ID).remove(PREFKEY_LIMIT_AD_TRACKING));
        }
    }

    private AdvertisingInfo getInfoFromPreferences() {
        String advertisingId = this.preferenceStore.get().getString(PREFKEY_ADVERTISING_ID, "");
        boolean limitAd = this.preferenceStore.get().getBoolean(PREFKEY_LIMIT_AD_TRACKING, false);
        return new AdvertisingInfo(advertisingId, limitAd);
    }

    private AdvertisingInfoStrategy getReflectionStrategy() {
        return new AdvertisingInfoReflectionStrategy(this.context);
    }

    private AdvertisingInfoStrategy getServiceStrategy() {
        return new AdvertisingInfoServiceStrategy(this.context);
    }

    private boolean isInfoValid(AdvertisingInfo advertisingInfo) {
        return advertisingInfo != null && !TextUtils.isEmpty(advertisingInfo.advertisingId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdvertisingInfo getAdvertisingInfoFromStrategies() {
        AdvertisingInfoStrategy adInfoStrategy = getReflectionStrategy();
        AdvertisingInfo infoToReturn = adInfoStrategy.getAdvertisingInfo();
        if (!isInfoValid(infoToReturn)) {
            AdvertisingInfoStrategy adInfoStrategy2 = getServiceStrategy();
            infoToReturn = adInfoStrategy2.getAdvertisingInfo();
            if (!isInfoValid(infoToReturn)) {
                Twitter.getLogger().mo1293d("Twitter", "AdvertisingInfo not present");
            } else {
                Twitter.getLogger().mo1293d("Twitter", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            Twitter.getLogger().mo1293d("Twitter", "Using AdvertisingInfo from Reflection Provider");
        }
        return infoToReturn;
    }
}
