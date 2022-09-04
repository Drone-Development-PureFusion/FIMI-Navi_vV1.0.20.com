package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ScribeHandler extends EventsHandler<ScribeEvent> {
    public ScribeHandler(Context context, EventsStrategy<ScribeEvent> strategy, EventsFilesManager filesManager, ScheduledExecutorService executorService) {
        super(context, strategy, filesManager, executorService);
    }

    public void scribe(ScribeEvent event) {
        recordEventAsync(event, false);
    }

    public void scribeAndFlush(ScribeEvent event) {
        recordEventAsync(event, true);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsHandler
    protected EventsStrategy<ScribeEvent> getDisabledEventsStrategy() {
        return new DisabledEventsStrategy();
    }
}
