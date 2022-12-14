package com.fimi.kernel.connect.session;

import android.os.Handler;
import android.os.Message;
import com.fimi.kernel.connect.BaseCommand;
import com.fimi.kernel.connect.BaseConnect;
import com.fimi.kernel.connect.interfaces.IConnectResultListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class SessionManager {
    private static SessionManager mSessionManager = new SessionManager();
    private BaseConnect mSession;
    private final int CONNECT_NETWORK = 0;
    private final int DISCONNECT_NETWORK = 1;
    private final int DEVICE_CONNECT = 3;
    private final int DEVICE_DISCONNECT = 4;
    private final int DEVICE_CONNECT_ERROR = 5;
    public boolean CONNECTION_SUCCEED = false;
    private CopyOnWriteArrayList<IConnectResultListener> list = new CopyOnWriteArrayList<>();
    private Handler mHanlder = new Handler() { // from class: com.fimi.kernel.connect.session.SessionManager.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    String clientMessage = (String) msg.obj;
                    if (clientMessage == null) {
                        clientMessage = "startSession";
                    }
                    Iterator it = SessionManager.this.list.iterator();
                    while (it.hasNext()) {
                        IConnectResultListener l = (IConnectResultListener) it.next();
                        l.onConnected(clientMessage);
                    }
                    return;
                case 1:
                    Iterator it2 = SessionManager.this.list.iterator();
                    while (it2.hasNext()) {
                        IConnectResultListener l2 = (IConnectResultListener) it2.next();
                        l2.onDisconnect("removeSession");
                    }
                    return;
                case 2:
                default:
                    return;
                case 3:
                    Iterator it3 = SessionManager.this.list.iterator();
                    while (it3.hasNext()) {
                        IConnectResultListener l3 = (IConnectResultListener) it3.next();
                        l3.onDeviceConnect();
                    }
                    return;
                case 4:
                    Iterator it4 = SessionManager.this.list.iterator();
                    while (it4.hasNext()) {
                        IConnectResultListener l4 = (IConnectResultListener) it4.next();
                        l4.onDeviceDisConnnect();
                    }
                    return;
                case 5:
                    Iterator it5 = SessionManager.this.list.iterator();
                    while (it5.hasNext()) {
                        IConnectResultListener l5 = (IConnectResultListener) it5.next();
                        l5.onConnectError("");
                    }
                    return;
            }
        }
    };

    public int getSize() {
        return this.list.size();
    }

    public static void initInstance() {
        getInstance();
    }

    public void add2NoticeList(IConnectResultListener callback) {
        this.list.add(callback);
    }

    public void removeNoticeList(IConnectResultListener callBack) {
        IConnectResultListener remove = null;
        Iterator<IConnectResultListener> it = this.list.iterator();
        while (true) {
            if (it.hasNext()) {
                IConnectResultListener l = it.next();
                if (l != null && l == callBack) {
                    remove = l;
                    break;
                }
            } else {
                break;
            }
        }
        if (remove != null) {
            this.list.remove(remove);
        }
    }

    public static SessionManager getInstance() {
        return mSessionManager;
    }

    public synchronized void addSession(BaseConnect mSession) {
        this.mSession = mSession;
        this.mHanlder.sendEmptyMessage(0);
    }

    public synchronized void addSession(BaseConnect mSession, String clientMessage) {
        this.mSession = mSession;
        this.mHanlder.obtainMessage(0, clientMessage).sendToTarget();
    }

    public synchronized void removeSession() {
        this.mSession = null;
        this.mHanlder.sendEmptyMessage(1);
    }

    public synchronized BaseConnect getSession() {
        return this.mSession;
    }

    public void sendCmd(BaseCommand cmd) {
        try {
            if (this.mSession != null) {
                this.mSession.sendCmd(cmd);
            }
        } catch (Exception e) {
        }
    }

    public void sendTimeCmd(BaseCommand cmd) {
        try {
            if (this.mSession != null) {
                this.mSession.sendTimeCmd(cmd);
            }
        } catch (Exception e) {
        }
    }

    public synchronized boolean hasSession() {
        return this.mSession != null;
    }

    public void closeSession() {
        if (this.mSession != null) {
            this.mSession.closeSession();
        }
    }

    public synchronized boolean isDeviceConnected() {
        boolean ret;
        ret = false;
        if (this.mSession != null) {
            if (this.mSession.isDeviceConnected()) {
                ret = true;
            }
        }
        return ret;
    }

    public synchronized void onDeviveState(int type) {
        if (type == 0) {
            this.mHanlder.sendEmptyMessage(4);
        } else if (type == 2) {
            this.mHanlder.sendEmptyMessage(5);
        } else {
            this.mHanlder.sendEmptyMessage(3);
        }
    }

    public void showListAll() {
        Iterator<IConnectResultListener> it = this.list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }
}
