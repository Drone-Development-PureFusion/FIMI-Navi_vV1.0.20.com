package android.support.p004v7.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.support.p004v7.util.ThreadUtil;
import android.support.p004v7.util.TileList;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: android.support.v7.util.MessageThreadUtil */
/* loaded from: classes.dex */
class MessageThreadUtil<T> implements ThreadUtil<T> {

    /* renamed from: android.support.v7.util.MessageThreadUtil$1 */
    /* loaded from: classes.dex */
    class C03581 implements ThreadUtil.MainThreadCallback<T> {
        static final int ADD_TILE = 2;
        static final int REMOVE_TILE = 3;
        static final int UPDATE_ITEM_COUNT = 1;
        final /* synthetic */ ThreadUtil.MainThreadCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
        private Runnable mMainThreadRunnable = new Runnable() { // from class: android.support.v7.util.MessageThreadUtil.1.1
            @Override // java.lang.Runnable
            public void run() {
                SyncQueueItem msg = C03581.this.mQueue.next();
                while (msg != null) {
                    switch (msg.what) {
                        case 1:
                            C03581.this.val$callback.updateItemCount(msg.arg1, msg.arg2);
                            break;
                        case 2:
                            C03581.this.val$callback.addTile(msg.arg1, (TileList.Tile) msg.data);
                            break;
                        case 3:
                            C03581.this.val$callback.removeTile(msg.arg1, msg.arg2);
                            break;
                        default:
                            Log.e("ThreadUtil", "Unsupported message, what=" + msg.what);
                            break;
                    }
                    msg = C03581.this.mQueue.next();
                }
            }
        };

        C03581(ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.val$callback = mainThreadCallback;
        }

        @Override // android.support.p004v7.util.ThreadUtil.MainThreadCallback
        public void updateItemCount(int generation, int itemCount) {
            sendMessage(SyncQueueItem.obtainMessage(1, generation, itemCount));
        }

        @Override // android.support.p004v7.util.ThreadUtil.MainThreadCallback
        public void addTile(int generation, TileList.Tile<T> tile) {
            sendMessage(SyncQueueItem.obtainMessage(2, generation, tile));
        }

        @Override // android.support.p004v7.util.ThreadUtil.MainThreadCallback
        public void removeTile(int generation, int position) {
            sendMessage(SyncQueueItem.obtainMessage(3, generation, position));
        }

        private void sendMessage(SyncQueueItem msg) {
            this.mQueue.sendMessage(msg);
            this.mMainThreadHandler.post(this.mMainThreadRunnable);
        }
    }

