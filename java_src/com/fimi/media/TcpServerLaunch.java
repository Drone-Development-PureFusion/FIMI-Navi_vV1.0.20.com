package com.fimi.media;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
/* loaded from: classes.dex */
public class TcpServerLaunch extends Thread {
    private static TextView logView;

    /* renamed from: s */
    static StringBuffer f216s = new StringBuffer();
    public static Handler mHandler = new Handler() { // from class: com.fimi.media.TcpServerLaunch.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (TcpServerLaunch.f216s.length() > 300) {
                TcpServerLaunch.f216s.delete(0, TcpServerLaunch.f216s.length());
            }
            TcpServerLaunch.f216s.append((String) msg.obj);
            TcpServerLaunch.logView.setText(TcpServerLaunch.f216s.toString());
        }
    };

    public TcpServerLaunch(TextView logView2) {
        logView = logView2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        main();
    }

    public void main() {
        try {
            ServerSocket ss = new ServerSocket(54321);
            while (true) {
                Socket s = ss.accept();
                mHandler.obtainMessage(0, "start").sendToTarget();
                new TcpServer(s).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
