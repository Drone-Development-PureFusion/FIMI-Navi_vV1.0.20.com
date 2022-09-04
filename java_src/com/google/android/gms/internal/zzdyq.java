package com.google.android.gms.internal;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public final class zzdyq {
    private static zzdyr zzmmf;
    private static int zzmmg;

    /* loaded from: classes2.dex */
    static final class zza extends zzdyr {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzdyr
        public final void zza(Throwable th, PrintStream printStream) {
            th.printStackTrace(printStream);
        }

        @Override // com.google.android.gms.internal.zzdyr
        public final void zza(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }
    }

    static {
        zzdyr zzaVar;
        Integer num = null;
        try {
            num = zzbss();
            if (num == null || num.intValue() < 19) {
                zzaVar = !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new zzdyu() : new zza();
            } else {
                zzaVar = new zzdyv();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = zza.class.getName();
            printStream.println(new StringBuilder(String.valueOf(name).length() + 132).append("An error has occured when initializing the try-with-resources desuguring strategy. The default strategy ").append(name).append("will be used. The error is: ").toString());
            th.printStackTrace(System.err);
            zzaVar = new zza();
        }
        zzmmf = zzaVar;
        zzmmg = num == null ? 1 : num.intValue();
    }

    public static void zza(Throwable th, PrintStream printStream) {
        zzmmf.zza(th, printStream);
    }

    public static void zza(Throwable th, PrintWriter printWriter) {
        zzmmf.zza(th, printWriter);
    }

    private static Integer zzbss() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }
}
