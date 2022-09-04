package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
/* loaded from: classes2.dex */
public class AutoVcTracking extends X8BaseMessage {
    public static final int REMOTESIGN_LOW = 30;
    public static final int REMOTESIGN_MID = 80;
    int classifier;
    int confidence;

    /* renamed from: h */
    int f249h;
    int time;
    long trackErrorCode;

    /* renamed from: w */
    int f250w;

    /* renamed from: x */
    int f251x;

    /* renamed from: y */
    int f252y;

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public void unPacket(LinkPacket4 packet) {
        super.decrypt(packet);
        this.time = packet.getPayLoad4().getInt();
        this.f251x = packet.getPayLoad4().getShort() & 65535;
        this.f252y = packet.getPayLoad4().getShort() & 65535;
        this.f250w = packet.getPayLoad4().getShort() & 65535;
        this.f249h = packet.getPayLoad4().getShort() & 65535;
        this.classifier = packet.getPayLoad4().getShort() & 65535;
        this.confidence = packet.getPayLoad4().getByte() & 255;
        packet.getPayLoad4().getByte();
        packet.getPayLoad4().getByte();
        packet.getPayLoad4().getByte();
        packet.getPayLoad4().getByte();
        this.trackErrorCode = packet.getPayLoad4().getInt() & (-1);
    }

    public static int getRemotesignMid() {
        return 80;
    }

    public static int getRemotesignLow() {
        return 30;
    }

    public int getTime() {
        return this.time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public int getX() {
        return this.f251x;
    }

    public void setX(int x) {
        this.f251x = x;
    }

    public int getY() {
        return this.f252y;
    }

    public void setY(int y) {
        this.f252y = y;
    }

    public int getH() {
        return this.f249h;
    }

    public void setH(int h) {
        this.f249h = h;
    }

    public int getW() {
        return this.f250w;
    }

    public void setW(int w) {
        this.f250w = w;
    }

    public int getConfidence() {
        return this.confidence;
    }

    public void setConfidence(int confidence) {
        this.confidence = confidence;
    }

    public long getTrackErrorCode() {
        return this.trackErrorCode;
    }

    public void setTrackErrorCode(long trackErrorCode) {
        this.trackErrorCode = trackErrorCode;
    }

    @Override // com.fimi.x8sdk.dataparser.X8BaseMessage
    public String toString() {
        return "AutoVcTracking{time=" + this.time + ", x=" + this.f251x + ", y=" + this.f252y + ", h=" + this.f249h + ", w=" + this.f250w + ", confidence=" + this.confidence + ", trackErrorCode=" + this.trackErrorCode + CoreConstants.CURLY_RIGHT;
    }
}
