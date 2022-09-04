package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.GuardedBy;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.NotificationCompat;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.C1932R;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.zzbm;
import com.google.android.gms.common.api.internal.zzbx;
import com.google.android.gms.common.api.internal.zzby;
import com.google.android.gms.common.api.internal.zzcf;
import com.google.android.gms.common.api.internal.zzcn;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.common.internal.zzu;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class GoogleApiAvailability extends zzf {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @GuardedBy("mLock")
    private String zzfqx;
    private static final Object mLock = new Object();
    private static final GoogleApiAvailability zzfqw = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzf.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public class zza extends Handler {
        private final Context mApplicationContext;

        public zza(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.mApplicationContext = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int isGooglePlayServicesAvailable = GoogleApiAvailability.this.isGooglePlayServicesAvailable(this.mApplicationContext);
                    if (!GoogleApiAvailability.this.isUserResolvableError(isGooglePlayServicesAvailable)) {
                        return;
                    }
                    GoogleApiAvailability.this.showErrorNotification(this.mApplicationContext, isGooglePlayServicesAvailable);
                    return;
                default:
                    Log.w("GoogleApiAvailability", new StringBuilder(50).append("Don't know how to handle this message: ").append(message.what).toString());
                    return;
            }
        }
    }

    GoogleApiAvailability() {
    }

    public static GoogleApiAvailability getInstance() {
        return zzfqw;
    }

    @Hide
    public static Dialog zza(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(zzu.zzh(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        zza(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Dialog zza(Context context, int i, zzv zzvVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(zzu.zzh(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String zzj = zzu.zzj(context, i);
        if (zzj != null) {
            builder.setPositiveButton(zzj, zzvVar);
        }
        String zzf = zzu.zzf(context, i);
        if (zzf != null) {
            builder.setTitle(zzf);
        }
        return builder.create();
    }

    @Hide
    @Nullable
    public static zzbx zza(Context context, zzby zzbyVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zzbx zzbxVar = new zzbx(zzbyVar);
        context.registerReceiver(zzbxVar, intentFilter);
        zzbxVar.setContext(context);
        if (!zzs.zzr(context, "com.google.android.gms")) {
            zzbyVar.zzaio();
            zzbxVar.unregister();
            return null;
        }
        return zzbxVar;
    }

    @TargetApi(26)
    private final String zza(Context context, NotificationManager notificationManager) {
        zzbq.checkState(com.google.android.gms.common.util.zzs.isAtLeastO());
        String zzahe = zzahe();
        if (zzahe == null) {
            zzahe = "com.google.android.gms.availability";
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(zzahe);
            String zzco = zzu.zzco(context);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(new NotificationChannel(zzahe, zzco, 4));
            } else if (!zzco.equals(notificationChannel.getName())) {
                notificationChannel.setName(zzco);
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        return zzahe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    private final void zza(Context context, int i, String str, PendingIntent pendingIntent) {
        Notification build;
        int i2;
        if (i == 18) {
            zzcd(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String zzg = zzu.zzg(context, i);
            String zzi = zzu.zzi(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (com.google.android.gms.common.util.zzj.zzcv(context)) {
                zzbq.checkState(com.google.android.gms.common.util.zzs.zzanw());
                Notification.Builder addAction = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(zzg).setStyle(new Notification.BigTextStyle().bigText(zzi)).addAction(C1932R.C1934drawable.common_full_open_on_phone, resources.getString(C1932R.string.common_open_on_phone), pendingIntent);
                if (com.google.android.gms.common.util.zzs.isAtLeastO() && com.google.android.gms.common.util.zzs.isAtLeastO()) {
                    addAction.setChannelId(zza(context, notificationManager));
                }
                build = addAction.build();
            } else {
                NotificationCompat.Builder style = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(resources.getString(C1932R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(pendingIntent).setContentTitle(zzg).setContentText(zzi).setLocalOnly(true).setStyle(new NotificationCompat.BigTextStyle().bigText(zzi));
                if (com.google.android.gms.common.util.zzs.isAtLeastO() && com.google.android.gms.common.util.zzs.isAtLeastO()) {
                    style.setChannelId(zza(context, notificationManager));
                }
                build = style.build();
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                    i2 = 10436;
                    zzs.zzfrv.set(false);
                    break;
                default:
                    i2 = 39789;
                    break;
            }
            notificationManager.notify(i2, build);
        }
    }

    @VisibleForTesting(otherwise = 2)
    private final String zzahe() {
        String str;
        synchronized (mLock) {
            str = this.zzfqx;
        }
        return str;
    }

    public Task<Void> checkApiAvailability(GoogleApi<?> googleApi, GoogleApi<?>... googleApiArr) {
        zzbq.checkNotNull(googleApi, "Requested API must not be null.");
        for (GoogleApi<?> googleApi2 : googleApiArr) {
            zzbq.checkNotNull(googleApi2, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(googleApiArr.length + 1);
        arrayList.add(googleApi);
        arrayList.addAll(Arrays.asList(googleApiArr));
        return zzbm.zzajy().zza(arrayList).continueWith(new zze(this));
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, null);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zza(activity, i, zzv.zza(activity, zzf.zza(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.zzf
    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.zzf
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.zzf
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.zzf
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    @MainThread
    public Task<Void> makeGooglePlayServicesAvailable(Activity activity) {
        zzbq.zzgn("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable == 0) {
            return Tasks.forResult(null);
        }
        zzcn zzq = zzcn.zzq(activity);
        zzq.zzb(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        return zzq.getTask();
    }

    @TargetApi(26)
    public void setDefaultNotificationChannelId(@NonNull Context context, @NonNull String str) {
        if (com.google.android.gms.common.util.zzs.isAtLeastO()) {
            zzbq.checkNotNull(((NotificationManager) context.getSystemService("notification")).getNotificationChannel(str));
        }
        synchronized (mLock) {
            this.zzfqx = str;
        }
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zza(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void showErrorNotification(Context context, int i) {
        zza(context, i, (String) null, zza(context, i, 0, "n"));
    }

    public void showErrorNotification(Context context, ConnectionResult connectionResult) {
        zza(context, connectionResult.getErrorCode(), (String) null, getErrorResolutionPendingIntent(context, connectionResult));
    }

    @Hide
    public final boolean zza(Activity activity, @NonNull zzcf zzcfVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog zza2 = zza(activity, i, zzv.zza(zzcfVar, zzf.zza(activity, i, "d"), 2), onCancelListener);
        if (zza2 == null) {
            return false;
        }
        zza(activity, zza2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Hide
    public final boolean zza(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent != null) {
            zza(context, connectionResult.getErrorCode(), (String) null, GoogleApiActivity.zza(context, errorResolutionPendingIntent, i));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzcd(Context context) {
        new zza(context).sendEmptyMessageDelayed(1, 120000L);
    }
}
