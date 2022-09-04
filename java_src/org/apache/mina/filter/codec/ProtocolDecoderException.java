package org.apache.mina.filter.codec;

import ch.qos.logback.core.CoreConstants;
/* loaded from: classes2.dex */
public class ProtocolDecoderException extends ProtocolCodecException {
    private static final long serialVersionUID = 3545799879533408565L;
    private String hexdump;

    public ProtocolDecoderException() {
    }

    public ProtocolDecoderException(String message) {
        super(message);
    }

    public ProtocolDecoderException(Throwable cause) {
        super(cause);
    }

    public ProtocolDecoderException(String message, Throwable cause) {
        super(message, cause);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "";
        }
        if (this.hexdump != null) {
            return message + (message.length() > 0 ? " " : "") + "(Hexdump: " + this.hexdump + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
        return message;
    }

    public String getHexdump() {
        return this.hexdump;
    }

    public void setHexdump(String hexdump) {
        if (this.hexdump != null) {
            throw new IllegalStateException("Hexdump cannot be set more than once.");
        }
        this.hexdump = hexdump;
    }
}
