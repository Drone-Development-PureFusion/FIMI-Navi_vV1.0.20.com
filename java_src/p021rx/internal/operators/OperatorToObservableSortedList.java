package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func2;
import p021rx.internal.producers.SingleDelayedProducer;
/* renamed from: rx.internal.operators.OperatorToObservableSortedList */
/* loaded from: classes2.dex */
public final class OperatorToObservableSortedList<T> implements Observable.Operator<List<T>, T> {
    private static Comparator DEFAULT_SORT_FUNCTION = new DefaultComparableFunction();
    final int initialCapacity;
    final Comparator<? super T> sortFunction;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorToObservableSortedList(int initialCapacity) {
        this.sortFunction = DEFAULT_SORT_FUNCTION;
        this.initialCapacity = initialCapacity;
    }

    public OperatorToObservableSortedList(final Func2<? super T, ? super T, Integer> sortFunction, int initialCapacity) {
        this.initialCapacity = initialCapacity;
        this.sortFunction = (Comparator<T>) new Comparator<T>() { // from class: rx.internal.operators.OperatorToObservableSortedList.1
            @Override // java.util.Comparator
            public int compare(T o1, T o2) {
                return ((Integer) sortFunction.mo1993call(o1, o2)).intValue();
            }
        };
    }

    public Subscriber<? super T> call(final Subscriber<? super List<T>> child) {
        final SingleDelayedProducer<List<T>> producer = new SingleDelayedProducer<>(child);
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorToObservableSortedList.2
            boolean completed;
            List<T> list;

            {
                this.list = new ArrayList(OperatorToObservableSortedList.this.initialCapacity);
            }

            @Override // p021rx.Subscriber
            public void onStart() {
                request(Clock.MAX_TIME);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.completed) {
                    this.completed = true;
                    List<T> a = this.list;
                    this.list = null;
                    try {
                        Collections.sort(a, OperatorToObservableSortedList.this.sortFunction);
                        producer.setValue(a);
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, this);
                    }
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T value) {
                if (!this.completed) {
                    this.list.add(value);
                }
            }
        };
        child.add(subscriber);
        child.setProducer(producer);
        return subscriber;
    }

    /* renamed from: rx.internal.operators.OperatorToObservableSortedList$DefaultComparableFunction */
    /* loaded from: classes2.dex */
    private static class DefaultComparableFunction implements Comparator<Object> {
        DefaultComparableFunction() {
        }

        @Override // java.util.Comparator
        public int compare(Object t1, Object t2) {
            Comparable<Object> c1 = (Comparable) t1;
            Comparable<Object> c2 = (Comparable) t2;
            return c1.compareTo(c2);
        }
    }
}
