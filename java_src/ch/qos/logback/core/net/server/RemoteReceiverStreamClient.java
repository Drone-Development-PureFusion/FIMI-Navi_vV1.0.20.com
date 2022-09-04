package ch.qos.logback.core.net.server;

import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.util.CloseUtil;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.Socket;
import java.net.SocketException;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes.dex */
class RemoteReceiverStreamClient extends ContextAwareBase implements RemoteReceiverClient {
    private final String clientId;
    private final OutputStream outputStream;
    private BlockingQueue<Serializable> queue;
    private final Socket socket;

    RemoteReceiverStreamClient(String str, OutputStream outputStream) {
        this.clientId = "client " + str + ": ";
        this.socket = null;
        this.outputStream = outputStream;
    }

    public RemoteReceiverStreamClient(String str, Socket socket) {
        this.clientId = "client " + str + ": ";
        this.socket = socket;
        this.outputStream = null;
    }

    private ObjectOutputStream createObjectOutputStream() throws IOException {
        return this.socket == null ? new ObjectOutputStream(this.outputStream) : new ObjectOutputStream(this.socket.getOutputStream());
    }

    @Override // ch.qos.logback.core.net.server.Client, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.socket == null) {
            return;
        }
        CloseUtil.closeQuietly(this.socket);
    }

    @Override // ch.qos.logback.core.net.server.RemoteReceiverClient
    public boolean offer(Serializable serializable) {
        if (this.queue == null) {
            throw new IllegalStateException("client has no event queue");
        }
        return this.queue.offer(serializable);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x011f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        ObjectOutputStream objectOutputStream3;
        int i;
        addInfo(this.clientId + "connected");
        try {
            try {
                objectOutputStream3 = createObjectOutputStream();
                int i2 = 0;
                while (!Thread.currentThread().isInterrupted()) {
                    try {
                        try {
                            objectOutputStream3.writeObject(this.queue.take());
                            objectOutputStream3.flush();
                            int i3 = i2 + 1;
                            if (i3 >= 70) {
                                try {
                                    objectOutputStream3.reset();
                                    i3 = 0;
                                } catch (InterruptedException e) {
                                    i = 0;
                                    Thread.currentThread().interrupt();
                                    i2 = i;
                                }
                            }
                            i2 = i3;
                        } catch (InterruptedException e2) {
                            i = i2;
                        }
                    } catch (RuntimeException e3) {
                        e = e3;
                        addError(this.clientId + e);
                        if (objectOutputStream3 != null) {
                            CloseUtil.closeQuietly(objectOutputStream3);
                        }
                        close();
                        addInfo(this.clientId + "connection closed");
                        return;
                    } catch (SocketException e4) {
                        e = e4;
                        objectOutputStream2 = objectOutputStream3;
                        try {
                            addInfo(this.clientId + e);
                            if (objectOutputStream2 != null) {
                                CloseUtil.closeQuietly(objectOutputStream2);
                            }
                            close();
                            addInfo(this.clientId + "connection closed");
                            return;
                        } catch (Throwable th) {
                            th = th;
                            objectOutputStream = objectOutputStream2;
                            if (objectOutputStream != null) {
                                CloseUtil.closeQuietly(objectOutputStream);
                            }
                            close();
                            addInfo(this.clientId + "connection closed");
                            throw th;
                        }
                    } catch (IOException e5) {
                        e = e5;
                        addError(this.clientId + e);
                        if (objectOutputStream3 != null) {
                            CloseUtil.closeQuietly(objectOutputStream3);
                        }
                        close();
                        addInfo(this.clientId + "connection closed");
                        return;
                    }
                }
                if (objectOutputStream3 != null) {
                    CloseUtil.closeQuietly(objectOutputStream3);
                }
                close();
                addInfo(this.clientId + "connection closed");
            } catch (Throwable th2) {
                th = th2;
                if (objectOutputStream != null) {
                }
                close();
                addInfo(this.clientId + "connection closed");
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            objectOutputStream3 = null;
        } catch (RuntimeException e7) {
            e = e7;
            objectOutputStream3 = null;
        } catch (SocketException e8) {
            e = e8;
            objectOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
            if (objectOutputStream != null) {
            }
            close();
            addInfo(this.clientId + "connection closed");
            throw th;
        }
    }

    @Override // ch.qos.logback.core.net.server.RemoteReceiverClient
    public void setQueue(BlockingQueue<Serializable> blockingQueue) {
        this.queue = blockingQueue;
    }
}
