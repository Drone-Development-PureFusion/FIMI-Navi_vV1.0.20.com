package p021rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Subscription;
import p021rx.exceptions.OnErrorNotImplementedException;
import p021rx.functions.Action0;
import p021rx.internal.util.SubscriptionList;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.schedulers.ScheduledAction */
/* loaded from: classes2.dex */
public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, Subscription {
    private static final long serialVersionUID = -3962399486978279857L;
    final Action0 action;
    final SubscriptionList cancel;

    public ScheduledAction(Action0 action) {
        this.action = action;
        this.cancel = new SubscriptionList();
    }

    public ScheduledAction(Action0 action, CompositeSubscription parent) {
        this.action = action;
        this.cancel = new SubscriptionList(new Remover(this, parent));
    }

    public ScheduledAction(Action0 action, SubscriptionList parent) {
        this.action = action;
        this.cancel = new SubscriptionList(new Remover2(this, parent));
    }

    @Override // java.lang.Runnable
    public void run() {
        IllegalStateException ie;
        try {
            lazySet(Thread.currentThread());
            this.action.call();
        } catch (Throwable e) {
            try {
                if (e instanceof OnErrorNotImplementedException) {
                    ie = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e);
                } else {
                    ie = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", e);
                }
                RxJavaPlugins.getInstance().getErrorHandler().handleError(ie);
                Thread thread = Thread.currentThread();
                thread.getUncaughtExceptionHandler().uncaughtException(thread, ie);
            } finally {
                unsubscribe();
            }
        }
    }

    @Override // p021rx.Subscription
    public boolean isUnsubscribed() {
        return this.cancel.isUnsubscribed();
    }

    @Override // p021rx.Subscription
    public void unsubscribe() {
        if (!this.cancel.isUnsubscribed()) {
            this.cancel.unsubscribe();
        }
    }

    public void add(Subscription s) {
        this.cancel.add(s);
    }

    public void add(Future<?> f) {
        this.cancel.add(new FutureCompleter(f));
    }

    public void addParent(CompositeSubscription parent) {
        this.cancel.add(new Remover(this, parent));
    }

    public void addParent(SubscriptionList parent) {
        this.cancel.add(new Remover2(this, parent));
    }

    /* renamed from: rx.internal.schedulers.ScheduledAction$FutureCompleter */
    /* loaded from: classes2.dex */
    private final class FutureCompleter implements Subscription {

        /* renamed from: f */
        private final Future<?> f1539f;

        FutureCompleter(Future<?> f) {
            this.f1539f = f;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.f1539f.cancel(true);
            } else {
                this.f1539f.cancel(false);
            }
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1539f.isCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.schedulers.ScheduledAction$Remover */
    /* loaded from: classes2.dex */
    public static final class Remover extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final CompositeSubscription parent;

        /* renamed from: s */
        final ScheduledAction f1540s;

        public Remover(ScheduledAction s, CompositeSubscription parent) {
            this.f1540s = s;
            this.parent = parent;
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1540s.isUnsubscribed();
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f1540s);
            }
        }
    }

    /* renamed from: rx.internal.schedulers.ScheduledAction$Remover2 */
    /* loaded from: classes2.dex */
    private static final class Remover2 extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final SubscriptionList parent;

        /* renamed from: s */
        final ScheduledAction f1541s;

        public Remover2(ScheduledAction s, SubscriptionList parent) {
            this.f1541s = s;
            this.parent = parent;
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1541s.isUnsubscribed();
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f1541s);
            }
        }
    }
}
