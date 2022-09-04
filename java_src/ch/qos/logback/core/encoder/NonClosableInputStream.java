package ch.qos.logback.core.encoder;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class NonClosableInputStream extends FilterInputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public NonClosableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void realClose() throws IOException {
        super.close();
    }
}
