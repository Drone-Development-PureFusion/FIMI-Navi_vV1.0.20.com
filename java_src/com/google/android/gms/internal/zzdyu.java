package com.google.android.gms.internal;

import ch.qos.logback.core.CoreConstants;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes2.dex */
final class zzdyu extends zzdyr {
    private final zzdys zzmml = new zzdys();

    @Override // com.google.android.gms.internal.zzdyr
    public final void zza(Throwable th, PrintStream printStream) {
        th.printStackTrace(printStream);
        List<Throwable> zza = this.zzmml.zza(th, false);
        if (zza == null) {
            return;
        }
        synchronized (zza) {
            for (Throwable th2 : zza) {
                printStream.print(CoreConstants.SUPPRESSED);
                th2.printStackTrace(printStream);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzdyr
    public final void zza(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> zza = this.zzmml.zza(th, false);
        if (zza == null) {
            return;
        }
        synchronized (zza) {
            for (Throwable th2 : zza) {
                printWriter.print(CoreConstants.SUPPRESSED);
                th2.printStackTrace(printWriter);
            }
        }
    }
}
