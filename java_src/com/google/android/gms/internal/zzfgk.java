package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfgj;
import com.google.android.gms.internal.zzfgk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class zzfgk<MessageType extends zzfgj<MessageType, BuilderType>, BuilderType extends zzfgk<MessageType, BuilderType>> implements zzfjd {
    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzfhz.checkNotNull(iterable);
        if (!(iterable instanceof zzfil)) {
            if (iterable instanceof zzfjm) {
                list.addAll((Collection) iterable);
                return;
            } else {
                zzb(iterable, list);
                return;
            }
        }
        List<?> zzdap = ((zzfil) iterable).zzdap();
        zzfil zzfilVar = (zzfil) list;
        int size = list.size();
        for (Object obj : zzdap) {
            if (obj == null) {
                String sb = new StringBuilder(37).append("Element at index ").append(zzfilVar.size() - size).append(" is null.").toString();
                for (int size2 = zzfilVar.size() - 1; size2 >= size; size2--) {
                    zzfilVar.remove(size2);
                }
                throw new NullPointerException(sb);
            } else if (obj instanceof zzfgs) {
                zzfilVar.zzba((zzfgs) obj);
            } else {
                zzfilVar.add((String) obj);
            }
        }
    }

    private static <T> void zzb(Iterable<T> iterable, List<? super T> list) {
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size = list.size();
        for (T t : iterable) {
            if (t == null) {
                String sb = new StringBuilder(37).append("Element at index ").append(list.size() - size).append(" is null.").toString();
                for (int size2 = list.size() - 1; size2 >= size; size2--) {
                    list.remove(size2);
                }
                throw new NullPointerException(sb);
            }
            list.add(t);
        }
    }

    protected abstract BuilderType zza(MessageType messagetype);

    @Override // com.google.android.gms.internal.zzfjd
    /* renamed from: zza */
    public abstract BuilderType zzb(zzfhb zzfhbVar, zzfhm zzfhmVar) throws IOException;

    @Override // 
    /* renamed from: zzcxj */
    public abstract BuilderType clone();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzfjd
    public final /* synthetic */ zzfjd zzd(zzfjc zzfjcVar) {
        if (!zzczu().getClass().isInstance(zzfjcVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zza((zzfgj) zzfjcVar);
    }
}
