package com.google.gson;
/* loaded from: classes2.dex */
public final class JsonSyntaxException extends JsonParseException {
    private static final long serialVersionUID = 1;

    public JsonSyntaxException(String msg) {
        super(msg);
    }

    public JsonSyntaxException(String msg, Throwable cause) {
        super(msg, cause);
    }

    public JsonSyntaxException(Throwable cause) {
        super(cause);
    }
}
