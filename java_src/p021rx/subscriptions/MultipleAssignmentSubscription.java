package p021rx.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import p021rx.Subscription;
/* renamed from: rx.subscriptions.MultipleAssignmentSubscription */
/* loaded from: classes2.dex */
public final class MultipleAssignmentSubscription implements Subscription {
    final AtomicReference<State> state = new AtomicReference<>(new State(false, Subscriptions.empty()));

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.subscriptions.MultipleAssignmentSubscription$State */
    /* loaded from: classes2.dex */
    public static final class State {
        final boolean isUnsubscribed;
        final Subscription subscription;

        State(boolean u, Subscription s) {
            this.isUnsubscribed = u;
            this.subscription = s;
        }

        State unsubscribe() {
            return new State(true, this.subscription);
        }

        State set(Subscription s) {
            return new State(this.isUnsubscribed, s);
        }
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
        oldState.subscription.unsubscribe();
    }

    public void set(Subscription s) {
        State oldState;
        State newState;
        if (s == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        AtomicReference<State> localState = this.state;
        do {
            oldState = localState.get();
            if (oldState.isUnsubscribed) {
                s.unsubscribe();
                return;
            }
            newState = oldState.set(s);
        } while (!localState.compareAndSet(oldState, newState));
    }

    public Subscription get() {
        return this.state.get().subscription;
    }
}
