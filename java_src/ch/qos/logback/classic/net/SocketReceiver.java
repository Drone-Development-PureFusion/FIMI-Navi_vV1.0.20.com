package ch.qos.logback.classic.net;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.net.DefaultSocketConnector;
import ch.qos.logback.core.net.SocketConnector;
import ch.qos.logback.core.util.CloseUtil;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import javax.net.SocketFactory;
/* loaded from: classes.dex */
public class SocketReceiver extends ReceiverBase implements Runnable, SocketConnector.ExceptionHandler {
    private static final int DEFAULT_ACCEPT_CONNECTION_DELAY = 5000;
    private int acceptConnectionTimeout = 5000;
    private InetAddress address;
    private Future<Socket> connectorTask;
    private int port;
    private String receiverId;
    private int reconnectionDelay;
    private String remoteHost;
    private volatile Socket socket;

    private Future<Socket> activateConnector(SocketConnector socketConnector) {
        try {
            return getContext().getExecutorService().submit(socketConnector);
        } catch (RejectedExecutionException e) {
            return null;
        }
    }

    private SocketConnector createConnector(InetAddress inetAddress, int i, int i2, int i3) {
        SocketConnector newConnector = newConnector(inetAddress, i, i2, i3);
        newConnector.setExceptionHandler(this);
        newConnector.setSocketFactory(getSocketFactory());
        return newConnector;
    }

    private void dispatchEvents(LoggerContext loggerContext) {
        try {
            try {
                try {
                    try {
                        this.socket.setSoTimeout(this.acceptConnectionTimeout);
                        ObjectInputStream objectInputStream = new ObjectInputStream(this.socket.getInputStream());
                        this.socket.setSoTimeout(0);
                        addInfo(this.receiverId + "connection established");
                        while (true) {
                            ILoggingEvent iLoggingEvent = (ILoggingEvent) objectInputStream.readObject();
                            Logger mo1619getLogger = loggerContext.mo1619getLogger(iLoggingEvent.getLoggerName());
                            if (mo1619getLogger.isEnabledFor(iLoggingEvent.getLevel())) {
                                mo1619getLogger.callAppenders(iLoggingEvent);
                            }
                        }
                    } catch (ClassNotFoundException e) {
                        addInfo(this.receiverId + "unknown event class: " + e);
                        CloseUtil.closeQuietly(this.socket);
                        this.socket = null;
                        addInfo(this.receiverId + "connection closed");
                    }
                } catch (IOException e2) {
                    addInfo(this.receiverId + "connection failed: " + e2);
                    CloseUtil.closeQuietly(this.socket);
                    this.socket = null;
                    addInfo(this.receiverId + "connection closed");
                }
            } catch (EOFException e3) {
                addInfo(this.receiverId + "end-of-stream detected");
                CloseUtil.closeQuietly(this.socket);
                this.socket = null;
                addInfo(this.receiverId + "connection closed");
            }
        } catch (Throwable th) {
            CloseUtil.closeQuietly(this.socket);
            this.socket = null;
            addInfo(this.receiverId + "connection closed");
            throw th;
        }
    }

    private Socket waitForConnectorToReturnASocket() throws InterruptedException {
        try {
            Socket socket = this.connectorTask.get();
            this.connectorTask = null;
            return socket;
        } catch (ExecutionException e) {
            return null;
        }
    }

    @Override // ch.qos.logback.core.net.SocketConnector.ExceptionHandler
    public void connectionFailed(SocketConnector socketConnector, Exception exc) {
        if (exc instanceof InterruptedException) {
            addInfo("connector interrupted");
        } else if (exc instanceof ConnectException) {
            addInfo(this.receiverId + "connection refused");
        } else {
            addInfo(this.receiverId + exc);
        }
    }

    @Override // ch.qos.logback.classic.net.ReceiverBase
    protected Runnable getRunnableTask() {
        return this;
    }

    protected SocketFactory getSocketFactory() {
        return SocketFactory.getDefault();
    }

    protected SocketConnector newConnector(InetAddress inetAddress, int i, int i2, int i3) {
        return new DefaultSocketConnector(inetAddress, i, i2, i3);
    }

    @Override // ch.qos.logback.classic.net.ReceiverBase
    protected void onStop() {
        if (this.socket != null) {
            CloseUtil.closeQuietly(this.socket);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            LoggerContext loggerContext = (LoggerContext) getContext();
            while (!Thread.currentThread().isInterrupted()) {
                this.connectorTask = activateConnector(createConnector(this.address, this.port, 0, this.reconnectionDelay));
                if (this.connectorTask != null) {
                    this.socket = waitForConnectorToReturnASocket();
                    if (this.socket == null) {
                        break;
                    }
                    dispatchEvents(loggerContext);
                } else {
                    break;
                }
            }
        } catch (InterruptedException e) {
        }
        addInfo("shutting down");
    }

    public void setAcceptConnectionTimeout(int i) {
        this.acceptConnectionTimeout = i;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public void setReconnectionDelay(int i) {
        this.reconnectionDelay = i;
    }

    public void setRemoteHost(String str) {
        this.remoteHost = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ch.qos.logback.classic.net.ReceiverBase
    public boolean shouldStart() {
        int i;
        if (this.port == 0) {
            addError("No port was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_port");
            i = 1;
        } else {
            i = 0;
        }
        if (this.remoteHost == null) {
            i++;
            addError("No host name or address was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_host");
        }
        if (this.reconnectionDelay == 0) {
            this.reconnectionDelay = 30000;
        }
        if (i == 0) {
            try {
                this.address = InetAddress.getByName(this.remoteHost);
            } catch (UnknownHostException e) {
                addError("unknown host: " + this.remoteHost);
                i++;
            }
        }
        if (i == 0) {
            this.receiverId = "receiver " + this.remoteHost + ":" + this.port + ": ";
        }
        return i == 0;
    }
}
