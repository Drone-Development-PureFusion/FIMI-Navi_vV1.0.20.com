package android.support.p001v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.RemoteInputCompatBase;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.app.NotificationCompatBase */
/* loaded from: classes.dex */
public class NotificationCompatBase {

    /* renamed from: android.support.v4.app.NotificationCompatBase$Action */
    /* loaded from: classes.dex */
    public static abstract class Action {

        /* renamed from: android.support.v4.app.NotificationCompatBase$Action$Factory */
        /* loaded from: classes.dex */
        public interface Factory {
            Action build(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInputCompatBase.RemoteInput[] remoteInputArr, RemoteInputCompatBase.RemoteInput[] remoteInputArr2, boolean z);

            /* renamed from: newArray */
            Action[] mo1515newArray(int i);
        }

        public abstract PendingIntent getActionIntent();

        public abstract boolean getAllowGeneratedReplies();

        /* renamed from: getDataOnlyRemoteInputs */
        public abstract RemoteInputCompatBase.RemoteInput[] mo1513getDataOnlyRemoteInputs();

        public abstract Bundle getExtras();

        public abstract int getIcon();

        /* renamed from: getRemoteInputs */
        public abstract RemoteInputCompatBase.RemoteInput[] mo1514getRemoteInputs();

        public abstract CharSequence getTitle();
    }

    /* renamed from: android.support.v4.app.NotificationCompatBase$UnreadConversation */
    /* loaded from: classes.dex */
    public static abstract class UnreadConversation {

        /* renamed from: android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory */
        /* loaded from: classes.dex */
        public interface Factory {
            /* renamed from: build */
            UnreadConversation mo1518build(String[] strArr, RemoteInputCompatBase.RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long getLatestTimestamp();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String[] getMessages();

        abstract String getParticipant();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String[] getParticipants();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract PendingIntent getReadPendingIntent();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: getRemoteInput */
        public abstract RemoteInputCompatBase.RemoteInput mo1517getRemoteInput();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract PendingIntent getReplyPendingIntent();
    }
}
