package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.SystemCurrentTimeProvider;
import com.twitter.sdk.android.core.internal.persistence.FileStoreImpl;
import com.twitter.sdk.android.core.internal.scribe.ScribeEvent;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class ScribeClient {
    private static final String STORAGE_DIR_BASE = "_se_to_send";
    private static final String WORKING_FILENAME_BASE = "_se.tap";
    private final TwitterAuthConfig authConfig;
    private final Context context;
    private final ScheduledExecutorService executor;
    private final GuestSessionProvider guestSessionProvider;
    private final IdManager idManager;
    private final ScribeConfig scribeConfig;
    final ConcurrentHashMap<Long, ScribeHandler> scribeHandlers = new ConcurrentHashMap<>(2);
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;
    private final ScribeEvent.Transform transform;

    public ScribeClient(Context context, ScheduledExecutorService executor, ScribeConfig scribeConfig, ScribeEvent.Transform transform, TwitterAuthConfig authConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager) {
        this.context = context;
        this.executor = executor;
        this.scribeConfig = scribeConfig;
        this.transform = transform;
        this.authConfig = authConfig;
        this.sessionManager = sessionManager;
        this.guestSessionProvider = guestSessionProvider;
        this.idManager = idManager;
    }

    public boolean scribe(ScribeEvent event, long ownerId) {
        try {
            getScribeHandler(ownerId).scribe(event);
            return true;
        } catch (IOException e) {
            CommonUtils.logControlledError(this.context, "Failed to scribe event", e);
            return false;
        }
    }

    public boolean scribeAndFlush(ScribeEvent event, long ownerId) {
        try {
            getScribeHandler(ownerId).scribeAndFlush(event);
            return true;
        } catch (IOException e) {
            CommonUtils.logControlledError(this.context, "Failed to scribe event", e);
            return false;
        }
    }

    ScribeHandler getScribeHandler(long ownerId) throws IOException {
        if (!this.scribeHandlers.containsKey(Long.valueOf(ownerId))) {
            this.scribeHandlers.putIfAbsent(Long.valueOf(ownerId), newScribeHandler(ownerId));
        }
        return this.scribeHandlers.get(Long.valueOf(ownerId));
    }

    private ScribeHandler newScribeHandler(long ownerId) throws IOException {
        QueueFileEventStorage storage = new QueueFileEventStorage(this.context, new FileStoreImpl(this.context).getFilesDir(), getWorkingFileNameForOwner(ownerId), getStorageDirForOwner(ownerId));
        ScribeFilesManager filesManager = new ScribeFilesManager(this.context, this.transform, new SystemCurrentTimeProvider(), storage, this.scribeConfig.maxFilesToKeep);
        return new ScribeHandler(this.context, getScribeStrategy(ownerId, filesManager), filesManager, this.executor);
    }

    EventsStrategy<ScribeEvent> getScribeStrategy(long ownerId, ScribeFilesManager filesManager) {
        if (this.scribeConfig.isEnabled) {
            CommonUtils.logControlled(this.context, "Scribe enabled");
            return new EnabledScribeStrategy(this.context, this.executor, filesManager, this.scribeConfig, new ScribeFilesSender(this.context, this.scribeConfig, ownerId, this.authConfig, this.sessionManager, this.guestSessionProvider, this.executor, this.idManager));
        }
        CommonUtils.logControlled(this.context, "Scribe disabled");
        return new DisabledEventsStrategy();
    }

    String getWorkingFileNameForOwner(long ownerId) {
        return ownerId + WORKING_FILENAME_BASE;
    }

    String getStorageDirForOwner(long ownerId) {
        return ownerId + STORAGE_DIR_BASE;
    }
}