    @Override // android.support.p004v7.util.ThreadUtil
    public ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> callback) {
        return new C03581(callback);
    }

    /* renamed from: android.support.v7.util.MessageThreadUtil$2 */
    /* loaded from: classes.dex */
    class C03602 implements ThreadUtil.BackgroundCallback<T> {
        static final int LOAD_TILE = 3;
        static final int RECYCLE_TILE = 4;
        static final int REFRESH = 1;
        static final int UPDATE_RANGE = 2;
        final /* synthetic */ ThreadUtil.BackgroundCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Executor mExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
        AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
        private Runnable mBackgroundRunnable = new Runnable() { // from class: android.support.v7.util.MessageThreadUtil.2.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    SyncQueueItem msg = C03602.this.mQueue.next();
                    if (msg != null) {
                        switch (msg.what) {
                            case 1:
                                C03602.this.mQueue.removeMessages(1);
                                C03602.this.val$callback.refresh(msg.arg1);
                                break;
                            case 2:
                                C03602.this.mQueue.removeMessages(2);
                                C03602.this.mQueue.removeMessages(3);
                                C03602.this.val$callback.updateRange(msg.arg1, msg.arg2, msg.arg3, msg.arg4, msg.arg5);
                                break;
                            case 3:
                                C03602.this.val$callback.loadTile(msg.arg1, msg.arg2);
                                break;
                            case 4:
                                C03602.this.val$callback.recycleTile((TileList.Tile) msg.data);
                                break;
                            default:
                                Log.e("ThreadUtil", "Unsupported message, what=" + msg.what);
                                break;
                        }
                    } else {
                        C03602.this.mBackgroundRunning.set(false);
                        return;
                    }
                }
            }
        };

        C03602(ThreadUtil.BackgroundCallback backgroundCallback) {
            this.val$callback = backgroundCallback;
        }

        @Override // android.support.p004v7.util.ThreadUtil.BackgroundCallback
        public void refresh(int generation) {
            sendMessageAtFrontOfQueue(SyncQueueItem.obtainMessage(1, generation, (Object) null));
        }

        @Override // android.support.p004v7.util.ThreadUtil.BackgroundCallback
        public void updateRange(int rangeStart, int rangeEnd, int extRangeStart, int extRangeEnd, int scrollHint) {
            sendMessageAtFrontOfQueue(SyncQueueItem.obtainMessage(2, rangeStart, rangeEnd, extRangeStart, extRangeEnd, scrollHint, null));
        }

        @Override // android.support.p004v7.util.ThreadUtil.BackgroundCallback
        public void loadTile(int position, int scrollHint) {
            sendMessage(SyncQueueItem.obtainMessage(3, position, scrollHint));
        }

        @Override // android.support.p004v7.util.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            sendMessage(SyncQueueItem.obtainMessage(4, 0, tile));
        }

        private void sendMessage(SyncQueueItem msg) {
            this.mQueue.sendMessage(msg);
            maybeExecuteBackgroundRunnable();
        }

        private void sendMessageAtFrontOfQueue(SyncQueueItem msg) {
            this.mQueue.sendMessageAtFrontOfQueue(msg);
            maybeExecuteBackgroundRunnable();
        }

        private void maybeExecuteBackgroundRunnable() {
            if (this.mBackgroundRunning.compareAndSet(false, true)) {
                this.mExecutor.execute(this.mBackgroundRunnable);
            }
        }
    }

    @Override // android.support.p004v7.util.ThreadUtil
    public ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> callback) {
        return new C03602(callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.util.MessageThreadUtil$SyncQueueItem */
    /* loaded from: classes.dex */
    public static class SyncQueueItem {
        private static SyncQueueItem sPool;
        private static final Object sPoolLock = new Object();
        public int arg1;
        public int arg2;
        public int arg3;
        public int arg4;
        public int arg5;
        public Object data;
        private SyncQueueItem next;
        public int what;

        SyncQueueItem() {
        }

        void recycle() {
            this.next = null;
            this.arg5 = 0;
            this.arg4 = 0;
            this.arg3 = 0;
            this.arg2 = 0;
            this.arg1 = 0;
            this.what = 0;
            this.data = null;
            synchronized (sPoolLock) {
                if (sPool != null) {
                    this.next = sPool;
                }
                sPool = this;
            }
        }

        static SyncQueueItem obtainMessage(int what, int arg1, int arg2, int arg3, int arg4, int arg5, Object data) {
            SyncQueueItem item;
            synchronized (sPoolLock) {
                if (sPool == null) {
                    item = new SyncQueueItem();
                } else {
                    item = sPool;
                    sPool = sPool.next;
                    item.next = null;
                }
                item.what = what;
                item.arg1 = arg1;
                item.arg2 = arg2;
                item.arg3 = arg3;
                item.arg4 = arg4;
                item.arg5 = arg5;
                item.data = data;
            }
            return item;
        }

        static SyncQueueItem obtainMessage(int what, int arg1, int arg2) {
            return obtainMessage(what, arg1, arg2, 0, 0, 0, null);
        }

        static SyncQueueItem obtainMessage(int what, int arg1, Object data) {
            return obtainMessage(what, arg1, 0, 0, 0, 0, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.util.MessageThreadUtil$MessageQueue */
    /* loaded from: classes.dex */
    public static class MessageQueue {
        private SyncQueueItem mRoot;

        MessageQueue() {
        }

        synchronized SyncQueueItem next() {
            SyncQueueItem syncQueueItem;
            if (this.mRoot == null) {
                syncQueueItem = null;
            } else {
                syncQueueItem = this.mRoot;
                this.mRoot = this.mRoot.next;
            }
            return syncQueueItem;
        }

        synchronized void sendMessageAtFrontOfQueue(SyncQueueItem item) {
            item.next = this.mRoot;
            this.mRoot = item;
        }

        synchronized void sendMessage(SyncQueueItem item) {
            if (this.mRoot == null) {
                this.mRoot = item;
            } else {
                SyncQueueItem last = this.mRoot;
                while (last.next != null) {
                    last = last.next;
                }
                last.next = item;
            }
        }

        synchronized void removeMessages(int what) {
            while (this.mRoot != null && this.mRoot.what == what) {
                SyncQueueItem item = this.mRoot;
                this.mRoot = this.mRoot.next;
                item.recycle();
            }
            if (this.mRoot != null) {
                SyncQueueItem prev = this.mRoot;
                SyncQueueItem item2 = prev.next;
                while (item2 != null) {
                    SyncQueueItem next = item2.next;
                    if (item2.what == what) {
                        prev.next = next;
                        item2.recycle();
                    } else {
                        prev = item2;
                    }
                    item2 = next;
                }
            }
        }
    }
}
