package p021rx.schedulers;

import p021rx.Scheduler;
import p021rx.internal.schedulers.NewThreadWorker;
import p021rx.internal.util.RxThreadFactory;
/* renamed from: rx.schedulers.NewThreadScheduler */
/* loaded from: classes2.dex */
public final class NewThreadScheduler extends Scheduler {
    private static final String THREAD_NAME_PREFIX = "RxNewThreadScheduler-";
    private static final RxThreadFactory THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX);
    private static final NewThreadScheduler INSTANCE = new NewThreadScheduler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NewThreadScheduler instance() {
        return INSTANCE;
    }

    private NewThreadScheduler() {
    }

    @Override // p021rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new NewThreadWorker(THREAD_FACTORY);
    }
}
