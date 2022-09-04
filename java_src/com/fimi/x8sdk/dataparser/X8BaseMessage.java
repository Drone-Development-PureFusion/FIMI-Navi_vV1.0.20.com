package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.host.HostLogBack;
import com.fimi.kernel.dataparser.ILinkMessage;
import com.fimi.kernel.dataparser.fmlink4.LinkPacket4;
import com.fimi.kernel.dataparser.milink.ByteHexHelper;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
/* loaded from: classes2.dex */
public abstract class X8BaseMessage extends ILinkMessage {
    private int desId;
    private int groupID;
    private int msgId;
    private int msgRpt;
    private int srcId;
    private UiCallBackListener uiCallBack;
    private int version;

    public abstract void unPacket(LinkPacket4 linkPacket4);

    /* JADX INFO: Access modifiers changed from: protected */
    public void decrypt(LinkPacket4 packet) {
        this.srcId = packet.getHeader4().getSrcId();
        this.desId = packet.getHeader4().getDestId();
        this.version = packet.getPayLoad4().getVer();
        this.groupID = packet.getPayLoad4().getGroupId();
        this.msgId = packet.getPayLoad4().getMsgId();
        this.msgRpt = packet.getPayLoad4().getMsgRpt();
        packet.getPayLoad4().setIndex(4);
    }

    @Override // com.fimi.kernel.dataparser.ILinkMessage
    public int getMsgRpt() {
        return this.msgRpt;
    }

    public void setMsgRpt(int msgRpt) {
        this.msgRpt = msgRpt;
    }

    public int getSrcId() {
        return this.srcId;
    }

    public void setSrcId(int srcId) {
        this.srcId = srcId;
    }

    public int getDesId() {
        return this.desId;
    }

    public void setDesId(int desId) {
        this.desId = desId;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public int getGroupID() {
        return this.groupID;
    }

    public void setGroupID(int groupID) {
        this.groupID = groupID;
    }

    public int getMsgId() {
        return this.msgId;
    }

    public void setMsgId(int msgId) {
        this.msgId = msgId;
    }

    public String toString() {
        return "X8BaseMessage{srcId=" + this.srcId + ", desId=" + this.desId + ", version=" + this.version + ", groupID=" + this.groupID + ", msgId=" + this.msgId + ", msgRpt=" + this.msgRpt + CoreConstants.CURLY_RIGHT;
    }

    @Override // com.fimi.kernel.dataparser.ILinkMessage
    public void setUiCallBack(UiCallBackListener uiCallBack) {
        this.uiCallBack = uiCallBack;
    }

    @Override // com.fimi.kernel.dataparser.ILinkMessage
    public UiCallBackListener getUiCallBack() {
        return this.uiCallBack;
    }

    protected void showHexData(LinkPacket4 packet) {
        byte[] byts = packet.getPayLoad4().getPayloadData();
        String hex = ByteHexHelper.bytesToHexString(byts);
        HostLogBack.getInstance().writeLog("onRequestCmd hex=:" + hex);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getPayloadData(LinkPacket4 packet) {
        return packet.getPayLoad4().getPayloadData();
    }
}
