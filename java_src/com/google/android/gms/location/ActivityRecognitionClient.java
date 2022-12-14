package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.zzda;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbj;
import com.google.android.gms.tasks.Task;
/* loaded from: classes2.dex */
public class ActivityRecognitionClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    @Hide
    public ActivityRecognitionClient(@NonNull Activity activity) {
        super(activity, (Api<Api.ApiOptions>) LocationServices.API, (Api.ApiOptions) null, (zzda) new com.google.android.gms.common.api.internal.zzg());
    }

    @Hide
    public ActivityRecognitionClient(@NonNull Context context) {
        super(context, LocationServices.API, (Api.ApiOptions) null, new com.google.android.gms.common.api.internal.zzg());
    }

    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> removeActivityTransitionUpdates(PendingIntent pendingIntent) {
        return zzbj.zzb(ActivityRecognition.ActivityRecognitionApi.zza(zzahw(), pendingIntent));
    }

    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> removeActivityUpdates(PendingIntent pendingIntent) {
        return zzbj.zzb(ActivityRecognition.ActivityRecognitionApi.removeActivityUpdates(zzahw(), pendingIntent));
    }

    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> requestActivityTransitionUpdates(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent) {
        return zzbj.zzb(ActivityRecognition.ActivityRecognitionApi.zza(zzahw(), activityTransitionRequest, pendingIntent));
    }

    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> requestActivityUpdates(long j, PendingIntent pendingIntent) {
        return zzbj.zzb(ActivityRecognition.ActivityRecognitionApi.requestActivityUpdates(zzahw(), j, pendingIntent));
    }
}
