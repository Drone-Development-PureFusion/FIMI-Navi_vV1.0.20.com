package org.apache.mina.filter.codec.demux;
/* loaded from: classes2.dex */
public class MessageDecoderResult {
    private final String name;

    /* renamed from: OK */
    public static final MessageDecoderResult f1469OK = new MessageDecoderResult("OK");
    public static final MessageDecoderResult NEED_DATA = new MessageDecoderResult("NEED_DATA");
    public static final MessageDecoderResult NOT_OK = new MessageDecoderResult("NOT_OK");

    private MessageDecoderResult(String name) {
        this.name = name;
    }

    public String toString() {
        return this.name;
    }
}
