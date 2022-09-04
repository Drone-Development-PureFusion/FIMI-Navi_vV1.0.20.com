package p021rx.observers;

import p021rx.Observer;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.OnErrorThrowable;
import p021rx.internal.operators.NotificationLite;
/* renamed from: rx.observers.SerializedObserver */
/* loaded from: classes2.dex */
public class SerializedObserver<T> implements Observer<T> {
    private static final int MAX_DRAIN_ITERATION = 1024;
    private final Observer<? super T> actual;
    private boolean emitting;

    /* renamed from: nl */
    private final NotificationLite<T> f1565nl = NotificationLite.instance();
    private FastList queue;
    private volatile boolean terminated;

    /* renamed from: rx.observers.SerializedObserver$FastList */
    /* loaded from: classes2.dex */
    static final class FastList {
        Object[] array;
        int size;

        FastList() {
        }

        public void add(Object o) {
            int s = this.size;
            Object[] a = this.array;
            if (a == null) {
                a = new Object[16];
                this.array = a;
            } else if (s == a.length) {
                Object[] array2 = new Object[(s >> 2) + s];
                System.arraycopy(a, 0, array2, 0, s);
                a = array2;
                this.array = a;
            }
            a[s] = o;
            this.size = s + 1;
        }
    }

    public SerializedObserver(Observer<? super T> s) {
        this.actual = s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x005c, code lost:
        continue;
     */
    @Override // p021rx.Observer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onNext(T t) {
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    if (this.emitting) {
                        FastList list = this.queue;
                        if (list == null) {
                            list = new FastList();
                            this.queue = list;
                        }
                        list.add(this.f1565nl.next(t));
                        return;
                    }
                    this.emitting = true;
                    try {
                        this.actual.onNext(t);
                        while (true) {
                            for (int i = 0; i < 1024; i++) {
                                synchronized (this) {
                                    FastList list2 = this.queue;
                                    if (list2 == null) {
                                        this.emitting = false;
                                        return;
                                    }
                                    this.queue = null;
                                    Object[] arr$ = list2.array;
                                    for (Object o : arr$) {
                                        if (o == null) {
                                            break;
                                        }
                                        try {
                                            if (this.f1565nl.accept(this.actual, o)) {
                                                this.terminated = true;
                                                return;
                                            }
                                        } catch (Throwable e) {
                                            this.terminated = true;
                                            Exceptions.throwIfFatal(e);
                                            this.actual.onError(OnErrorThrowable.addValueAsLastCause(e, t));
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable e2) {
                        this.terminated = true;
                        Exceptions.throwOrReport(e2, this.actual, t);
                    }
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        Exceptions.throwIfFatal(e);
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    this.terminated = true;
                    if (this.emitting) {
                        FastList list = this.queue;
                        if (list == null) {
                            list = new FastList();
                            this.queue = list;
                        }
                        list.add(this.f1565nl.error(e));
                        return;
                    }
                    this.emitting = true;
                    this.actual.onError(e);
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    this.terminated = true;
                    if (this.emitting) {
                        FastList list = this.queue;
                        if (list == null) {
                            list = new FastList();
                            this.queue = list;
                        }
                        list.add(this.f1565nl.completed());
                        return;
                    }
                    this.emitting = true;
                    this.actual.onCompleted();
                }
            }
        }
    }
}
