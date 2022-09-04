package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class EnabledScribeStrategy extends EnabledEventsStrategy<ScribeEvent> {
    private final FilesSender filesSender;

    public EnabledScribeStrategy(Context context, ScheduledExecutorService executorService, ScribeFilesManager filesManager, ScribeConfig config, ScribeFilesSender filesSender) {
        super(context, executorService, filesManager);
        this.filesSender = filesSender;
        configureRollover(config.sendIntervalSeconds);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStrategy
    public FilesSender getFilesSender() {
        return this.filesSender;
    }
}
