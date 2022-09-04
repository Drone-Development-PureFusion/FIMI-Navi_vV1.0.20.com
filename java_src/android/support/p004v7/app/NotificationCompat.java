package android.support.p004v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.app.BundleCompat;
import android.support.p001v4.app.NotificationCompat;
import android.support.p001v4.media.app.NotificationCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
@Deprecated
/* renamed from: android.support.v7.app.NotificationCompat */
/* loaded from: classes.dex */
public class NotificationCompat extends android.support.p001v4.app.NotificationCompat {

    @Deprecated
    /* renamed from: android.support.v7.app.NotificationCompat$DecoratedCustomViewStyle */
    /* loaded from: classes.dex */
    public static class DecoratedCustomViewStyle extends NotificationCompat.DecoratedCustomViewStyle {
    }

    @Deprecated
    /* renamed from: android.support.v7.app.NotificationCompat$DecoratedMediaCustomViewStyle */
    /* loaded from: classes.dex */
    public static class DecoratedMediaCustomViewStyle extends NotificationCompat.DecoratedMediaCustomViewStyle {
    }

    @Deprecated
    public static MediaSessionCompat.Token getMediaSession(Notification notification) {
        Bundle extras = getExtras(notification);
        if (extras != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                Parcelable tokenInner = extras.getParcelable(android.support.p001v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (tokenInner != null) {
                    return MediaSessionCompat.Token.fromToken(tokenInner);
                }
            } else {
                IBinder tokenInner2 = BundleCompat.getBinder(extras, android.support.p001v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (tokenInner2 != null) {
                    Parcel p = Parcel.obtain();
                    p.writeStrongBinder(tokenInner2);
                    p.setDataPosition(0);
                    MediaSessionCompat.Token createFromParcel = MediaSessionCompat.Token.CREATOR.createFromParcel(p);
                    p.recycle();
                    return createFromParcel;
                }
            }
        }
        return null;
    }

    @Deprecated
    /* renamed from: android.support.v7.app.NotificationCompat$Builder */
    /* loaded from: classes.dex */
    public static class Builder extends NotificationCompat.Builder {
        @Deprecated
        public Builder(Context context) {
            super(context);
        }
    }

    @Deprecated
    /* renamed from: android.support.v7.app.NotificationCompat$MediaStyle */
    /* loaded from: classes.dex */
    public static class MediaStyle extends NotificationCompat.MediaStyle {
        @Deprecated
        public MediaStyle() {
        }

        @Deprecated
        public MediaStyle(NotificationCompat.Builder builder) {
            super(builder);
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        @Deprecated
        /* renamed from: setShowActionsInCompactView  reason: collision with other method in class */
        public MediaStyle mo1568setShowActionsInCompactView(int... actions) {
            return (MediaStyle) super.mo1568setShowActionsInCompactView(actions);
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        @Deprecated
        /* renamed from: setMediaSession  reason: collision with other method in class */
        public MediaStyle mo1567setMediaSession(MediaSessionCompat.Token token) {
            return (MediaStyle) super.mo1567setMediaSession(token);
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        @Deprecated
        /* renamed from: setShowCancelButton  reason: collision with other method in class */
        public MediaStyle mo1569setShowCancelButton(boolean show) {
            return (MediaStyle) super.mo1569setShowCancelButton(show);
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        @Deprecated
        /* renamed from: setCancelButtonIntent  reason: collision with other method in class */
        public MediaStyle mo1566setCancelButtonIntent(PendingIntent pendingIntent) {
            return (MediaStyle) super.mo1566setCancelButtonIntent(pendingIntent);
        }
    }
}
