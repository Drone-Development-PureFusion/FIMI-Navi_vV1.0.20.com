package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OperatorToMultimap */
/* loaded from: classes2.dex */
public final class OperatorToMultimap<T, K, V> implements Observable.Operator<Map<K, Collection<V>>, T> {
    final Func1<? super K, ? extends Collection<V>> collectionFactory;
    final Func1<? super T, ? extends K> keySelector;
    private final Func0<? extends Map<K, Collection<V>>> mapFactory;
    final Func1<? super T, ? extends V> valueSelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* renamed from: rx.internal.operators.OperatorToMultimap$DefaultToMultimapFactory */
    /* loaded from: classes2.dex */
    public static final class DefaultToMultimapFactory<K, V> implements Func0<Map<K, Collection<V>>> {
        @Override // p021rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: call  reason: collision with other method in class */
        public Map<K, Collection<V>> mo1996call() {
            return new HashMap();
        }
    }

    /* renamed from: rx.internal.operators.OperatorToMultimap$DefaultMultimapCollectionFactory */
    /* loaded from: classes2.dex */
    public static final class DefaultMultimapCollectionFactory<K, V> implements Func1<K, Collection<V>> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
            return mo1999call((DefaultMultimapCollectionFactory<K, V>) x0);
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call  reason: collision with other method in class */
        public Collection<V> mo1999call(K t1) {
            return new ArrayList();
        }
    }

    public OperatorToMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector) {
        this(keySelector, valueSelector, new DefaultToMultimapFactory(), new DefaultMultimapCollectionFactory());
    }

    public OperatorToMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, Collection<V>>> mapFactory) {
        this(keySelector, valueSelector, mapFactory, new DefaultMultimapCollectionFactory());
    }

    public OperatorToMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, Collection<V>>> mapFactory, Func1<? super K, ? extends Collection<V>> collectionFactory) {
        this.keySelector = keySelector;
        this.valueSelector = valueSelector;
        this.mapFactory = mapFactory;
        this.collectionFactory = collectionFactory;
    }

    public Subscriber<? super T> call(final Subscriber<? super Map<K, Collection<V>>> subscriber) {
        try {
            final Map<K, Collection<V>> localMap = this.mapFactory.mo1996call();
            return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorToMultimap.1
                private Map<K, Collection<V>> map;

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
                        K key = OperatorToMultimap.this.keySelector.mo1999call(v);
                        V value = OperatorToMultimap.this.valueSelector.mo1999call(v);
                        Collection<V> collection = this.map.get(key);
                        if (collection == null) {
                            try {
                                collection = OperatorToMultimap.this.collectionFactory.mo1999call(key);
                                this.map.put(key, collection);
                            } catch (Throwable ex) {
                                Exceptions.throwOrReport(ex, subscriber);
                                return;
                            }
                        }
                        collection.add(value);
                    } catch (Throwable ex2) {
                        Exceptions.throwOrReport(ex2, subscriber);
                    }
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    this.map = null;
                    subscriber.onError(e);
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    Map<K, Collection<V>> map0 = this.map;
                    this.map = null;
                    subscriber.onNext(map0);
                    subscriber.onCompleted();
                }
            };
        } catch (Throwable ex) {
            Exceptions.throwIfFatal(ex);
            subscriber.onError(ex);
            Subscriber<? super T> parent = Subscribers.empty();
            parent.unsubscribe();
            return parent;
        }
    }
}
