package com.fimi.x8sdk.dataparser;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.dataparser.BaseRespJson;
/* loaded from: classes2.dex */
public class AckCamJsonInfo extends BaseRespJson {
    public String toString() {
        return "AckCamJsonInfo{rval=" + this.rval + ", msg_id=" + this.msg_id + ", type='" + this.type + CoreConstants.SINGLE_QUOTE_CHAR + ", param=" + this.param + CoreConstants.CURLY_RIGHT;
    }
}
