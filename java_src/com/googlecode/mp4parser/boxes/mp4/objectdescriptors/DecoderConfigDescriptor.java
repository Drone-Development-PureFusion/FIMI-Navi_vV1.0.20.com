package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import ch.qos.logback.core.CoreConstants;
import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
@Descriptor(tags = {4})
/* loaded from: classes.dex */
public class DecoderConfigDescriptor extends BaseDescriptor {
    private static Logger log = Logger.getLogger(DecoderConfigDescriptor.class.getName());
    AudioSpecificConfig audioSpecificInfo;
    long avgBitRate;
    int bufferSizeDB;
    byte[] configDescriptorDeadBytes;
    DecoderSpecificInfo decoderSpecificInfo;
    long maxBitRate;
    int objectTypeIndication;
    List<ProfileLevelIndicationDescriptor> profileLevelIndicationDescriptors = new ArrayList();
    int streamType;
    int upStream;

    public DecoderConfigDescriptor() {
        this.tag = 4;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public void parseDetail(ByteBuffer bb) throws IOException {
        int size;
        this.objectTypeIndication = IsoTypeReader.readUInt8(bb);
        int data = IsoTypeReader.readUInt8(bb);
        this.streamType = data >>> 2;
        this.upStream = (data >> 1) & 1;
        this.bufferSizeDB = IsoTypeReader.readUInt24(bb);
        this.maxBitRate = IsoTypeReader.readUInt32(bb);
        this.avgBitRate = IsoTypeReader.readUInt32(bb);
        while (bb.remaining() > 2) {
            int begin = bb.position();
            BaseDescriptor descriptor = ObjectDescriptorFactory.createFrom(this.objectTypeIndication, bb);
            int read = bb.position() - begin;
            log.finer(descriptor + " - DecoderConfigDescr1 read: " + read + ", size: " + (descriptor != null ? Integer.valueOf(descriptor.getSize()) : null));
            if (descriptor != null && read < (size = descriptor.getSize())) {
                this.configDescriptorDeadBytes = new byte[size - read];
                bb.get(this.configDescriptorDeadBytes);
            }
            if (descriptor instanceof DecoderSpecificInfo) {
                this.decoderSpecificInfo = (DecoderSpecificInfo) descriptor;
            } else if (descriptor instanceof AudioSpecificConfig) {
                this.audioSpecificInfo = (AudioSpecificConfig) descriptor;
            } else if (descriptor instanceof ProfileLevelIndicationDescriptor) {
                this.profileLevelIndicationDescriptors.add((ProfileLevelIndicationDescriptor) descriptor);
            }
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    int getContentSize() {
        int i = 0;
        int size = (this.audioSpecificInfo == null ? 0 : this.audioSpecificInfo.getSize()) + 13;
        if (this.decoderSpecificInfo != null) {
            i = this.decoderSpecificInfo.getSize();
        }
        int out = size + i;
        for (ProfileLevelIndicationDescriptor profileLevelIndicationDescriptor : this.profileLevelIndicationDescriptors) {
            out += profileLevelIndicationDescriptor.getSize();
        }
        return out;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public ByteBuffer serialize() {
        ByteBuffer out = ByteBuffer.allocate(getSize());
        IsoTypeWriter.writeUInt8(out, this.tag);
        writeSize(out, getContentSize());
        IsoTypeWriter.writeUInt8(out, this.objectTypeIndication);
        int flags = (this.streamType << 2) | (this.upStream << 1) | 1;
        IsoTypeWriter.writeUInt8(out, flags);
        IsoTypeWriter.writeUInt24(out, this.bufferSizeDB);
        IsoTypeWriter.writeUInt32(out, this.maxBitRate);
        IsoTypeWriter.writeUInt32(out, this.avgBitRate);
        if (this.decoderSpecificInfo != null) {
            ByteBuffer bb = this.decoderSpecificInfo.serialize();
            out.put(bb);
        }
        if (this.audioSpecificInfo != null) {
            ByteBuffer bb2 = this.audioSpecificInfo.serialize();
            out.put(bb2);
        }
        for (ProfileLevelIndicationDescriptor profileLevelIndicationDescriptor : this.profileLevelIndicationDescriptors) {
            out.put(profileLevelIndicationDescriptor.serialize());
        }
        return (ByteBuffer) out.rewind();
    }

    public DecoderSpecificInfo getDecoderSpecificInfo() {
        return this.decoderSpecificInfo;
    }

    public void setDecoderSpecificInfo(DecoderSpecificInfo decoderSpecificInfo) {
        this.decoderSpecificInfo = decoderSpecificInfo;
    }

    public AudioSpecificConfig getAudioSpecificInfo() {
        return this.audioSpecificInfo;
    }

    public void setAudioSpecificInfo(AudioSpecificConfig audioSpecificInfo) {
        this.audioSpecificInfo = audioSpecificInfo;
    }

    public List<ProfileLevelIndicationDescriptor> getProfileLevelIndicationDescriptors() {
        return this.profileLevelIndicationDescriptors;
    }

    public int getObjectTypeIndication() {
        return this.objectTypeIndication;
    }

    public void setObjectTypeIndication(int objectTypeIndication) {
        this.objectTypeIndication = objectTypeIndication;
    }

    public int getStreamType() {
        return this.streamType;
    }

    public void setStreamType(int streamType) {
        this.streamType = streamType;
    }

    public int getUpStream() {
        return this.upStream;
    }

    public void setUpStream(int upStream) {
        this.upStream = upStream;
    }

    public int getBufferSizeDB() {
        return this.bufferSizeDB;
    }

    public void setBufferSizeDB(int bufferSizeDB) {
        this.bufferSizeDB = bufferSizeDB;
    }

    public long getMaxBitRate() {
        return this.maxBitRate;
    }

    public void setMaxBitRate(long maxBitRate) {
        this.maxBitRate = maxBitRate;
    }

    public long getAvgBitRate() {
        return this.avgBitRate;
    }

    public void setAvgBitRate(long avgBitRate) {
        this.avgBitRate = avgBitRate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderConfigDescriptor");
        sb.append("{objectTypeIndication=").append(this.objectTypeIndication);
        sb.append(", streamType=").append(this.streamType);
        sb.append(", upStream=").append(this.upStream);
        sb.append(", bufferSizeDB=").append(this.bufferSizeDB);
        sb.append(", maxBitRate=").append(this.maxBitRate);
        sb.append(", avgBitRate=").append(this.avgBitRate);
        sb.append(", decoderSpecificInfo=").append(this.decoderSpecificInfo);
        sb.append(", audioSpecificInfo=").append(this.audioSpecificInfo);
        sb.append(", configDescriptorDeadBytes=").append(Hex.encodeHex(this.configDescriptorDeadBytes != null ? this.configDescriptorDeadBytes : new byte[0]));
        sb.append(", profileLevelIndicationDescriptors=").append(this.profileLevelIndicationDescriptors == null ? "null" : Arrays.asList(this.profileLevelIndicationDescriptors).toString());
        sb.append(CoreConstants.CURLY_RIGHT);
        return sb.toString();
    }
}
