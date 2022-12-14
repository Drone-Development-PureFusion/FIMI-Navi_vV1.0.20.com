package ch.qos.logback.core;

import ch.qos.logback.core.encoder.Encoder;
import ch.qos.logback.core.encoder.LayoutWrappingEncoder;
import ch.qos.logback.core.spi.DeferredProcessingAware;
import ch.qos.logback.core.spi.LogbackLock;
import ch.qos.logback.core.status.ErrorStatus;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class OutputStreamAppender<E> extends UnsynchronizedAppenderBase<E> {
    protected Encoder<E> encoder;
    protected LogbackLock lock = new LogbackLock();
    private OutputStream outputStream;

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase
    protected void append(E e) {
        if (!isStarted()) {
            return;
        }
        subAppend(e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeOutputStream() {
        if (this.outputStream != null) {
            try {
                encoderClose();
                this.outputStream.close();
                this.outputStream = null;
            } catch (IOException e) {
                addStatus(new ErrorStatus("Could not close output stream for OutputStreamAppender.", this, e));
            }
        }
    }

    void encoderClose() {
        if (this.encoder == null || this.outputStream == null) {
            return;
        }
        try {
            this.encoder.close();
        } catch (IOException e) {
            this.started = false;
            addStatus(new ErrorStatus("Failed to write footer for appender named [" + this.name + "].", this, e));
        }
    }

    void encoderInit() {
        if (this.encoder == null || this.outputStream == null) {
            return;
        }
        try {
            this.encoder.init(this.outputStream);
        } catch (IOException e) {
            this.started = false;
            addStatus(new ErrorStatus("Failed to initialize encoder for appender named [" + this.name + "].", this, e));
        }
    }

    public Encoder<E> getEncoder() {
        return this.encoder;
    }

    public OutputStream getOutputStream() {
        return this.outputStream;
    }

    public void setEncoder(Encoder<E> encoder) {
        this.encoder = encoder;
    }

    public void setLayout(Layout<E> layout) {
        addWarn("This appender no longer admits a layout as a sub-component, set an encoder instead.");
        addWarn("To ensure compatibility, wrapping your layout in LayoutWrappingEncoder.");
        addWarn("See also http://logback.qos.ch/codes.html#layoutInsteadOfEncoder for details");
        LayoutWrappingEncoder layoutWrappingEncoder = new LayoutWrappingEncoder();
        layoutWrappingEncoder.setLayout(layout);
        layoutWrappingEncoder.setContext(this.context);
        this.encoder = layoutWrappingEncoder;
    }

    public void setOutputStream(OutputStream outputStream) {
        synchronized (this.lock) {
            closeOutputStream();
            this.outputStream = outputStream;
            if (this.encoder == null) {
                addWarn("Encoder has not been set. Cannot invoke its init method.");
            } else {
                encoderInit();
            }
        }
    }

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        int i = 0;
        if (this.encoder == null) {
            addStatus(new ErrorStatus("No encoder set for the appender named \"" + this.name + "\".", this));
            i = 1;
        }
        if (this.outputStream == null) {
            addStatus(new ErrorStatus("No output stream set for the appender named \"" + this.name + "\".", this));
            i++;
        }
        if (i == 0) {
            super.start();
        }
    }

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void stop() {
        synchronized (this.lock) {
            closeOutputStream();
            super.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void subAppend(E e) {
        if (!isStarted()) {
            return;
        }
        try {
            if (e instanceof DeferredProcessingAware) {
                ((DeferredProcessingAware) e).prepareForDeferredProcessing();
            }
            synchronized (this.lock) {
                writeOut(e);
            }
        } catch (IOException e2) {
            this.started = false;
            addStatus(new ErrorStatus("IO failure in appender", this, e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeOut(E e) throws IOException {
        this.encoder.doEncode(e);
    }
}
