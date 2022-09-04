package com.fimi.kernel.dataparser;

import com.fimi.kernel.connect.BaseCommand;
import com.fimi.kernel.connect.BaseConnect;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes.dex */
public class CmdSession {
    private BaseCommand cmd;
    private BaseConnect connect;
    public int sendCount;
    public int seq;
    private long startTime = System.currentTimeMillis();
    public LinkedBlockingDeque<Object> cmdQue = new LinkedBlockingDeque<>();

    public BaseCommand getCmd() {
        return this.cmd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reSend() {
        if (this.cmd != null) {
            this.connect.sendCmd(this.cmd);
        }
    }

    public CmdSession(BaseCommand cmd, BaseConnect connect) {
        this.cmd = cmd;
        this.connect = connect;
        new CheckThread().start();
    }

    /* loaded from: classes.dex */
    class CheckThread extends Thread {
        CheckThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (CmdSession.this.cmd != null && System.currentTimeMillis() - CmdSession.this.startTime >= CmdSession.this.cmd.getOutTime() && CmdSession.this.sendCount <= CmdSession.this.cmd.getReSendNum()) {
                CmdSession.this.reSend();
                CmdSession.this.sendCount++;
            }
        }
    }

    public void release() {
        this.cmd = null;
    }
}
