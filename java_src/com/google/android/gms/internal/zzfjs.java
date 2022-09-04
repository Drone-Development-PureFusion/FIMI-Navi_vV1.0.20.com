package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.Stack;
/* loaded from: classes2.dex */
public final class zzfjs {
    private final Stack<zzfgs> zzprx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfjs() {
        this.zzprx = new Stack<>();
    }

    public static /* synthetic */ zzfgs zza(zzfjs zzfjsVar, zzfgs zzfgsVar, zzfgs zzfgsVar2) {
        return zzfjsVar.zzc(zzfgsVar, zzfgsVar2);
    }

    private final void zzbb(zzfgs zzfgsVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        zzfgs zzfgsVar2;
        zzfgs zzfgsVar3 = zzfgsVar;
        while (!zzfgsVar3.zzcxs()) {
            if (!(zzfgsVar3 instanceof zzfjq)) {
                String valueOf = String.valueOf(zzfgsVar3.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 49).append("Has a new type of ByteString been created? Found ").append(valueOf).toString());
            }
            zzfjq zzfjqVar = (zzfjq) zzfgsVar3;
            zzfgsVar2 = zzfjqVar.zzprt;
            zzbb(zzfgsVar2);
            zzfgsVar3 = zzfjqVar.zzpru;
        }
        int zzmp = zzmp(zzfgsVar3.size());
        iArr = zzfjq.zzprr;
        int i = iArr[zzmp + 1];
        if (this.zzprx.isEmpty() || this.zzprx.peek().size() >= i) {
            this.zzprx.push(zzfgsVar3);
            return;
        }
        iArr2 = zzfjq.zzprr;
        int i2 = iArr2[zzmp];
        zzfjq pop = this.zzprx.pop();
        while (!this.zzprx.isEmpty() && this.zzprx.peek().size() < i2) {
            pop = new zzfjq(this.zzprx.pop(), pop);
        }
        zzfjq zzfjqVar2 = new zzfjq(pop, zzfgsVar3);
        while (!this.zzprx.isEmpty()) {
            int zzmp2 = zzmp(zzfjqVar2.size());
            iArr3 = zzfjq.zzprr;
            if (this.zzprx.peek().size() >= iArr3[zzmp2 + 1]) {
                break;
            }
            zzfjqVar2 = new zzfjq(this.zzprx.pop(), zzfjqVar2);
        }
        this.zzprx.push(zzfjqVar2);
    }

    public final zzfgs zzc(zzfgs zzfgsVar, zzfgs zzfgsVar2) {
        zzbb(zzfgsVar);
        zzbb(zzfgsVar2);
        zzfjq pop = this.zzprx.pop();
        while (!this.zzprx.isEmpty()) {
            pop = new zzfjq(this.zzprx.pop(), pop);
        }
        return pop;
    }

    private static int zzmp(int i) {
        int[] iArr;
        iArr = zzfjq.zzprr;
        int binarySearch = Arrays.binarySearch(iArr, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }
}
