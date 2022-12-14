package ch.qos.logback.core.net;

import ch.qos.logback.core.net.SocketConnector;
import com.facebook.common.time.Clock;
import java.net.InetAddress;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.SocketFactory;
/* loaded from: classes.dex */
public class SocketConnectorBase implements SocketConnector {
    private final InetAddress address;
    private final Condition connectCondition;
    private DelayStrategy delayStrategy;
    private SocketConnector.ExceptionHandler exceptionHandler;
    private final Lock lock;
    private final int port;
    private Socket socket;
    private SocketFactory socketFactory;

    /* loaded from: classes.dex */
    private static class ConsoleExceptionHandler implements SocketConnector.ExceptionHandler {
        private ConsoleExceptionHandler() {
        }

        @Override // ch.qos.logback.core.net.SocketConnector.ExceptionHandler
        public void connectionFailed(SocketConnector socketConnector, Exception exc) {
            System.out.println(exc);
        }
    }

    /* loaded from: classes.dex */
    public interface DelayStrategy {
        int nextDelay();
    }

    /* loaded from: classes.dex */
    private static class FixedDelay implements DelayStrategy {
        private int nextDelay;
        private final int retryDelay;

        public FixedDelay(int i, int i2) {
            this.nextDelay = i;
            this.retryDelay = i2;
        }

        @Override // ch.qos.logback.core.net.SocketConnectorBase.DelayStrategy
        public int nextDelay() {
            int i = this.nextDelay;
            this.nextDelay = this.retryDelay;
            return i;
        }
    }

    public SocketConnectorBase(InetAddress inetAddress, int i, int i2, int i3) {
        this(inetAddress, i, new FixedDelay(i2, i3));
    }

    public SocketConnectorBase(InetAddress inetAddress, int i, DelayStrategy delayStrategy) {
        this.lock = new ReentrantLock();
        this.connectCondition = this.lock.newCondition();
        this.address = inetAddress;
        this.port = i;
        this.delayStrategy = delayStrategy;
    }

    private void signalConnected() {
        this.lock.lock();
        try {
            this.connectCondition.signalAll();
        } finally {
            this.lock.unlock();
        }
    }

    public Socket awaitConnection() throws InterruptedException {
        return awaitConnection(Clock.MAX_TIME);
    }

    public Socket awaitConnection(long j) throws InterruptedException {
        this.lock.lock();
        boolean z = false;
        while (this.socket == null && !z) {
            try {
                z = !this.connectCondition.await(j, TimeUnit.MILLISECONDS);
            } finally {
                this.lock.unlock();
            }
        }
        return this.socket;
    }

    @Override // ch.qos.logback.core.net.SocketConnector, java.util.concurrent.Callable
    public Socket call() throws InterruptedException {
        return null;
    }

    public void run() {
        if (this.socket != null) {
            throw new IllegalStateException("connector cannot be reused");
        }
        if (this.exceptionHandler == null) {
            this.exceptionHandler = new ConsoleExceptionHandler();
        }
        if (this.socketFactory == null) {
            this.socketFactory = SocketFactory.getDefault();
        }
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Thread.sleep(this.delayStrategy.nextDelay());
                try {
                    this.socket = this.socketFactory.createSocket(this.address, this.port);
                    signalConnected();
                    return;
                } catch (Exception e) {
                    this.exceptionHandler.connectionFailed(this, e);
                }
            } catch (InterruptedException e2) {
                this.exceptionHandler.connectionFailed(this, e2);
                return;
            }
        }
    }

    @Override // ch.qos.logback.core.net.SocketConnector
    public void setExceptionHandler(SocketConnector.ExceptionHandler exceptionHandler) {
        this.exceptionHandler = exceptionHandler;
    }

    @Override // ch.qos.logback.core.net.SocketConnector
    public void setSocketFactory(SocketFactory socketFactory) {
        this.socketFactory = socketFactory;
    }
}
