package com.fimi.x8sdk.dataparser;

import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AckAiFollowGetSpeed extends X8BaseMessage {
    private int speed;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        super.decrypt(packet);
        this.speed = packet.getPayLoad4().getShort();
    }

    public int getSpeed() {
        return this.speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }
}
