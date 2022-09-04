package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.HashMap;
import java.util.Map;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OperatorToMap */
/* loaded from: classes2.dex */
public final class OperatorToMap<T, K, V> implements Observable.Operator<Map<K, V>, T> {
    final Func1<? super T, ? extends K> keySelector;
    private final Func0<? extends Map<K, V>> mapFactory;
    final Func1<? super T, ? extends V> valueSelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* renamed from: rx.internal.operators.OperatorToMap$DefaultToMapFactory */
    /* loaded from: classes2.dex */
    public static final class DefaultToMapFactory<K, V> implements Func0<Map<K, V>> {
        @Override // p021rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: call  reason: collision with other method in class */
        public Map<K, V> mo1996call() {
            return new HashMap();
        }
    }

    public OperatorToMap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector) {
        this(keySelector, valueSelector, new DefaultToMapFactory());
    }

    public OperatorToMap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, V>> mapFactory) {
        this.keySelector = keySelector;
        this.valueSelector = valueSelector;
        this.mapFactory = mapFactory;
    }

    public Subscriber<? super T> call(final Subscriber<? super Map<K, V>> subscriber) {
        try {
            final Map<K, V> localMap = this.mapFactory.mo1996call();
            return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorToMap.1
                private Map<K, V> map;

                {
                    this.map = localMap;
                }

                @Override // p021rx.Subscriber
                public void onStart() {
                    request(Clock.MAX_TIME);
                }

                @Override // p021rx.Observer
                public void onNext(T v) {
                    try {
                        K key = OperatorToMap.this.keySelector.mo1999call(v);
                        V value = OperatorToMap.this.valueSelector.mo1999call(v);
                        this.map.put(key, value);
                    } catch (Throwable ex) {
                        Exceptions.throwOrReport(ex, subscriber);
                    }
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    this.map = null;
                    subscriber.onError(e);
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    Map<K, V> map0 = this.map;
                    this.map = null;
                    subscriber.onNext(map0);
                    subscriber.onCompleted();
                }
            };
        } catch (Throwable ex) {
            Exceptions.throwOrReport(ex, subscriber);
            Subscriber<? super T> parent = Subscribers.empty();
            parent.unsubscribe();
            return parent;
        }
    }
}
