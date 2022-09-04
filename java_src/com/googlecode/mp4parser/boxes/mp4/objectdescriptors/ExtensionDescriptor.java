package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeWriter;
import com.facebook.imageutils.JfifUtil;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.fimi.app.x8s.entity.X11CmdConstants;
import com.fimi.kernel.dataparser.usb.UsbHeader;
import com.fimi.x8sdk.command.X8BaseCamJsonData;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
@Descriptor(tags = {19, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, SyslogConstants.LOG_CLOCK, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, SyslogConstants.LOG_LOCAL1, 137, 138, TwitterApiConstants.Errors.ALREADY_FAVORITED, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, SyslogConstants.LOG_LOCAL3, 153, 154, 155, 156, 157, 158, 159, SyslogConstants.LOG_LOCAL4, 161, 162, 163, 164, 165, 166, 167, SyslogConstants.LOG_LOCAL5, 169, 170, 171, 172, 173, UsbHeader.MAGIC_START_NUMBER, 175, 176, 177, 178, 179, 180, 181, 182, 183, SyslogConstants.LOG_LOCAL7, 185, 186, 187, 188, 189, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 191, JfifUtil.MARKER_SOFn, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, JfifUtil.MARKER_RST0, 209, 210, 211, 212, 213, 214, JfifUtil.MARKER_RST7, JfifUtil.MARKER_SOI, JfifUtil.MARKER_EOI, JfifUtil.MARKER_SOS, 219, 220, 221, 222, 223, 224, JfifUtil.MARKER_APP1, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, X8BaseCamJsonData.GROUP_JSON, TwitterApiConstants.Errors.GUEST_AUTH_ERROR_CODE, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 251, 252, X11CmdConstants.CMD_X11_FM_LS_FD})
/* loaded from: classes.dex */
public class ExtensionDescriptor extends BaseDescriptor {
    private static Logger log = Logger.getLogger(ExtensionDescriptor.class.getName());
    ByteBuffer data;

    static int[] allTags() {
        int[] ints = new int[148];
        for (int i = 106; i < 254; i++) {
            int pos = i - 106;
            log.finest("pos:" + pos);
            ints[pos] = i;
        }
        return ints;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public void parseDetail(ByteBuffer bb) throws IOException {
        this.data = bb.slice();
        bb.position(bb.position() + this.data.remaining());
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtensionDescriptor");
        sb.append("tag=").append(this.tag);
        sb.append(",bytes=").append(Hex.encodeHex(this.data.array()));
        sb.append(CoreConstants.CURLY_RIGHT);
        return sb.toString();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public ByteBuffer serialize() {
        ByteBuffer out = ByteBuffer.allocate(getSize());
        IsoTypeWriter.writeUInt8(out, this.tag);
        writeSize(out, getContentSize());
        out.put(this.data.duplicate());
        return out;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    int getContentSize() {
        return this.data.remaining();
    }
}
