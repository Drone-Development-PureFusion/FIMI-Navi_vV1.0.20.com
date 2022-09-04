package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AutoFcErrCode extends X8BaseMessage {

    /* renamed from: p */
    public static long f248p = ((long) Math.pow(2.0d, 32.0d)) - 1;
    long systemStatusCodA;
    long systemStatusCodB;
    long systemStatusCodC;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        super.decrypt(packet);
        this.systemStatusCodA = packet.getPayLoad4().getInt();
        if (this.systemStatusCodA < 0) {
            this.systemStatusCodA &= f248p;
        }
        this.systemStatusCodB = packet.getPayLoad4().getInt();
        if (this.systemStatusCodB < 0) {
            this.systemStatusCodB &= f248p;
        }
        this.systemStatusCodC = packet.getPayLoad4().getInt();
        if (this.systemStatusCodC < 0) {
            this.systemStatusCodC &= f248p;
        }
    }

    public long getSystemStatusCodA() {
        return this.systemStatusCodA;
    }

    public void setSystemStatusCodA(int systemStatusCodA) {
        this.systemStatusCodA = systemStatusCodA;
    }

    public long getSystemStatusCodB() {
        return this.systemStatusCodB;
    }

    public void setSystemStatusCodB(int systemStatusCodB) {
        this.systemStatusCodB = systemStatusCodB;
    }

    public long getSystemStatusCodC() {
        return this.systemStatusCodC;
    }

    public void setSystemStatusCodC(int systemStatusCodC) {
        this.systemStatusCodC = systemStatusCodC;
    }

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public String toString() {
        return "AutoFcErrCode{systemStatusCodA=" + this.systemStatusCodA + ", systemStatusCodB=" + this.systemStatusCodB + ", systemStatusCodC=" + this.systemStatusCodC + CoreConstants.CURLY_RIGHT;
    }
}
