package ch.qos.logback.classic.net.server;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.util.CloseUtil;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.Socket;
/* loaded from: classes.dex */
class RemoteAppenderStreamClient implements RemoteAppenderClient {

    /* renamed from: id */
    private final String f36id;
    private final InputStream inputStream;

    /* renamed from: lc */
    private LoggerContext f37lc;
    private Logger logger;
    private final Socket socket;

    public RemoteAppenderStreamClient(String str, InputStream inputStream) {
        this.f36id = str;
        this.socket = null;
        this.inputStream = inputStream;
    }

    public RemoteAppenderStreamClient(String str, Socket socket) {
        this.f36id = str;
        this.socket = socket;
        this.inputStream = null;
    }

    private ObjectInputStream createObjectInputStream() throws IOException {
        return this.inputStream != null ? new ObjectInputStream(this.inputStream) : new ObjectInputStream(this.socket.getInputStream());
    }

    @Override // ch.qos.logback.core.net.server.Client, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.socket == null) {
            return;
        }
        CloseUtil.closeQuietly(this.socket);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x011f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Throwable th;
        ObjectInputStream objectInputStream;
        RuntimeException runtimeException;
        ObjectInputStream objectInputStream2;
        IOException iOException;
        String str = this + ": connected";
        this.logger.info(str);
        ObjectInputStream objectInputStream3 = null;
        try {
        } catch (Throwable th2) {
            th = th2;
            objectInputStream = str;
        }
        try {
            try {
                objectInputStream2 = createObjectInputStream();
                while (true) {
                    try {
                        ILoggingEvent iLoggingEvent = (ILoggingEvent) objectInputStream2.readObject();
                        Logger mo1619getLogger = this.f37lc.mo1619getLogger(iLoggingEvent.getLoggerName());
                        if (mo1619getLogger.isEnabledFor(iLoggingEvent.getLevel())) {
                            mo1619getLogger.callAppenders(iLoggingEvent);
                        }
                    } catch (EOFException e) {
                        objectInputStream3 = objectInputStream2;
                        if (objectInputStream3 != null) {
                            CloseUtil.closeQuietly(objectInputStream3);
                        }
                        close();
                        this.logger.info(this + ": connection closed");
                        return;
                    } catch (IOException e2) {
                        iOException = e2;
                        objectInputStream = objectInputStream2;
                        this.logger.info(this + ": " + iOException);
                        if (objectInputStream != null) {
                            CloseUtil.closeQuietly(objectInputStream);
                        }
                        close();
                        this.logger.info(this + ": connection closed");
                        return;
                    } catch (ClassNotFoundException e3) {
                        this.logger.error(this + ": unknown event class");
                        if (objectInputStream2 != null) {
                            CloseUtil.closeQuietly(objectInputStream2);
                        }
                        close();
                        this.logger.info(this + ": connection closed");
                        return;
                    } catch (RuntimeException e4) {
                        runtimeException = e4;
                        objectInputStream = objectInputStream2;
                        this.logger.error(this + ": " + runtimeException);
                        if (objectInputStream != null) {
                            CloseUtil.closeQuietly(objectInputStream);
                        }
                        close();
                        this.logger.info(this + ": connection closed");
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (objectInputStream != null) {
                    CloseUtil.closeQuietly(objectInputStream);
                }
                close();
                this.logger.info(this + ": connection closed");
                throw th;
            }
        } catch (EOFException e5) {
        } catch (IOException e6) {
            iOException = e6;
            objectInputStream = null;
        } catch (ClassNotFoundException e7) {
            objectInputStream2 = null;
        } catch (RuntimeException e8) {
            runtimeException = e8;
            objectInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
            if (objectInputStream != null) {
            }
            close();
            this.logger.info(this + ": connection closed");
            throw th;
        }
    }

    @Override // ch.qos.logback.classic.net.server.RemoteAppenderClient
    public void setLoggerContext(LoggerContext loggerContext) {
        this.f37lc = loggerContext;
        this.logger = loggerContext.mo1619getLogger(getClass().getPackage().getName());
    }

    public String toString() {
        return "client " + this.f36id;
    }
}
