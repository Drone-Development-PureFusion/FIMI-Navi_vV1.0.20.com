package com.googlecode.mp4parser.authoring.tracks;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.sampleentry.AudioSampleEntry;
import com.facebook.imagepipeline.memory.BitmapCounterProvider;
import com.facebook.imageutils.JfifUtil;
import com.fimi.kernel.FimiAppContext;
import com.fimi.x8sdk.command.FcCollection;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.DTSSpecificBox;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.io.EOFException;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class DTSTrackImpl extends AbstractTrack {
    private static final int BUFFER = 67108864;
    int bcCoreBitRate;
    int bcCoreChannelMask;
    int bcCoreMaxSampleRate;
    int bitrate;
    int channelCount;
    int channelMask;
    int codecDelayAtMaxFs;
    int coreBitRate;
    int coreChannelMask;
    int coreFramePayloadInBytes;
    int coreMaxSampleRate;
    boolean coreSubStreamPresent;
    private int dataOffset;
    private DataSource dataSource;
    DTSSpecificBox ddts;
    int extAvgBitrate;
    int extFramePayloadInBytes;
    int extPeakBitrate;
    int extSmoothBuffSize;
    boolean extensionSubStreamPresent;
    int frameSize;
    boolean isVBR;
    private String lang;
    int lbrCodingPresent;
    int lsbTrimPercent;
    int maxSampleRate;
    int numExtSubStreams;
    int numFramesTotal;
    int numSamplesOrigAudioAtMaxFs;
    SampleDescriptionBox sampleDescriptionBox;
    private long[] sampleDurations;
    int sampleSize;
    int samplerate;
    private List<Sample> samples;
    int samplesPerFrame;
    int samplesPerFrameAtMaxFs;
    TrackMetaData trackMetaData;
    String type;

    public DTSTrackImpl(DataSource dataSource, String lang) throws IOException {
        super(dataSource.toString());
        this.trackMetaData = new TrackMetaData();
        this.frameSize = 0;
        this.dataOffset = 0;
        this.ddts = new DTSSpecificBox();
        this.isVBR = false;
        this.coreSubStreamPresent = false;
        this.extensionSubStreamPresent = false;
        this.numExtSubStreams = 0;
        this.coreMaxSampleRate = 0;
        this.coreBitRate = 0;
        this.coreChannelMask = 0;
        this.coreFramePayloadInBytes = 0;
        this.extAvgBitrate = 0;
        this.extPeakBitrate = 0;
        this.extSmoothBuffSize = 0;
        this.extFramePayloadInBytes = 0;
        this.maxSampleRate = 0;
        this.lbrCodingPresent = 0;
        this.numFramesTotal = 0;
        this.samplesPerFrameAtMaxFs = 0;
        this.numSamplesOrigAudioAtMaxFs = 0;
        this.channelMask = 0;
        this.codecDelayAtMaxFs = 0;
        this.bcCoreMaxSampleRate = 0;
        this.bcCoreBitRate = 0;
        this.bcCoreChannelMask = 0;
        this.lsbTrimPercent = 0;
        this.type = "none";
        this.lang = "eng";
        this.lang = lang;
        this.dataSource = dataSource;
        parse();
    }

    public DTSTrackImpl(DataSource dataSource) throws IOException {
        super(dataSource.toString());
        this.trackMetaData = new TrackMetaData();
        this.frameSize = 0;
        this.dataOffset = 0;
        this.ddts = new DTSSpecificBox();
        this.isVBR = false;
        this.coreSubStreamPresent = false;
        this.extensionSubStreamPresent = false;
        this.numExtSubStreams = 0;
        this.coreMaxSampleRate = 0;
        this.coreBitRate = 0;
        this.coreChannelMask = 0;
        this.coreFramePayloadInBytes = 0;
        this.extAvgBitrate = 0;
        this.extPeakBitrate = 0;
        this.extSmoothBuffSize = 0;
        this.extFramePayloadInBytes = 0;
        this.maxSampleRate = 0;
        this.lbrCodingPresent = 0;
        this.numFramesTotal = 0;
        this.samplesPerFrameAtMaxFs = 0;
        this.numSamplesOrigAudioAtMaxFs = 0;
        this.channelMask = 0;
        this.codecDelayAtMaxFs = 0;
        this.bcCoreMaxSampleRate = 0;
        this.bcCoreBitRate = 0;
        this.bcCoreChannelMask = 0;
        this.lsbTrimPercent = 0;
        this.type = "none";
        this.lang = "eng";
        this.dataSource = dataSource;
        parse();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.dataSource.close();
    }

    private void parse() throws IOException {
        if (!readVariables()) {
            throw new IOException();
        }
        this.sampleDescriptionBox = new SampleDescriptionBox();
        AudioSampleEntry audioSampleEntry = new AudioSampleEntry(this.type);
        audioSampleEntry.setChannelCount(this.channelCount);
        audioSampleEntry.setSampleRate(this.samplerate);
        audioSampleEntry.setDataReferenceIndex(1);
        audioSampleEntry.setSampleSize(16);
        audioSampleEntry.addBox(this.ddts);
        this.sampleDescriptionBox.addBox(audioSampleEntry);
        this.trackMetaData.setCreationTime(new Date());
        this.trackMetaData.setModificationTime(new Date());
        this.trackMetaData.setLanguage(this.lang);
        this.trackMetaData.setTimescale(this.samplerate);
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return this.samples;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return this.sampleDescriptionBox;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public long[] getSampleDurations() {
        return this.sampleDurations;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<CompositionTimeToSample.Entry> getCompositionTimeEntries() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public long[] getSyncSamples() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<SampleDependencyTypeBox.Entry> getSampleDependencies() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public TrackMetaData getTrackMetaData() {
        return this.trackMetaData;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return "soun";
    }

    private void parseDtshdhdr(int size, ByteBuffer bb) {
        bb.getInt();
        bb.get();
        bb.getInt();
        bb.get();
        int bitwStreamMetadata = bb.getShort();
        bb.get();
        this.numExtSubStreams = bb.get();
        if ((bitwStreamMetadata & 1) == 1) {
            this.isVBR = true;
        }
        if ((bitwStreamMetadata & 8) == 8) {
            this.coreSubStreamPresent = true;
        }
        if ((bitwStreamMetadata & 16) == 16) {
            this.extensionSubStreamPresent = true;
            this.numExtSubStreams++;
        } else {
            this.numExtSubStreams = 0;
        }
        for (int i = 14; i < size; i++) {
            bb.get();
        }
    }

    private boolean parseCoressmd(int size, ByteBuffer bb) {
        int cmsr_1 = bb.get();
        int cmsr_2 = bb.getShort();
        this.coreMaxSampleRate = (cmsr_1 << 16) | (65535 & cmsr_2);
        this.coreBitRate = bb.getShort();
        this.coreChannelMask = bb.getShort();
        this.coreFramePayloadInBytes = bb.getInt();
        for (int i = 11; i < size; i++) {
            bb.get();
        }
        return true;
    }

    private boolean parseAuprhdr(int size, ByteBuffer bb) {
        bb.get();
        int bitwAupresData = bb.getShort();
        int a = bb.get();
        int b = bb.getShort();
        this.maxSampleRate = (a << 16) | (b & 65535);
        this.numFramesTotal = bb.getInt();
        this.samplesPerFrameAtMaxFs = bb.getShort();
        int a2 = bb.get();
        int b2 = bb.getInt();
        this.numSamplesOrigAudioAtMaxFs = (a2 << 32) | (b2 & 65535);
        this.channelMask = bb.getShort();
        this.codecDelayAtMaxFs = bb.getShort();
        int c = 21;
        if ((bitwAupresData & 3) == 3) {
            int a3 = bb.get();
            int b3 = bb.getShort();
            this.bcCoreMaxSampleRate = (a3 << 16) | (b3 & 65535);
            this.bcCoreBitRate = bb.getShort();
            this.bcCoreChannelMask = bb.getShort();
            c = 21 + 7;
        }
        if ((bitwAupresData & 4) > 0) {
            this.lsbTrimPercent = bb.get();
            c++;
        }
        if ((bitwAupresData & 8) > 0) {
            this.lbrCodingPresent = 1;
        }
        while (c < size) {
            bb.get();
            c++;
        }
        return true;
    }

    private boolean parseExtssmd(int size, ByteBuffer bb) {
        int i;
        int a = bb.get();
        int b = bb.getShort();
        this.extAvgBitrate = (a << 16) | (b & 65535);
        if (this.isVBR) {
            int a2 = bb.get();
            int b2 = bb.getShort();
            this.extPeakBitrate = (a2 << 16) | (b2 & 65535);
            this.extSmoothBuffSize = bb.getShort();
            i = 3 + 5;
        } else {
            this.extFramePayloadInBytes = bb.getInt();
            i = 3 + 4;
        }
        while (i < size) {
            bb.get();
            i++;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c3, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x017d, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x012e, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0109, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0066, code lost:
        r6 = r9.getLong();
        r52.dataOffset = r9.position();
        r2 = -1;
        r17 = 0;
        r16 = 0;
        r8 = -1;
        r20 = -1;
        r25 = 0;
        r23 = 0;
        r22 = 0;
        r24 = 0;
        r19 = 0;
        r26 = 0;
        r18 = 0;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x008b, code lost:
        r27 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0091, code lost:
        switch(r52.samplesPerFrame) {
            case 512: goto L294;
            case 1024: goto L295;
            case 2048: goto L296;
            case 4096: goto L297;
            default: goto L114;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0097, code lost:
        if (r27 != (-1)) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0099, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02f9, code lost:
        r12 = 31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02fb, code lost:
        switch(r2) {
            case 0: goto L293;
            case 1: goto L119;
            case 2: goto L293;
            case 3: goto L119;
            case 4: goto L293;
            case 5: goto L293;
            case 6: goto L293;
            case 7: goto L293;
            case 8: goto L293;
            case 9: goto L293;
            default: goto L119;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02fe, code lost:
        r44 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0089, code lost:
        if (r15 == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0300, code lost:
        if (r8 != 0) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0305, code lost:
        if (r26 != 1) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0307, code lost:
        if (r18 != 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0309, code lost:
        r44 = 17;
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0311, code lost:
        r52.samplerate = r52.maxSampleRate;
        r52.sampleSize = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x031f, code lost:
        r52.ddts.setDTSSamplingFrequency(r52.maxSampleRate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x032f, code lost:
        if (r52.isVBR == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0331, code lost:
        r52.ddts.setMaxBitRate((r52.coreBitRate + r52.extPeakBitrate) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0344, code lost:
        r52.ddts.setAvgBitRate((r52.coreBitRate + r52.extAvgBitrate) * 1000);
        r52.ddts.setPcmSampleDepth(r52.sampleSize);
        r52.ddts.setFrameDuration(r27);
        r52.ddts.setStreamConstruction(r44);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00f7, code lost:
        r38 = r9.position();
        r45 = r9.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x037a, code lost:
        if ((r52.coreChannelMask & 8) > 0) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0382, code lost:
        if ((r52.coreChannelMask & 4096) <= 0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05b6, code lost:
        r52.ddts.setCoreLFEPresent(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x038c, code lost:
        r52.ddts.setCoreLayout(r12);
        r52.ddts.setCoreSize(r52.coreFramePayloadInBytes);
        r52.ddts.setStereoDownmix(0);
        r52.ddts.setRepresentationType(4);
        r52.ddts.setChannelLayout(r52.channelMask);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03bd, code lost:
        if (r52.coreMaxSampleRate <= 0) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03c3, code lost:
        if (r52.extAvgBitrate <= 0) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03c5, code lost:
        r52.ddts.setMultiAssetFlag(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03cd, code lost:
        r52.ddts.setLBRDurationMod(r52.lbrCodingPresent);
        r52.ddts.setReservedBoxPresent(0);
        r52.channelCount = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0104, code lost:
        if (r45 != 2147385345) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03e8, code lost:
        if (r10 < 16) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x05d2, code lost:
        if (((r52.channelMask >> r10) & 1) != 1) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x05d4, code lost:
        switch(r10) {
            case 0: goto L148;
            case 1: goto L145;
            case 2: goto L145;
            case 3: goto L148;
            case 4: goto L148;
            case 5: goto L145;
            case 6: goto L145;
            case 7: goto L148;
            case 8: goto L148;
            case 9: goto L145;
            case 10: goto L145;
            case 11: goto L145;
            case 12: goto L148;
            case 13: goto L145;
            case 14: goto L148;
            default: goto L145;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x05d7, code lost:
        r52.channelCount += 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x05e1, code lost:
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x05e5, code lost:
        r52.channelCount++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03ea, code lost:
        r52.samples = generateSamples(r52.dataSource, r52.dataOffset, r6, r8);
        r52.sampleDurations = new long[r52.samples.size()];
        java.util.Arrays.fill(r52.sampleDurations, r52.samplesPerFrame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x05c0, code lost:
        r52.ddts.setMultiAssetFlag(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0384, code lost:
        r52.ddts.setCoreLFEPresent(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x05a1, code lost:
        r52.ddts.setMaxBitRate((r52.coreBitRate + r52.extAvgBitrate) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x041c, code lost:
        r44 = 21;
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0429, code lost:
        if (r19 != 1) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x042b, code lost:
        r44 = 18;
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0438, code lost:
        if (r18 != 1) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x043a, code lost:
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0440, code lost:
        if (r23 != 0) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0442, code lost:
        if (r26 != 0) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0444, code lost:
        r44 = 19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x044b, code lost:
        if (r23 != 1) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x044d, code lost:
        if (r26 != 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0208, code lost:
        if (r45 != 1683496997) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x044f, code lost:
        r44 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0453, code lost:
        if (r23 != 0) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0458, code lost:
        if (r26 != 1) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x045a, code lost:
        r44 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0461, code lost:
        if (r20 >= 1) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0463, code lost:
        if (r16 <= 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0465, code lost:
        switch(r17) {
            case 0: goto L180;
            case 2: goto L181;
            case 6: goto L182;
            default: goto L179;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0468, code lost:
        r44 = 0;
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0472, code lost:
        r44 = 2;
        r52.type = "dtsc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x047c, code lost:
        r44 = 4;
        r52.type = "dtsc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0486, code lost:
        r44 = 3;
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0490, code lost:
        r44 = 1;
        r52.type = "dtsc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x049a, code lost:
        r52.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x04a0, code lost:
        if (r16 != 0) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x04a2, code lost:
        if (r18 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x04a7, code lost:
        if (r23 != 1) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x04a9, code lost:
        if (r22 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x020b, code lost:
        if (r8 != (-1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x04ab, code lost:
        if (r24 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x04ad, code lost:
        if (r26 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x04af, code lost:
        if (r19 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x04b1, code lost:
        r44 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x04b5, code lost:
        if (r18 != 0) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x04b7, code lost:
        if (r23 != 0) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x04b9, code lost:
        if (r22 != 0) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x04be, code lost:
        if (r24 != 1) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x04c0, code lost:
        if (r26 != 0) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x020d, code lost:
        r8 = 0;
        r52.samplesPerFrame = r52.samplesPerFrameAtMaxFs;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x04c2, code lost:
        if (r19 != 0) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x04c4, code lost:
        r44 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x04c8, code lost:
        if (r18 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x04cd, code lost:
        if (r23 != 1) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x04cf, code lost:
        if (r22 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x04d4, code lost:
        if (r24 != 1) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x04d6, code lost:
        if (r26 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x04d8, code lost:
        if (r19 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0216, code lost:
        r20 = 1;
        r11 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer(r9);
        r11.readBits(8);
        r11.readBits(2);
        r31 = r11.readBits(1);
        r35 = 12;
        r34 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x04da, code lost:
        r44 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x04de, code lost:
        if (r18 != 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04e0, code lost:
        if (r23 != 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x04e5, code lost:
        if (r22 != 1) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x04e7, code lost:
        if (r24 != 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x04e9, code lost:
        if (r26 != 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x04eb, code lost:
        if (r19 != 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x04ed, code lost:
        r44 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x04f1, code lost:
        if (r18 != 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x022f, code lost:
        if (r31 != 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x04f6, code lost:
        if (r23 != 1) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x04fb, code lost:
        if (r22 != 1) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x04fd, code lost:
        if (r24 != 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x04ff, code lost:
        if (r26 != 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0501, code lost:
        if (r19 != 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0503, code lost:
        r44 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0507, code lost:
        if (r18 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0509, code lost:
        if (r23 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0231, code lost:
        r35 = 8;
        r34 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x050b, code lost:
        if (r22 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x050d, code lost:
        if (r24 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0512, code lost:
        if (r26 != 1) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0514, code lost:
        if (r19 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0516, code lost:
        r44 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x051a, code lost:
        if (r17 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x051c, code lost:
        if (r18 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x051e, code lost:
        if (r23 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0520, code lost:
        if (r22 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0235, code lost:
        r37 = r11.readBits(r35) + 1;
        r36 = r11.readBits(r34) + 1;
        r9.position(r38 + r37);
        r21 = r9.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0525, code lost:
        if (r24 != 1) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0527, code lost:
        if (r26 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0529, code lost:
        if (r19 != 0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x052b, code lost:
        r44 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0532, code lost:
        if (r17 != 6) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0534, code lost:
        if (r18 != 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0536, code lost:
        if (r23 != 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0538, code lost:
        if (r22 != 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0253, code lost:
        if (r21 != 1515870810) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x053d, code lost:
        if (r24 != 1) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x053f, code lost:
        if (r26 != 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0541, code lost:
        if (r19 != 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0543, code lost:
        r44 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0547, code lost:
        if (r17 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0549, code lost:
        if (r18 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x054b, code lost:
        if (r23 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0550, code lost:
        if (r22 != 1) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0552, code lost:
        if (r24 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0554, code lost:
        if (r26 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0556, code lost:
        if (r19 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0558, code lost:
        r44 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x055f, code lost:
        if (r17 != 6) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0561, code lost:
        if (r18 != 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0563, code lost:
        if (r23 != 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0568, code lost:
        if (r22 != 1) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0258, code lost:
        if (r25 != 1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x056a, code lost:
        if (r24 != 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x056c, code lost:
        if (r26 != 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x056e, code lost:
        if (r19 != 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0570, code lost:
        r44 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0574, code lost:
        if (r17 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0576, code lost:
        if (r18 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0578, code lost:
        if (r23 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x057a, code lost:
        if (r22 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x057c, code lost:
        if (r24 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x025a, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0581, code lost:
        if (r26 != 1) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0583, code lost:
        if (r19 != 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0585, code lost:
        r44 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x058c, code lost:
        if (r17 != 2) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x058e, code lost:
        if (r18 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0590, code lost:
        if (r23 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0592, code lost:
        if (r22 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0594, code lost:
        if (r24 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x025b, code lost:
        r25 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0599, code lost:
        if (r26 != 1) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x059b, code lost:
        if (r19 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x059d, code lost:
        r44 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0419, code lost:
        r12 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x02e9, code lost:
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x02ed, code lost:
        r27 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x02f1, code lost:
        r27 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x02f5, code lost:
        r27 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x025d, code lost:
        if (r15 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x025f, code lost:
        r52.frameSize += r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0269, code lost:
        r9.position(r38 + r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0275, code lost:
        if (r21 != 1191201283) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x027a, code lost:
        if (r23 != 1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x027c, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x027d, code lost:
        r23 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0285, code lost:
        if (r21 != 496366178) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x028a, code lost:
        if (r22 != 1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x028c, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x028d, code lost:
        r22 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0295, code lost:
        if (r21 != 1700671838) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x029a, code lost:
        if (r24 != 1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x029c, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x029d, code lost:
        r24 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x02a5, code lost:
        if (r21 != 176167201) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02aa, code lost:
        if (r19 != 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ac, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02ad, code lost:
        r19 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02b5, code lost:
        if (r21 != 1101174087) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02ba, code lost:
        if (r26 != 1) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02bc, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02bd, code lost:
        r26 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02c5, code lost:
        if (r21 != 45126241) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02ca, code lost:
        if (r18 != 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02cc, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02cd, code lost:
        r18 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02e8, code lost:
        throw new java.io.IOException("No DTS_SYNCWORD_* found at " + r9.position());
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0107, code lost:
        if (r8 != 1) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x010c, code lost:
        r8 = 1;
        r11 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer(r9);
        r30 = r11.readBits(1);
        r42 = r11.readBits(5);
        r13 = r11.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0124, code lost:
        if (r30 != 1) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012a, code lost:
        if (r42 != 31) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x012c, code lost:
        if (r13 == 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0131, code lost:
        r33 = r11.readBits(7);
        r52.samplesPerFrame = (r33 + 1) * 32;
        r29 = r11.readBits(14);
        r52.frameSize += r29 + 1;
        r2 = r11.readBits(6);
        r41 = r11.readBits(4);
        r52.samplerate = getSampleRate(r41);
        r40 = r11.readBits(5);
        r52.bitrate = getBitRate(r40);
        r28 = r11.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x017b, code lost:
        if (r28 == 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0180, code lost:
        r11.readBits(1);
        r11.readBits(1);
        r11.readBits(1);
        r11.readBits(1);
        r17 = r11.readBits(3);
        r16 = r11.readBits(1);
        r11.readBits(1);
        r11.readBits(2);
        r11.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a7, code lost:
        if (r13 != 1) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a9, code lost:
        r11.readBits(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ae, code lost:
        r11.readBits(1);
        r48 = r11.readBits(4);
        r11.readBits(2);
        r39 = r11.readBits(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c0, code lost:
        switch(r39) {
            case 0: goto L90;
            case 1: goto L90;
            case 2: goto L98;
            case 3: goto L98;
            case 4: goto L100;
            case 5: goto L99;
            case 6: goto L99;
            default: goto L100;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c6, code lost:
        r52.sampleSize = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01cc, code lost:
        r11.readBits(1);
        r11.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01d5, code lost:
        switch(r48) {
            case 6: goto L96;
            case 7: goto L97;
            default: goto L93;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d8, code lost:
        r11.readBits(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01dc, code lost:
        r9.position((r38 + r29) + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01f3, code lost:
        r14 = r11.readBits(4);
        r3 = -(r14 + 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01fc, code lost:
        r14 = r11.readBits(4);
        r3 = -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e5, code lost:
        r52.sampleSize = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ec, code lost:
        r52.sampleSize = 24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean readVariables() throws IOException {
        ByteBuffer bb = this.dataSource.map(0L, 25000L);
        int testHeader1 = bb.getInt();
        int testHeader2 = bb.getInt();
        if (testHeader1 == 1146377032 && testHeader2 == 1145586770) {
            while (true) {
                if ((testHeader1 != 1398035021 || testHeader2 != 1145132097) && bb.remaining() > 100) {
                    int size = (int) bb.getLong();
                    if (testHeader1 == 1146377032 && testHeader2 == 1145586770) {
                        parseDtshdhdr(size, bb);
                    } else if (testHeader1 == 1129271877 && testHeader2 == 1397968196) {
                        if (!parseCoressmd(size, bb)) {
                            return false;
                        }
                    } else if (testHeader1 == 1096110162 && testHeader2 == 759710802) {
                        if (!parseAuprhdr(size, bb)) {
                            return false;
                        }
                    } else if (testHeader1 == 1163416659 && testHeader2 == 1398754628) {
                        if (!parseExtssmd(size, bb)) {
                            return false;
                        }
                    } else {
                        for (int i = 0; i < size; i++) {
                            bb.get();
                        }
                    }
                    testHeader1 = bb.getInt();
                    testHeader2 = bb.getInt();
                }
            }
        } else {
            throw new IOException("data does not start with 'DTSHDHDR' as required for a DTS-HD file");
        }
    }

    private List<Sample> generateSamples(DataSource dataSource, int dataOffset, long dataSize, int corePresent) throws IOException {
        LookAhead la = new LookAhead(dataSource, dataOffset, dataSize, corePresent);
        List<Sample> mySamples = new ArrayList<>();
        while (true) {
            final ByteBuffer sample = la.findNextStart();
            if (sample != null) {
                mySamples.add(new Sample() { // from class: com.googlecode.mp4parser.authoring.tracks.DTSTrackImpl.1
                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public void writeTo(WritableByteChannel channel) throws IOException {
                        channel.write((ByteBuffer) sample.rewind());
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public long getSize() {
                        return sample.rewind().remaining();
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public ByteBuffer asByteBuffer() {
                        return sample;
                    }
                });
            } else {
                System.err.println("all samples found");
                return mySamples;
            }
        }
    }

    private int getBitRate(int rate) throws IOException {
        switch (rate) {
            case 0:
                return 32;
            case 1:
                return 56;
            case 2:
                return 64;
            case 3:
                return 96;
            case 4:
                return 112;
            case 5:
                return 128;
            case 6:
                return JfifUtil.MARKER_SOFn;
            case 7:
                return 224;
            case 8:
                return 256;
            case 9:
                return 320;
            case 10:
                return BitmapCounterProvider.MAX_BITMAP_COUNT;
            case 11:
                return 448;
            case 12:
                return 512;
            case 13:
                return 576;
            case 14:
                return 640;
            case 15:
                return 768;
            case 16:
                return 960;
            case 17:
                return 1024;
            case 18:
                return 1152;
            case 19:
                return FimiAppContext.UI_HEIGHT;
            case 20:
                return 1344;
            case 21:
                return 1408;
            case 22:
                return 1411;
            case 23:
                return 1472;
            case 24:
                return 1536;
            case 25:
                return -1;
            default:
                throw new IOException("Unknown bitrate value");
        }
    }

    private int getSampleRate(int sfreq) throws IOException {
        switch (sfreq) {
            case 1:
                return EventsFilesManager.MAX_BYTE_SIZE_PER_FILE;
            case 2:
                return 16000;
            case 3:
                return 32000;
            case 4:
            case 5:
            case 9:
            case 10:
            default:
                throw new IOException("Unknown Sample Rate");
            case 6:
                return 11025;
            case 7:
                return 22050;
            case 8:
                return 44100;
            case 11:
                return 12000;
            case 12:
                return 24000;
            case 13:
                return 48000;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class LookAhead {
        ByteBuffer buffer;
        long bufferStartPos;
        private final int corePresent;
        long dataEnd;
        DataSource dataSource;
        int inBufferPos = 0;
        long start;

        LookAhead(DataSource dataSource, long bufferStartPos, long dataSize, int corePresent) throws IOException {
            this.dataSource = dataSource;
            this.bufferStartPos = bufferStartPos;
            this.dataEnd = dataSize + bufferStartPos;
            this.corePresent = corePresent;
            fillBuffer();
        }

        public ByteBuffer findNextStart() throws IOException {
            while (true) {
                try {
                    if (this.corePresent == 1) {
                        if (nextFourEquals0x7FFE8001()) {
                            break;
                        }
                        discardByte();
                    } else if (nextFourEquals0x64582025()) {
                        break;
                    } else {
                        discardByte();
                    }
                } catch (EOFException e) {
                    return null;
                }
                return null;
            }
            discardNext4AndMarkStart();
            while (true) {
                if (this.corePresent == 1) {
                    if (nextFourEquals0x7FFE8001orEof()) {
                        break;
                    }
                    discardQWord();
                } else if (nextFourEquals0x64582025orEof()) {
                    break;
                } else {
                    discardQWord();
                }
                return null;
            }
            return getSample();
        }

        private void fillBuffer() throws IOException {
            System.err.println("Fill Buffer");
            this.buffer = this.dataSource.map(this.bufferStartPos, Math.min(this.dataEnd - this.bufferStartPos, 67108864L));
        }

        private boolean nextFourEquals0x64582025() throws IOException {
            return nextFourEquals(FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_FOLLOW_SPEED, (byte) 32, (byte) 37);
        }

        private boolean nextFourEquals0x7FFE8001() throws IOException {
            return nextFourEquals(Byte.MAX_VALUE, (byte) -2, Byte.MIN_VALUE, (byte) 1);
        }

        private boolean nextFourEquals(byte a, byte b, byte c, byte d) throws IOException {
            if (this.buffer.limit() - this.inBufferPos >= 4) {
                return this.buffer.get(this.inBufferPos) == a && this.buffer.get(this.inBufferPos + 1) == b && this.buffer.get(this.inBufferPos + 2) == c && this.buffer.get(this.inBufferPos + 3) == d;
            } else if (this.bufferStartPos + this.inBufferPos + 4 < this.dataSource.size()) {
                return false;
            } else {
                throw new EOFException();
            }
        }

        private boolean nextFourEquals0x64582025orEof() throws IOException {
            return nextFourEqualsOrEof(FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_FOLLOW_SPEED, (byte) 32, (byte) 37);
        }

        private boolean nextFourEquals0x7FFE8001orEof() throws IOException {
            return nextFourEqualsOrEof(Byte.MAX_VALUE, (byte) -2, Byte.MIN_VALUE, (byte) 1);
        }

        private boolean nextFourEqualsOrEof(byte a, byte b, byte c, byte d) throws IOException {
            if (this.buffer.limit() - this.inBufferPos >= 4) {
                if ((this.bufferStartPos + this.inBufferPos) % PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED == 0) {
                    System.err.println(new StringBuilder().append(((this.bufferStartPos + this.inBufferPos) / 1024) / 1024).toString());
                }
                return this.buffer.get(this.inBufferPos) == a && this.buffer.get(this.inBufferPos + 1) == b && this.buffer.get(this.inBufferPos + 2) == c && this.buffer.get(this.inBufferPos + 3) == d;
            } else if (this.bufferStartPos + this.inBufferPos + 4 > this.dataEnd) {
                return this.bufferStartPos + ((long) this.inBufferPos) == this.dataEnd;
            } else {
                this.bufferStartPos = this.start;
                this.inBufferPos = 0;
                fillBuffer();
                return nextFourEquals0x7FFE8001();
            }
        }

        private void discardByte() {
            this.inBufferPos++;
        }

        private void discardQWord() {
            this.inBufferPos += 4;
        }

        private void discardNext4AndMarkStart() {
            this.start = this.bufferStartPos + this.inBufferPos;
            this.inBufferPos += 4;
        }

        private ByteBuffer getSample() {
            if (this.start >= this.bufferStartPos) {
                this.buffer.position((int) (this.start - this.bufferStartPos));
                Buffer sample = this.buffer.slice();
                sample.limit((int) (this.inBufferPos - (this.start - this.bufferStartPos)));
                return (ByteBuffer) sample;
            }
            throw new RuntimeException("damn! NAL exceeds buffer");
        }
    }
}
