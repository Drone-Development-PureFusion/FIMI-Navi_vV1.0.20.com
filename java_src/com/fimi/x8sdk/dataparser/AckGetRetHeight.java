package com.fimi.x8sdk.dataparser;

import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AckGetRetHeight extends X8BaseMessage {
    float height;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        super.decrypt(packet);
        this.height = packet.getPayLoad4().getFloat();
    }

    public float getHeight() {
        return this.height;
    }

    public void setHeight(float height) {
        this.height = height;
    }
}
