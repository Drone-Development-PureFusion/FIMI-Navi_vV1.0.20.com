package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfgj;
import com.google.android.gms.internal.zzfgk;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class zzfgj<MessageType extends zzfgj<MessageType, BuilderType>, BuilderType extends zzfgk<MessageType, BuilderType>> implements zzfjc {
    private static boolean zzpnp = false;
    protected int zzpno = 0;

    protected static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzfgk.zza(iterable, list);
    }

    @Override // com.google.android.gms.internal.zzfjc
    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzhs()];
            zzfhg zzbc = zzfhg.zzbc(bArr);
            zza(zzbc);
            zzbc.zzcyx();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("byte array").length()).append("Serializing ").append(name).append(" to a ").append("byte array").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.zzfjc
    public final zzfgs toByteString() {
        try {
            zzfgx zzle = zzfgs.zzle(zzhs());
            zza(zzle.zzcxw());
            return zzle.zzcxv();
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length()).append("Serializing ").append(name).append(" to a ").append("ByteString").append(" threw an IOException (should never happen).").toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.zzfjc
    public final void writeTo(OutputStream outputStream) throws IOException {
        zzfhg zzb = zzfhg.zzb(outputStream, zzfhg.zzlr(zzhs()));
        zza(zzb);
        zzb.flush();
    }
}
