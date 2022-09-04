package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
final class zzr implements Continuation<Void, List<TResult>> {
    private /* synthetic */ Collection zzles;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(Collection collection) {
        this.zzles = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(@NonNull Task<Void> task) throws Exception {
        if (this.zzles.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Task task2 : this.zzles) {
            arrayList.add(task2.getResult());
        }
        return arrayList;
    }
}
