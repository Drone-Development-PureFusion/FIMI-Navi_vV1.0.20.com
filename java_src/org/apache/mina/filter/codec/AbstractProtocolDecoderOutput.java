package org.apache.mina.filter.codec;

import com.facebook.share.internal.ShareConstants;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes2.dex */
public abstract class AbstractProtocolDecoderOutput implements ProtocolDecoderOutput {
    private final Queue<Object> messageQueue = new LinkedList();

    public Queue<Object> getMessageQueue() {
        return this.messageQueue;
    }

    @Override // org.apache.mina.filter.codec.ProtocolDecoderOutput
    public void write(Object message) {
        if (message == null) {
            throw new IllegalArgumentException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        this.messageQueue.add(message);
    }
}
