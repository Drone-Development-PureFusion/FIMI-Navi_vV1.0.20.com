package ch.qos.logback.classic.net;

import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.joran.JoranConfigurator;
import ch.qos.logback.core.joran.spi.JoranException;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import javax.net.ServerSocketFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes.dex */
public class SimpleSocketServer extends Thread {
    private CountDownLatch latch;

    /* renamed from: lc */
    private final LoggerContext f35lc;
    private final int port;
    private ServerSocket serverSocket;
    Logger logger = LoggerFactory.getLogger(SimpleSocketServer.class);
    private boolean closed = false;
    private List<SocketNode> socketNodeList = new ArrayList();

    public SimpleSocketServer(LoggerContext loggerContext, int i) {
        this.f35lc = loggerContext;
        this.port = i;
    }

    public static void configureLC(LoggerContext loggerContext, String str) throws JoranException {
        JoranConfigurator joranConfigurator = new JoranConfigurator();
        loggerContext.reset();
        joranConfigurator.setContext(loggerContext);
        joranConfigurator.doConfigure(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void doMain(Class<? extends SimpleSocketServer> cls, String[] strArr) throws Exception {
        int i;
        if (strArr.length == 2) {
            i = parsePortNumber(strArr[0]);
        } else {
            usage("Wrong number of arguments.");
            i = -1;
        }
        String str = strArr[1];
        LoggerContext loggerContext = (LoggerContext) LoggerFactory.getILoggerFactory();
        configureLC(loggerContext, str);
        new SimpleSocketServer(loggerContext, i).start();
    }

    public static void main(String[] strArr) throws Exception {
        doMain(SimpleSocketServer.class, strArr);
    }

    static int parsePortNumber(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            usage("Could not interpret port number [" + str + "].");
            return -1;
        }
    }

    static void usage(String str) {
        System.err.println(str);
        System.err.println("Usage: java " + SimpleSocketServer.class.getName() + " port configFile");
        System.exit(1);
    }

    public void close() {
        this.closed = true;
        if (this.serverSocket != null) {
            try {
                this.serverSocket.close();
            } catch (IOException e) {
                this.logger.error("Failed to close serverSocket", (Throwable) e);
            } finally {
                this.serverSocket = null;
            }
        }
        this.logger.info("closing this server");
        synchronized (this.socketNodeList) {
            for (SocketNode socketNode : this.socketNodeList) {
                socketNode.close();
            }
        }
        if (this.socketNodeList.size() != 0) {
            this.logger.warn("Was expecting a 0-sized socketNodeList after server shutdown");
        }
    }

    protected String getClientThreadName(Socket socket) {
        return String.format("Logback SocketNode (client: %s)", socket.getRemoteSocketAddress());
    }

    public CountDownLatch getLatch() {
        return this.latch;
    }

    protected ServerSocketFactory getServerSocketFactory() {
        return ServerSocketFactory.getDefault();
    }

    protected String getServerThreadName() {
        return String.format("Logback %s (port %d)", getClass().getSimpleName(), Integer.valueOf(this.port));
    }

    public boolean isClosed() {
        return this.closed;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String name = Thread.currentThread().getName();
        try {
            Thread.currentThread().setName(getServerThreadName());
            this.logger.info("Listening on port " + this.port);
            this.serverSocket = getServerSocketFactory().createServerSocket(this.port);
            while (!this.closed) {
                this.logger.info("Waiting to accept a new client.");
                signalAlmostReadiness();
                Socket accept = this.serverSocket.accept();
                this.logger.info("Connected to client at " + accept.getInetAddress());
                this.logger.info("Starting new socket node.");
                SocketNode socketNode = new SocketNode(this, accept, this.f35lc);
                synchronized (this.socketNodeList) {
                    this.socketNodeList.add(socketNode);
                }
                new Thread(socketNode, getClientThreadName(accept)).start();
            }
        } catch (Exception e) {
            if (this.closed) {
                this.logger.info("Exception in run method for a closed server. This is normal.");
            } else {
                this.logger.error("Unexpected failure in run method", (Throwable) e);
            }
        } finally {
            Thread.currentThread().setName(name);
        }
    }

    void setLatch(CountDownLatch countDownLatch) {
        this.latch = countDownLatch;
    }

    void signalAlmostReadiness() {
        if (this.latch == null || this.latch.getCount() == 0) {
            return;
        }
        this.latch.countDown();
    }

    public void socketNodeClosing(SocketNode socketNode) {
        this.logger.debug("Removing {}", socketNode);
        synchronized (this.socketNodeList) {
            this.socketNodeList.remove(socketNode);
        }
    }
}
