package com.fimi.x8sdk.connect.datatype;

import com.fimi.kernel.connect.interfaces.IRetransmissionUsbHandle;
import com.fimi.kernel.connect.model.UpdateDateMessage;
import com.fimi.kernel.connect.session.NoticeManager;
import com.fimi.kernel.dataparser.fmlink4.Parser4;
import com.fimi.kernel.utils.ByteUtil;
/* loaded from: classes2.dex */
public class FwUploadDataChanel implements IDataChanel {

    /* renamed from: p */
    private Parser4 f237p = new Parser4();
    private IRetransmissionUsbHandle retransmissionUsbHandle;

    @Override // com.fimi.x8sdk.connect.datatype.IDataChanel
    public void forwardData(byte[] data) {
        UpdateDateMessage updateDateMessage = new UpdateDateMessage();
        updateDateMessage.setMsgLen(ByteUtil.bytesToInt(data, 0));
        updateDateMessage.setFaultMessage(data[4]);
        updateDateMessage.setFileOffset(ByteUtil.bytesToInt(data, 5));
        NoticeManager.getInstance().onUpdateDateCallBack(updateDateMessage);
        if (this.retransmissionUsbHandle != null) {
            this.retransmissionUsbHandle.removeFormListByOffset(updateDateMessage.getFileOffset());
        }
    }

    public void setRetransmissionHandle(IRetransmissionUsbHandle retransmissionUsbHandle) {
        this.retransmissionUsbHandle = retransmissionUsbHandle;
    }
}
