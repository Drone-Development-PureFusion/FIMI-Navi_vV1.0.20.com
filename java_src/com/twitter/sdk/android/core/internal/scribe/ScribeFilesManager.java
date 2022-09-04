package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.internal.CurrentTimeProvider;
import java.io.IOException;
import java.util.UUID;
/* loaded from: classes2.dex */
class ScribeFilesManager extends EventsFilesManager<ScribeEvent> {
    static final String FILE_EXTENSION = ".tap";
    static final String FILE_PREFIX = "se";

    public ScribeFilesManager(Context context, EventTransform<ScribeEvent> transform, CurrentTimeProvider currentTimeProvider, QueueFileEventStorage eventsStorage, int defaultMaxFilesToKeep) throws IOException {
        super(context, transform, currentTimeProvider, eventsStorage, defaultMaxFilesToKeep);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsFilesManager
    protected String generateUniqueRollOverFileName() {
        UUID targetUUIDComponent = UUID.randomUUID();
        return FILE_PREFIX + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + targetUUIDComponent.toString() + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.getCurrentTimeMillis() + FILE_EXTENSION;
    }
}
