package com.github.moduth.blockcanary;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.github.moduth.blockcanary.internal.BlockInfo;
import com.github.moduth.blockcanary.p016ui.DisplayActivity;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes2.dex */
final class DisplayService implements BlockInterceptor {
    private static final String TAG = "DisplayService";

    @Override // com.github.moduth.blockcanary.BlockInterceptor
    public void onBlock(Context context, BlockInfo blockInfo) {
        Intent intent = new Intent(context, DisplayActivity.class);
        intent.putExtra("show_latest", blockInfo.timeStart);
        intent.setFlags(335544320);
        PendingIntent pendingIntent = PendingIntent.getActivity(context, 1, intent, NTLMConstants.FLAG_UNIDENTIFIED_10);
        String contentTitle = context.getString(C1917R.string.block_canary_class_has_blocked, blockInfo.timeStart);
        String contentText = context.getString(C1917R.string.block_canary_notification_message);
        show(context, contentTitle, contentText, pendingIntent);
    }

    @TargetApi(11)
    private void show(Context context, String contentTitle, String contentText, PendingIntent pendingIntent) {
        Notification notification;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT < 11) {
            notification = new Notification();
            notification.icon = C1917R.C1918drawable.block_canary_notification;
            notification.when = System.currentTimeMillis();
            notification.flags |= 16;
            notification.defaults = 1;
            try {
                Method deprecatedMethod = notification.getClass().getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class);
                deprecatedMethod.invoke(notification, context, contentTitle, contentText, pendingIntent);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
                Log.w(TAG, "Method not found", e);
            }
        } else {
            Notification.Builder builder = new Notification.Builder(context).setSmallIcon(C1917R.C1918drawable.block_canary_notification).setWhen(System.currentTimeMillis()).setContentTitle(contentTitle).setContentText(contentText).setAutoCancel(true).setContentIntent(pendingIntent).setDefaults(1);
            notification = Build.VERSION.SDK_INT < 16 ? builder.getNotification() : builder.build();
        }
        notificationManager.notify(-558907665, notification);
    }
}
