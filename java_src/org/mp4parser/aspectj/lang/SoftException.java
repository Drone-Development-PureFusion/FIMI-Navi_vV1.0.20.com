package org.mp4parser.aspectj.lang;

import ch.qos.logback.core.CoreConstants;
import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class SoftException extends RuntimeException {
    private static final boolean HAVE_JAVA_14;
    Throwable inner;

    static {
        boolean java14 = false;
        try {
            Class.forName("java.nio.Buffer");
            java14 = true;
        } catch (Throwable th) {
        }
        HAVE_JAVA_14 = java14;
    }

    public SoftException(Throwable inner) {
        this.inner = inner;
    }

    public Throwable getWrappedThrowable() {
        return this.inner;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.inner;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream stream) {
        super.printStackTrace(stream);
        Throwable _inner = this.inner;
        if (!HAVE_JAVA_14 && _inner != null) {
            stream.print(CoreConstants.CAUSED_BY);
            _inner.printStackTrace(stream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter stream) {
        super.printStackTrace(stream);
        Throwable _inner = this.inner;
        if (!HAVE_JAVA_14 && _inner != null) {
            stream.print(CoreConstants.CAUSED_BY);
            _inner.printStackTrace(stream);
        }
    }
}
