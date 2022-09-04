package ch.qos.logback.core.net;

import ch.qos.logback.core.AppenderBase;
import ch.qos.logback.core.net.SocketConnector;
import ch.qos.logback.core.spi.PreSerializationTransformer;
import ch.qos.logback.core.util.CloseUtil;
import ch.qos.logback.core.util.Duration;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
/* loaded from: classes.dex */
public abstract class AbstractSocketAppender<E> extends AppenderBase<E> implements Runnable, SocketConnector.ExceptionHandler {
    private static final int DEFAULT_ACCEPT_CONNECTION_DELAY = 5000;
    private static final int DEFAULT_EVENT_DELAY_TIMEOUT = 100;
    public static final int DEFAULT_PORT = 4560;
    public static final int DEFAULT_QUEUE_SIZE = 128;
    public static final int DEFAULT_RECONNECTION_DELAY = 30000;
    private int acceptConnectionTimeout;
    private InetAddress address;
    private Future<Socket> connectorTask;
    private Duration eventDelayLimit;
    private String peerId;
    private int port;
    private BlockingQueue<E> queue;
    private int queueSize;
    private Duration reconnectionDelay;
    private String remoteHost;
    private volatile Socket socket;
    private Future<?> task;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSocketAppender() {
        this.port = DEFAULT_PORT;
        this.reconnectionDelay = new Duration(30000L);
        this.queueSize = 128;
        this.acceptConnectionTimeout = 5000;
        this.eventDelayLimit = new Duration(100L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public AbstractSocketAppender(String str, int i) {
        this.port = DEFAULT_PORT;
        this.reconnectionDelay = new Duration(30000L);
        this.queueSize = 128;
        this.acceptConnectionTimeout = 5000;
        this.eventDelayLimit = new Duration(100L);
        this.remoteHost = str;
        this.port = i;
    }

    private Future<Socket> activateConnector(SocketConnector socketConnector) {
        try {
            return getContext().getExecutorService().submit(socketConnector);
        } catch (RejectedExecutionException e) {
            return null;
        }
    }

    private SocketConnector createConnector(InetAddress inetAddress, int i, int i2, long j) {
        SocketConnector newConnector = newConnector(inetAddress, i, i2, j);
        newConnector.setExceptionHandler(this);
        newConnector.setSocketFactory(getSocketFactory());
        return newConnector;
    }

    private void dispatchEvents() throws InterruptedException {
        try {
            try {
                this.socket.setSoTimeout(this.acceptConnectionTimeout);
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.socket.getOutputStream());
                this.socket.setSoTimeout(0);
                addInfo(this.peerId + "connection established");
                int i = 0;
                while (true) {
                    E take = this.queue.take();
                    postProcessEvent(take);
                    objectOutputStream.writeObject(getPST().transform(take));
                    objectOutputStream.flush();
                    i++;
                    if (i >= 70) {
                        objectOutputStream.reset();
                        i = 0;
                    }
                }
            } catch (IOException e) {
                addInfo(this.peerId + "connection failed: " + e);
                CloseUtil.closeQuietly(this.socket);
                this.socket = null;
                addInfo(this.peerId + "connection closed");
            }
        } catch (Throwable th) {
            CloseUtil.closeQuietly(this.socket);
            this.socket = null;
            addInfo(this.peerId + "connection closed");
            throw th;
        }
    }

    @Deprecated
    protected static InetAddress getAddressByName(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (Exception e) {
            return null;
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

    @Override // ch.qos.logback.core.AppenderBase
    protected void append(E e) {
        if (e == null || !isStarted()) {
            return;
        }
        try {
            if (this.queue.offer(e, this.eventDelayLimit.getMilliseconds(), TimeUnit.MILLISECONDS)) {
                return;
            }
            addInfo("Dropping event due to timeout limit of [" + this.eventDelayLimit + "] milliseconds being exceeded");
        } catch (InterruptedException e2) {
            addError("Interrupted while appending event to SocketAppender", e2);
        }
    }

    @Override // ch.qos.logback.core.net.SocketConnector.ExceptionHandler
    public void connectionFailed(SocketConnector socketConnector, Exception exc) {
        if (exc instanceof InterruptedException) {
            addInfo("connector interrupted");
        } else if (exc instanceof ConnectException) {
            addInfo(this.peerId + "connection refused");
        } else {
            addInfo(this.peerId + exc);
        }
    }

    public Duration getEventDelayLimit() {
        return this.eventDelayLimit;
    }

    protected abstract PreSerializationTransformer<E> getPST();

    public int getPort() {
        return this.port;
    }

    public int getQueueSize() {
        return this.queueSize;
    }

    public Duration getReconnectionDelay() {
        return this.reconnectionDelay;
    }

    public String getRemoteHost() {
        return this.remoteHost;
    }

    protected SocketFactory getSocketFactory() {
        return SocketFactory.getDefault();
    }

    BlockingQueue<E> newBlockingQueue(int i) {
        return i <= 0 ? new SynchronousQueue<>() : new ArrayBlockingQueue<>(i);
    }

    protected SocketConnector newConnector(InetAddress inetAddress, int i, long j, long j2) {
        return new DefaultSocketConnector(inetAddress, i, j, j2);
    }

    protected abstract void postProcessEvent(E e);

    @Override // java.lang.Runnable
    public final void run() {
        signalEntryInRunMethod();
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.connectorTask = activateConnector(createConnector(this.address, this.port, 0, this.reconnectionDelay.getMilliseconds()));
                if (this.connectorTask != null) {
                    this.socket = waitForConnectorToReturnASocket();
                    if (this.socket == null) {
                        break;
                    }
                    dispatchEvents();
                } else {
                    break;
                }
            } catch (InterruptedException e) {
            }
        }
        addInfo("shutting down");
    }

    void setAcceptConnectionTimeout(int i) {
        this.acceptConnectionTimeout = i;
    }

    public void setEventDelayLimit(Duration duration) {
        this.eventDelayLimit = duration;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public void setQueueSize(int i) {
        this.queueSize = i;
    }

    public void setReconnectionDelay(Duration duration) {
        this.reconnectionDelay = duration;
    }

    public void setRemoteHost(String str) {
        this.remoteHost = str;
    }

    protected void signalEntryInRunMethod() {
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        if (isStarted()) {
            return;
        }
        int i = 0;
        if (this.port <= 0) {
            i = 1;
            addError("No port was configured for appender" + this.name + " For more information, please visit http://logback.qos.ch/codes.html#socket_no_port");
        }
        if (this.remoteHost == null) {
            i++;
            addError("No remote host was configured for appender" + this.name + " For more information, please visit http://logback.qos.ch/codes.html#socket_no_host");
        }
        if (this.queueSize < 0) {
            i++;
            addError("Queue size must be non-negative");
        }
        if (i == 0) {
            try {
                this.address = InetAddress.getByName(this.remoteHost);
            } catch (UnknownHostException e) {
                addError("unknown host: " + this.remoteHost);
                i++;
            }
        }
        if (i != 0) {
            return;
        }
        this.queue = newBlockingQueue(this.queueSize);
        this.peerId = "remote peer " + this.remoteHost + ":" + this.port + ": ";
        this.task = getContext().getExecutorService().submit(this);
        super.start();
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void stop() {
        if (!isStarted()) {
            return;
        }
        CloseUtil.closeQuietly(this.socket);
        this.task.cancel(true);
        if (this.connectorTask != null) {
            this.connectorTask.cancel(true);
        }
        super.stop();
    }
}
