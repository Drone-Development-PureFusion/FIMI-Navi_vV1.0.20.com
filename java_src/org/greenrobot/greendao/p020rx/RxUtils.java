package org.greenrobot.greendao.p020rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Internal;
import p021rx.Observable;
import p021rx.functions.Func0;
/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* renamed from: org.greenrobot.greendao.rx.RxUtils */
/* loaded from: classes2.dex */
public class RxUtils {
    RxUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Internal
    public static <T> Observable<T> fromCallable(final Callable<T> callable) {
        return Observable.defer(new Func0<Observable<T>>() { // from class: org.greenrobot.greendao.rx.RxUtils.1
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public Observable<T> mo1996call() {
                try {
                    return Observable.just(callable.call());
                } catch (Exception e) {
                    return Observable.error(e);
                }
            }
        });
    }
}
