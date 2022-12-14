package org.greenrobot.eventbus.util;

import android.content.res.Resources;
import android.util.Log;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes2.dex */
public class ErrorDialogConfig {
    int defaultDialogIconId;
    final int defaultErrorMsgId;
    Class<?> defaultEventTypeOnDialogClosed;
    final int defaultTitleId;
    EventBus eventBus;
    boolean logExceptions = true;
    final ExceptionToResourceMapping mapping = new ExceptionToResourceMapping();
    final Resources resources;
    String tagForLoggingExceptions;

    public ErrorDialogConfig(Resources resources, int defaultTitleId, int defaultMsgId) {
        this.resources = resources;
        this.defaultTitleId = defaultTitleId;
        this.defaultErrorMsgId = defaultMsgId;
    }

    public ErrorDialogConfig addMapping(Class<? extends Throwable> clazz, int msgId) {
        this.mapping.addMapping(clazz, msgId);
        return this;
    }

    public int getMessageIdForThrowable(Throwable throwable) {
        Integer resId = this.mapping.mapThrowable(throwable);
        if (resId != null) {
            return resId.intValue();
        }
        Log.d(EventBus.TAG, "No specific message ressource ID found for " + throwable);
        return this.defaultErrorMsgId;
    }

    public void setDefaultDialogIconId(int defaultDialogIconId) {
        this.defaultDialogIconId = defaultDialogIconId;
    }

    public void setDefaultEventTypeOnDialogClosed(Class<?> defaultEventTypeOnDialogClosed) {
        this.defaultEventTypeOnDialogClosed = defaultEventTypeOnDialogClosed;
    }

    public void disableExceptionLogging() {
        this.logExceptions = false;
    }

    public void setTagForLoggingExceptions(String tagForLoggingExceptions) {
        this.tagForLoggingExceptions = tagForLoggingExceptions;
    }

    public void setEventBus(EventBus eventBus) {
        this.eventBus = eventBus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventBus getEventBus() {
        return this.eventBus != null ? this.eventBus : EventBus.getDefault();
    }
}
