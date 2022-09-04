package com.googlecode.mp4parser.h264.model;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.animutils.IOUtils;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class ScalingMatrix {
    public ScalingList[] ScalingList4x4;
    public ScalingList[] ScalingList8x8;

    public String toString() {
        List list = null;
        StringBuilder append = new StringBuilder("ScalingMatrix{ScalingList4x4=").append(this.ScalingList4x4 == null ? null : Arrays.asList(this.ScalingList4x4)).append(IOUtils.LINE_SEPARATOR_UNIX).append(", ScalingList8x8=");
        if (this.ScalingList8x8 != null) {
            list = Arrays.asList(this.ScalingList8x8);
        }
        return append.append(list).append(IOUtils.LINE_SEPARATOR_UNIX).append(CoreConstants.CURLY_RIGHT).toString();
    }
}
