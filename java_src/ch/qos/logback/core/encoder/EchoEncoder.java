package ch.qos.logback.core.encoder;

import ch.qos.logback.core.CoreConstants;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class EchoEncoder<E> extends EncoderBase<E> {
    @Override // ch.qos.logback.core.encoder.Encoder
    public void close() throws IOException {
    }

    @Override // ch.qos.logback.core.encoder.Encoder
    public void doEncode(E e) throws IOException {
        this.outputStream.write((e + CoreConstants.LINE_SEPARATOR).getBytes());
        this.outputStream.flush();
    }

    @Override // ch.qos.logback.core.encoder.EncoderBase, ch.qos.logback.core.encoder.Encoder
    public void init(OutputStream outputStream) throws IOException {
        super.init(outputStream);
    }
}
