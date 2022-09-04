package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AckGetOpticFlow extends X8BaseMessage {
    boolean isOpen;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        boolean z = true;
        super.decrypt(packet);
        if (packet.getPayLoad4().getByte() != 1) {
            z = false;
        }
        this.isOpen = z;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void setOpen(boolean open) {
        this.isOpen = open;
    }

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public String toString() {
        return "AckGetOpticFlow{isOpen=" + this.isOpen + CoreConstants.CURLY_RIGHT;
    }
}
