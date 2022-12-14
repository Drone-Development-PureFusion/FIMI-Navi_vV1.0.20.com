package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AckFiveKeyDefine extends X8BaseMessage {
    byte adckeyAction;
    byte adckeyIndex;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        super.decrypt(packet);
        this.adckeyIndex = packet.getPayLoad4().getByte();
        this.adckeyAction = packet.getPayLoad4().getByte();
    }

    public byte getAdckeyIndex() {
        return this.adckeyIndex;
    }

    public void setAdckeyIndex(byte adckeyIndex) {
        this.adckeyIndex = adckeyIndex;
    }

    public byte getAdckeyAction() {
        return this.adckeyAction;
    }

    public void setAdckeyAction(byte adckeyAction) {
        this.adckeyAction = adckeyAction;
    }

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public String toString() {
        return "AckFiveKeyDefine{adckeyIndex=" + ((int) this.adckeyIndex) + ", adckeyAction=" + ((int) this.adckeyAction) + CoreConstants.CURLY_RIGHT;
    }
}
