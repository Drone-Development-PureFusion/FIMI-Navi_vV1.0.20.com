package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.OperatorBufferWithSize */
/* loaded from: classes2.dex */
public final class OperatorBufferWithSize<T> implements Observable.Operator<List<T>, T> {
    final int count;
    final int skip;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorBufferWithSize(int count, int skip) {
        if (count <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        }
        if (skip <= 0) {
            throw new IllegalArgumentException("skip must be greater than 0");
        }
        this.count = count;
        this.skip = skip;
    }

    public Subscriber<? super T> call(final Subscriber<? super List<T>> child) {
        return this.count == this.skip ? (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorBufferWithSize.1
            List<T> buffer;

            @Override // p021rx.Subscriber
            public void setProducer(final Producer producer) {
                child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorBufferWithSize.1.1
                    private volatile boolean infinite = false;

                    @Override // p021rx.Producer
                    public void request(long n) {
                        if (!this.infinite) {
                            if (n >= Clock.MAX_TIME / OperatorBufferWithSize.this.count) {
                                this.infinite = true;
                                producer.request(Clock.MAX_TIME);
                                return;
                            }
                            producer.request(OperatorBufferWithSize.this.count * n);
                        }
                    }
                });
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (this.buffer == null) {
                    this.buffer = new ArrayList(OperatorBufferWithSize.this.count);
                }
                this.buffer.add(t);
                if (this.buffer.size() == OperatorBufferWithSize.this.count) {
                    List<T> oldBuffer = this.buffer;
                    this.buffer = null;
                    child.onNext(oldBuffer);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                this.buffer = null;
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                List<T> oldBuffer = this.buffer;
                this.buffer = null;
                if (oldBuffer != null) {
                    try {
                        child.onNext(oldBuffer);
                    } catch (Throwable t) {
                        Exceptions.throwOrReport(t, this);
                        return;
                    }
                }
                child.onCompleted();
            }
        } : (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorBufferWithSize.2
            final List<List<T>> chunks = new LinkedList();
            int index;

            @Override // p021rx.Subscriber
            public void setProducer(final Producer producer) {
                child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorBufferWithSize.2.1
                    private volatile boolean firstRequest = true;
                    private volatile boolean infinite = false;

                    private void requestInfinite() {
                        this.infinite = true;
                        producer.request(Clock.MAX_TIME);
                    }

                    @Override // p021rx.Producer
                    public void request(long n) {
                        if (n != 0) {
                            if (n < 0) {
                                throw new IllegalArgumentException("request a negative number: " + n);
                            }
                            if (!this.infinite) {
                                if (n == Clock.MAX_TIME) {
                                    requestInfinite();
                                } else if (this.firstRequest) {
                                    this.firstRequest = false;
                                    if (n - 1 >= (Clock.MAX_TIME - OperatorBufferWithSize.this.count) / OperatorBufferWithSize.this.skip) {
                                        requestInfinite();
                                    } else {
                                        producer.request(OperatorBufferWithSize.this.count + (OperatorBufferWithSize.this.skip * (n - 1)));
                                    }
                                } else if (n >= Clock.MAX_TIME / OperatorBufferWithSize.this.skip) {
                                    requestInfinite();
                                } else {
                                    producer.request(OperatorBufferWithSize.this.skip * n);
                                }
                            }
                        }
                    }
                });
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                int i = this.index;
                this.index = i + 1;
                if (i % OperatorBufferWithSize.this.skip == 0) {
                    this.chunks.add(new ArrayList(OperatorBufferWithSize.this.count));
                }
                Iterator<List<T>> it = this.chunks.iterator();
                while (it.hasNext()) {
                    List<T> chunk = it.next();
                    chunk.add(t);
                    if (chunk.size() == OperatorBufferWithSize.this.count) {
                        it.remove();
                        child.onNext(chunk);
                    }
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                this.chunks.clear();
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                try {
                    for (List<T> chunk : this.chunks) {
                        child.onNext(chunk);
                    }
                    child.onCompleted();
                } finally {
                    this.chunks.clear();
                }
            }
        };
    }
}
