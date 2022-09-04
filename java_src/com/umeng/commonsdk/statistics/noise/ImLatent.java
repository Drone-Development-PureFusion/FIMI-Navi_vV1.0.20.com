package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import ch.qos.logback.core.spi.ComponentTracker;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.C2404a;
import com.umeng.commonsdk.statistics.common.C2415d;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.AbstractC2451d;
import com.umeng.commonsdk.statistics.internal.StatTracer;
/* loaded from: classes2.dex */
public class ImLatent implements AbstractC2451d {
    private static ImLatent instanse = null;
    private Context context;
    private StatTracer statTracer;
    private C2415d storeHelper;
    private final int _DEFAULT_HOURS = 360;
    private final int _DEFAULT_MIN_HOURS = 36;
    private final int _DEFAULT_MIN_LATENT = 1;
    private final int _DEFAULT_MAX_LATENT = 1800;
    private final long _ONE_HOURS_IN_MS = 3600000;
    private final long _360HOURS_IN_MS = 1296000000;
    private final long _36HOURS_IN_MS = 129600000;
    private final int LATENT_MAX = ComponentTracker.DEFAULT_TIMEOUT;
    private final int LATENT_WINDOW = 10;
    private long latentHour = 1296000000;
    private int latentWindow = 10;
    private long mDelay = 0;
    private long mElapsed = 0;
    private boolean mLatentActivite = false;
    private Object mLatentLock = new Object();

    public static synchronized ImLatent getService(Context context, StatTracer statTracer) {
        ImLatent imLatent;
        synchronized (ImLatent.class) {
            if (instanse == null) {
                instanse = new ImLatent(context, statTracer);
                instanse.onImprintChanged(ImprintHandler.getImprintService(context).m293b());
            }
            imLatent = instanse;
        }
        return imLatent;
    }

    private ImLatent(Context context, StatTracer statTracer) {
        this.context = context;
        this.storeHelper = C2415d.m348a(context);
        this.statTracer = statTracer;
    }

    public boolean shouldStartLatency() {
        boolean z = false;
        if (!this.storeHelper.m344c() && !this.statTracer.isFirstRequest()) {
            synchronized (this.mLatentLock) {
                if (!this.mLatentActivite) {
                    long currentTimeMillis = System.currentTimeMillis() - this.statTracer.getLastReqTime();
                    if (currentTimeMillis > this.latentHour) {
                        String signature = Envelope.getSignature(this.context);
                        synchronized (this.mLatentLock) {
                            this.mDelay = DataHelper.random(this.latentWindow, signature);
                            this.mElapsed = currentTimeMillis;
                            this.mLatentActivite = true;
                        }
                        z = true;
                    } else if (currentTimeMillis > 129600000) {
                        synchronized (this.mLatentLock) {
                            this.mDelay = 0L;
                            this.mElapsed = currentTimeMillis;
                            this.mLatentActivite = true;
                        }
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public boolean isLatentActivite() {
        boolean z;
        synchronized (this.mLatentLock) {
            z = this.mLatentActivite;
        }
        return z;
    }

    public void latentDeactivite() {
        synchronized (this.mLatentLock) {
            this.mLatentActivite = false;
        }
    }

    public long getDelayTime() {
        long j;
        synchronized (this.mLatentLock) {
            j = this.mDelay;
        }
        return j;
    }

    public long getElapsedTime() {
        return this.mElapsed;
    }

    @Override // com.umeng.commonsdk.statistics.internal.AbstractC2451d
    public void onImprintChanged(ImprintHandler.C2421a c2421a) {
        int i = 360;
        int intValue = Integer.valueOf(c2421a.m283a("latent_hours", String.valueOf(360))).intValue();
        if (intValue > 36) {
            i = intValue;
        }
        this.latentHour = i * 3600000;
        int intValue2 = Integer.valueOf(c2421a.m283a(C2354g.f1013ax, "0")).intValue();
        if (intValue2 < 1 || intValue2 > 1800) {
            intValue2 = 0;
        }
        if (intValue2 == 0) {
            if (C2404a.f1214c <= 0 || C2404a.f1214c > 1800000) {
                this.latentWindow = 10;
                return;
            } else {
                this.latentWindow = C2404a.f1214c;
                return;
            }
        }
        this.latentWindow = intValue2;
    }
}
