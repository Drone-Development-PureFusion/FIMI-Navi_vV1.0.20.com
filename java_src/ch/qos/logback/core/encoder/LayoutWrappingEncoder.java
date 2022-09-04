package ch.qos.logback.core.encoder;

import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.Layout;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public class LayoutWrappingEncoder<E> extends EncoderBase<E> {
    private Charset charset;
    private boolean immediateFlush = true;
    protected Layout<E> layout;

    private void appendIfNotNull(StringBuilder sb, String str) {
        if (str != null) {
            sb.append(str);
        }
    }

    private byte[] convertToBytes(String str) {
        if (this.charset == null) {
            return str.getBytes();
        }
        try {
            return str.getBytes(this.charset.name());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException("An existing charset cannot possibly be unsupported.");
        }
    }

    @Override // ch.qos.logback.core.encoder.Encoder
    public void close() throws IOException {
        writeFooter();
    }

    @Override // ch.qos.logback.core.encoder.Encoder
    public void doEncode(E e) throws IOException {
        this.outputStream.write(convertToBytes(this.layout.doLayout(e)));
        if (this.immediateFlush) {
            this.outputStream.flush();
        }
    }

    public Charset getCharset() {
        return this.charset;
    }

    public Layout<E> getLayout() {
        return this.layout;
    }

    @Override // ch.qos.logback.core.encoder.EncoderBase, ch.qos.logback.core.encoder.Encoder
    public void init(OutputStream outputStream) throws IOException {
        super.init(outputStream);
        writeHeader();
    }

    public boolean isImmediateFlush() {
        return this.immediateFlush;
    }

    @Override // ch.qos.logback.core.encoder.EncoderBase, ch.qos.logback.core.spi.LifeCycle
    public boolean isStarted() {
        return false;
    }

    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    public void setImmediateFlush(boolean z) {
        this.immediateFlush = z;
    }

    public void setLayout(Layout<E> layout) {
        this.layout = layout;
    }

    @Override // ch.qos.logback.core.encoder.EncoderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        this.started = true;
    }

    @Override // ch.qos.logback.core.encoder.EncoderBase, ch.qos.logback.core.spi.LifeCycle
    public void stop() {
        this.started = false;
        if (this.outputStream != null) {
            try {
                this.outputStream.flush();
            } catch (IOException e) {
            }
        }
    }

    void writeFooter() throws IOException {
        if (this.layout == null || this.outputStream == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        appendIfNotNull(sb, this.layout.getPresentationFooter());
        appendIfNotNull(sb, this.layout.getFileFooter());
        if (sb.length() <= 0) {
            return;
        }
        this.outputStream.write(convertToBytes(sb.toString()));
        this.outputStream.flush();
    }

    void writeHeader() throws IOException {
        if (this.layout == null || this.outputStream == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        appendIfNotNull(sb, this.layout.getFileHeader());
        appendIfNotNull(sb, this.layout.getPresentationHeader());
        if (sb.length() <= 0) {
            return;
        }
        sb.append(CoreConstants.LINE_SEPARATOR);
        this.outputStream.write(convertToBytes(sb.toString()));
        this.outputStream.flush();
    }
}
