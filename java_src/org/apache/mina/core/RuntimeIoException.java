package org.apache.mina.core;
/* loaded from: classes2.dex */
public class RuntimeIoException extends RuntimeException {
    private static final long serialVersionUID = 9029092241311939548L;

    public RuntimeIoException() {
    }

    public RuntimeIoException(String message) {
        super(message);
    }

    public RuntimeIoException(String message, Throwable cause) {
        super(message, cause);
    }

    public RuntimeIoException(Throwable cause) {
        super(cause);
    }
}
