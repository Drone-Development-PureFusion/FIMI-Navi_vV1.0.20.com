package p021rx.subscriptions;

import com.umeng.commonsdk.proguard.C2354g;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Subscription;
/* renamed from: rx.subscriptions.RefCountSubscription */
/* loaded from: classes2.dex */
public final class RefCountSubscription implements Subscription {
    static final State EMPTY_STATE = new State(false, 0);
    private final Subscription actual;
    final AtomicReference<State> state = new AtomicReference<>(EMPTY_STATE);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.subscriptions.RefCountSubscription$State */
    /* loaded from: classes2.dex */
    public static final class State {
        final int children;
        final boolean isUnsubscribed;

        State(boolean u, int c) {
            this.isUnsubscribed = u;
            this.children = c;
        }

        State addChild() {
            return new State(this.isUnsubscribed, this.children + 1);
        }

        State removeChild() {
            return new State(this.isUnsubscribed, this.children - 1);
        }

        State unsubscribe() {
            return new State(true, this.children);
        }
    }

    public RefCountSubscription(Subscription s) {
        if (s == null) {
            throw new IllegalArgumentException(C2354g.f1005ap);
        }
        this.actual = s;
    }

    public Subscription get() {
        State oldState;
        State newState;
        AtomicReference<State> localState = this.state;
        do {
            oldState = localState.get();
            if (oldState.isUnsubscribed) {
                return Subscriptions.unsubscribed();
            }
            newState = oldState.addChild();
        } while (!localState.compareAndSet(oldState, newState));
        return new InnerSubscription(this);
    }

    @Override // p021rx.Subscription
    public boolean isUnsubscribed() {
        return this.state.get().isUnsubscribed;
    }

    @Override // p021rx.Subscription
    public void unsubscribe() {
        State oldState;
        State newState;
        AtomicReference<State> localState = this.state;
        do {
            oldState = localState.get();
            if (!oldState.isUnsubscribed) {
                newState = oldState.unsubscribe();
            } else {
                return;
            }
        } while (!localState.compareAndSet(oldState, newState));
        unsubscribeActualIfApplicable(newState);
    }

    private void unsubscribeActualIfApplicable(State state) {
        if (state.isUnsubscribed && state.children == 0) {
            this.actual.unsubscribe();
        }
    }

    void unsubscribeAChild() {
        State oldState;
        State newState;
        AtomicReference<State> localState = this.state;
        do {
            oldState = localState.get();
            newState = oldState.removeChild();
        } while (!localState.compareAndSet(oldState, newState));
        unsubscribeActualIfApplicable(newState);
    }

    /* renamed from: rx.subscriptions.RefCountSubscription$InnerSubscription */
    /* loaded from: classes2.dex */
    private static final class InnerSubscription extends AtomicInteger implements Subscription {
        final RefCountSubscription parent;

        public InnerSubscription(RefCountSubscription parent) {
            this.parent = parent;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(0, 1)) {
                this.parent.unsubscribeAChild();
            }
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get() != 0;
        }
    }
}
