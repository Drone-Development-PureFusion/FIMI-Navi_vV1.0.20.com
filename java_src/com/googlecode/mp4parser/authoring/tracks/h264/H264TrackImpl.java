package com.googlecode.mp4parser.authoring.tracks.h264;

import ch.qos.logback.core.CoreConstants;
import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.sampleentry.VisualSampleEntry;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.tracks.AbstractH26XTrack;
import com.googlecode.mp4parser.authoring.tracks.h264.SliceHeader;
import com.googlecode.mp4parser.h264.model.PictureParameterSet;
import com.googlecode.mp4parser.h264.model.SeqParameterSet;
import com.googlecode.mp4parser.h264.read.CAVLCReader;
import com.googlecode.mp4parser.util.Mp4Arrays;
import com.googlecode.mp4parser.util.RangeStartMap;
import com.mp4parser.iso14496.part15.AvcConfigurationBox;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class H264TrackImpl extends AbstractH26XTrack {
    private static final Logger LOG = Logger.getLogger(H264TrackImpl.class.getName());
    PictureParameterSet currentPictureParameterSet;
    SeqParameterSet currentSeqParameterSet;
    private boolean determineFrameRate;
    PictureParameterSet firstPictureParameterSet;
    SeqParameterSet firstSeqParameterSet;
    int frameNrInGop;
    private int frametick;
    private int height;
    private String lang;
    int[] pictureOrderCounts;
    RangeStartMap<Integer, byte[]> pictureParameterRangeMap;
    Map<Integer, PictureParameterSet> ppsIdToPps;
    Map<Integer, byte[]> ppsIdToPpsBytes;
    int prevPicOrderCntLsb;
    int prevPicOrderCntMsb;
    SampleDescriptionBox sampleDescriptionBox;
    private List<Sample> samples;
    private SEIMessage seiMessage;
    RangeStartMap<Integer, byte[]> seqParameterRangeMap;
    Map<Integer, SeqParameterSet> spsIdToSps;
    Map<Integer, byte[]> spsIdToSpsBytes;
    private long timescale;
    private int width;

    public H264TrackImpl(DataSource dataSource, String lang, long timescale, int frametick) throws IOException {
        super(dataSource);
        this.spsIdToSpsBytes = new HashMap();
        this.spsIdToSps = new HashMap();
        this.ppsIdToPpsBytes = new HashMap();
        this.ppsIdToPps = new HashMap();
        this.firstSeqParameterSet = null;
        this.firstPictureParameterSet = null;
        this.currentSeqParameterSet = null;
        this.currentPictureParameterSet = null;
        this.seqParameterRangeMap = new RangeStartMap<>();
        this.pictureParameterRangeMap = new RangeStartMap<>();
        this.frameNrInGop = 0;
        this.pictureOrderCounts = new int[0];
        this.prevPicOrderCntLsb = 0;
        this.prevPicOrderCntMsb = 0;
        this.determineFrameRate = true;
        this.lang = "eng";
        this.lang = lang;
        this.timescale = timescale;
        this.frametick = frametick;
        if (timescale > 0 && frametick > 0) {
            this.determineFrameRate = false;
        }
        parse(new AbstractH26XTrack.LookAhead(dataSource));
    }

    public H264TrackImpl(DataSource dataSource, String lang) throws IOException {
        this(dataSource, lang, -1L, -1);
    }

    public H264TrackImpl(DataSource dataSource) throws IOException {
        this(dataSource, "eng");
    }

    public static H264NalUnitHeader getNalUnitHeader(ByteBuffer nal) {
        H264NalUnitHeader nalUnitHeader = new H264NalUnitHeader();
        int type = nal.get(0);
        nalUnitHeader.nal_ref_idc = (type >> 5) & 3;
        nalUnitHeader.nal_unit_type = type & 31;
        return nalUnitHeader;
    }

    private void parse(AbstractH26XTrack.LookAhead la) throws IOException {
        int i = 0;
        this.samples = new ArrayList();
        if (!readSamples(la)) {
            throw new IOException();
        }
        if (!readVariables()) {
            throw new IOException();
        }
        this.sampleDescriptionBox = new SampleDescriptionBox();
        VisualSampleEntry visualSampleEntry = new VisualSampleEntry(VisualSampleEntry.TYPE3);
        visualSampleEntry.setDataReferenceIndex(1);
        visualSampleEntry.setDepth(24);
        visualSampleEntry.setFrameCount(1);
        visualSampleEntry.setHorizresolution(72.0d);
        visualSampleEntry.setVertresolution(72.0d);
        visualSampleEntry.setWidth(this.width);
        visualSampleEntry.setHeight(this.height);
        visualSampleEntry.setCompressorname("AVC Coding");
        AvcConfigurationBox avcConfigurationBox = new AvcConfigurationBox();
        avcConfigurationBox.setSequenceParameterSets(new ArrayList(this.spsIdToSpsBytes.values()));
        avcConfigurationBox.setPictureParameterSets(new ArrayList(this.ppsIdToPpsBytes.values()));
        avcConfigurationBox.setAvcLevelIndication(this.firstSeqParameterSet.level_idc);
        avcConfigurationBox.setAvcProfileIndication(this.firstSeqParameterSet.profile_idc);
        avcConfigurationBox.setBitDepthLumaMinus8(this.firstSeqParameterSet.bit_depth_luma_minus8);
        avcConfigurationBox.setBitDepthChromaMinus8(this.firstSeqParameterSet.bit_depth_chroma_minus8);
        avcConfigurationBox.setChromaFormat(this.firstSeqParameterSet.chroma_format_idc.getId());
        avcConfigurationBox.setConfigurationVersion(1);
        avcConfigurationBox.setLengthSizeMinusOne(3);
        int i2 = (this.firstSeqParameterSet.constraint_set_3_flag ? 16 : 0) + (this.firstSeqParameterSet.constraint_set_1_flag ? 64 : 0) + (this.firstSeqParameterSet.constraint_set_0_flag ? 128 : 0) + (this.firstSeqParameterSet.constraint_set_2_flag ? 32 : 0);
        if (this.firstSeqParameterSet.constraint_set_4_flag) {
            i = 8;
        }
        avcConfigurationBox.setProfileCompatibility(i2 + i + ((int) (this.firstSeqParameterSet.reserved_zero_2bits & 3)));
        visualSampleEntry.addBox(avcConfigurationBox);
        this.sampleDescriptionBox.addBox(visualSampleEntry);
        this.trackMetaData.setCreationTime(new Date());
        this.trackMetaData.setModificationTime(new Date());
        this.trackMetaData.setLanguage(this.lang);
        this.trackMetaData.setTimescale(this.timescale);
        this.trackMetaData.setWidth(this.width);
        this.trackMetaData.setHeight(this.height);
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return this.sampleDescriptionBox;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return "vide";
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return this.samples;
    }

    private boolean readVariables() {
        this.width = (this.firstSeqParameterSet.pic_width_in_mbs_minus1 + 1) * 16;
        int mult = 2;
        if (this.firstSeqParameterSet.frame_mbs_only_flag) {
            mult = 1;
        }
        this.height = (this.firstSeqParameterSet.pic_height_in_map_units_minus1 + 1) * 16 * mult;
        if (this.firstSeqParameterSet.frame_cropping_flag) {
            int chromaArrayType = 0;
            if (!this.firstSeqParameterSet.residual_color_transform_flag) {
                chromaArrayType = this.firstSeqParameterSet.chroma_format_idc.getId();
            }
            int cropUnitX = 1;
            int cropUnitY = mult;
            if (chromaArrayType != 0) {
                cropUnitX = this.firstSeqParameterSet.chroma_format_idc.getSubWidth();
                cropUnitY = this.firstSeqParameterSet.chroma_format_idc.getSubHeight() * mult;
            }
            this.width -= (this.firstSeqParameterSet.frame_crop_left_offset + this.firstSeqParameterSet.frame_crop_right_offset) * cropUnitX;
            this.height -= (this.firstSeqParameterSet.frame_crop_top_offset + this.firstSeqParameterSet.frame_crop_bottom_offset) * cropUnitY;
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        calcCtts();
        r8.decodingTimes = new long[r8.samples.size()];
        java.util.Arrays.fill(r8.decodingTimes, r8.frametick);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
        if (r0.size() <= 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
        createSample(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.googlecode.mp4parser.authoring.tracks.h264.H264TrackImpl$1FirstVclNalDetector] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean readSamples(AbstractH26XTrack.LookAhead la) throws IOException {
        List<ByteBuffer> buffered = new ArrayList<>();
        C1FirstVclNalDetector fvnd = 0;
        while (true) {
            ByteBuffer nal = findNextNal(la);
            if (nal != null) {
                H264NalUnitHeader nalUnitHeader = getNalUnitHeader(nal);
                switch (nalUnitHeader.nal_unit_type) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        ?? r1 = new Object(nal, nalUnitHeader.nal_ref_idc, nalUnitHeader.nal_unit_type) { // from class: com.googlecode.mp4parser.authoring.tracks.h264.H264TrackImpl.1FirstVclNalDetector
                            boolean bottom_field_flag;
                            int delta_pic_order_cnt_0;
                            int delta_pic_order_cnt_1;
                            int delta_pic_order_cnt_bottom;
                            boolean field_pic_flag;
                            int frame_num;
                            boolean idrPicFlag;
                            int idr_pic_id;
                            int nal_ref_idc;
                            int pic_order_cnt_lsb;
                            int pic_order_cnt_type;
                            int pic_parameter_set_id;

                            {
                                InputStream bs = H264TrackImpl.cleanBuffer(new ByteBufferBackedInputStream(nal));
                                SliceHeader sh = new SliceHeader(bs, H264TrackImpl.this.spsIdToSps, H264TrackImpl.this.ppsIdToPps, nal_unit_type == 5);
                                this.frame_num = sh.frame_num;
                                this.pic_parameter_set_id = sh.pic_parameter_set_id;
                                this.field_pic_flag = sh.field_pic_flag;
                                this.bottom_field_flag = sh.bottom_field_flag;
                                this.nal_ref_idc = nal_ref_idc;
                                this.pic_order_cnt_type = H264TrackImpl.this.spsIdToSps.get(Integer.valueOf(H264TrackImpl.this.ppsIdToPps.get(Integer.valueOf(sh.pic_parameter_set_id)).seq_parameter_set_id)).pic_order_cnt_type;
                                this.delta_pic_order_cnt_bottom = sh.delta_pic_order_cnt_bottom;
                                this.pic_order_cnt_lsb = sh.pic_order_cnt_lsb;
                                this.delta_pic_order_cnt_0 = sh.delta_pic_order_cnt_0;
                                this.delta_pic_order_cnt_1 = sh.delta_pic_order_cnt_1;
                                this.idr_pic_id = sh.idr_pic_id;
                            }

                            boolean isFirstInNew(C1FirstVclNalDetector nu) {
                                if (nu.frame_num == this.frame_num && nu.pic_parameter_set_id == this.pic_parameter_set_id && nu.field_pic_flag == this.field_pic_flag) {
                                    if ((nu.field_pic_flag && nu.bottom_field_flag != this.bottom_field_flag) || nu.nal_ref_idc != this.nal_ref_idc) {
                                        return true;
                                    }
                                    if (nu.pic_order_cnt_type == 0 && this.pic_order_cnt_type == 0 && (nu.pic_order_cnt_lsb != this.pic_order_cnt_lsb || nu.delta_pic_order_cnt_bottom != this.delta_pic_order_cnt_bottom)) {
                                        return true;
                                    }
                                    if ((nu.pic_order_cnt_type == 1 && this.pic_order_cnt_type == 1 && (nu.delta_pic_order_cnt_0 != this.delta_pic_order_cnt_0 || nu.delta_pic_order_cnt_1 != this.delta_pic_order_cnt_1)) || nu.idrPicFlag != this.idrPicFlag) {
                                        return true;
                                    }
                                    return nu.idrPicFlag && this.idrPicFlag && nu.idr_pic_id != this.idr_pic_id;
                                }
                                return true;
                            }
                        };
                        if (fvnd != 0 && fvnd.isFirstInNew(r1)) {
                            LOG.finer("Wrapping up cause of first vcl nal is found");
                            createSample(buffered);
                        }
                        fvnd = r1;
                        buffered.add((ByteBuffer) nal.rewind());
                        break;
                    case 6:
                        if (fvnd != 0) {
                            LOG.finer("Wrapping up cause of SEI after vcl marks new sample");
                            createSample(buffered);
                            fvnd = 0;
                        }
                        this.seiMessage = new SEIMessage(cleanBuffer(new ByteBufferBackedInputStream(nal)), this.currentSeqParameterSet);
                        buffered.add(nal);
                        break;
                    case 7:
                        if (fvnd != 0) {
                            LOG.finer("Wrapping up cause of SPS after vcl marks new sample");
                            createSample(buffered);
                            fvnd = 0;
                        }
                        handleSPS((ByteBuffer) nal.rewind());
                        break;
                    case 8:
                        if (fvnd != 0) {
                            LOG.finer("Wrapping up cause of PPS after vcl marks new sample");
                            createSample(buffered);
                            fvnd = 0;
                        }
                        handlePPS((ByteBuffer) nal.rewind());
                        break;
                    case 9:
                        if (fvnd != 0) {
                            LOG.finer("Wrapping up cause of AU after vcl marks new sample");
                            createSample(buffered);
                            fvnd = 0;
                        }
                        buffered.add(nal);
                        break;
                    case 10:
                    case 11:
                        break;
                    case 12:
                    default:
                        LOG.warning("Unknown NAL unit type: " + nalUnitHeader.nal_unit_type);
                        break;
                    case 13:
                        throw new RuntimeException("Sequence parameter set extension is not yet handled. Needs TLC.");
                }
            }
        }
    }

    public void calcCtts() {
        int pTime = 0;
        int lastPoc = -1;
        int j = 0;
        while (j < this.pictureOrderCounts.length) {
            int minIndex = 0;
            int minValue = Integer.MAX_VALUE;
            for (int i = Math.max(0, j - 128); i < Math.min(this.pictureOrderCounts.length, j + 128); i++) {
                if (this.pictureOrderCounts[i] > lastPoc && this.pictureOrderCounts[i] < minValue) {
                    minIndex = i;
                    minValue = this.pictureOrderCounts[i];
                }
            }
            lastPoc = this.pictureOrderCounts[minIndex];
            this.pictureOrderCounts[minIndex] = pTime;
            j++;
            pTime++;
        }
        for (int i2 = 0; i2 < this.pictureOrderCounts.length; i2++) {
            this.ctts.add(new CompositionTimeToSample.Entry(1, this.pictureOrderCounts[i2] - i2));
        }
        this.pictureOrderCounts = new int[0];
    }

    private void createSample(List<ByteBuffer> buffered) throws IOException {
        int picOrderCntMsb;
        SampleDependencyTypeBox.Entry sampleDependency = new SampleDependencyTypeBox.Entry(0);
        boolean IdrPicFlag = false;
        H264NalUnitHeader nu = null;
        for (ByteBuffer nal : buffered) {
            H264NalUnitHeader _nu = getNalUnitHeader(nal);
            switch (_nu.nal_unit_type) {
                case 5:
                    IdrPicFlag = true;
                    break;
            }
            nu = _nu;
        }
        if (nu == null) {
            LOG.warning("Sample without Slice");
            return;
        }
        if (IdrPicFlag) {
            calcCtts();
        }
        InputStream bs = cleanBuffer(new ByteBufferBackedInputStream(buffered.get(buffered.size() - 1)));
        SliceHeader sh = new SliceHeader(bs, this.spsIdToSps, this.ppsIdToPps, IdrPicFlag);
        if (nu.nal_ref_idc == 0) {
            sampleDependency.setSampleIsDependentOn(2);
        } else {
            sampleDependency.setSampleIsDependentOn(1);
        }
        if (sh.slice_type == SliceHeader.SliceType.I || sh.slice_type == SliceHeader.SliceType.SI) {
            sampleDependency.setSampleDependsOn(2);
        } else {
            sampleDependency.setSampleDependsOn(1);
        }
        Sample bb = createSampleObject(buffered);
        buffered.clear();
        if (this.seiMessage == null || this.seiMessage.n_frames == 0) {
            this.frameNrInGop = 0;
        }
        if (sh.sps.pic_order_cnt_type == 0) {
            int max_pic_order_count_lsb = 1 << (sh.sps.log2_max_pic_order_cnt_lsb_minus4 + 4);
            int picOrderCountLsb = sh.pic_order_cnt_lsb;
            if (picOrderCountLsb < this.prevPicOrderCntLsb && this.prevPicOrderCntLsb - picOrderCountLsb >= max_pic_order_count_lsb / 2) {
                picOrderCntMsb = this.prevPicOrderCntMsb + max_pic_order_count_lsb;
            } else if (picOrderCountLsb > this.prevPicOrderCntLsb && picOrderCountLsb - this.prevPicOrderCntLsb > max_pic_order_count_lsb / 2) {
                picOrderCntMsb = this.prevPicOrderCntMsb - max_pic_order_count_lsb;
            } else {
                picOrderCntMsb = this.prevPicOrderCntMsb;
            }
            this.pictureOrderCounts = Mp4Arrays.copyOfAndAppend(this.pictureOrderCounts, picOrderCntMsb + picOrderCountLsb);
            this.prevPicOrderCntLsb = picOrderCountLsb;
            this.prevPicOrderCntMsb = picOrderCntMsb;
        } else if (sh.sps.pic_order_cnt_type == 1) {
            throw new RuntimeException("pic_order_cnt_type == 1 needs to be implemented");
        } else {
            if (sh.sps.pic_order_cnt_type == 2) {
                this.pictureOrderCounts = Mp4Arrays.copyOfAndAppend(this.pictureOrderCounts, this.samples.size());
            }
        }
        this.sdtp.add(sampleDependency);
        this.frameNrInGop++;
        this.samples.add(bb);
        if (IdrPicFlag) {
            this.stss.add(Integer.valueOf(this.samples.size()));
        }
    }

    private int calcPoc(int absFrameNum, H264NalUnitHeader nu, SliceHeader sh) {
        if (sh.sps.pic_order_cnt_type == 0) {
            return calcPOC0(nu, sh);
        }
        if (sh.sps.pic_order_cnt_type == 1) {
            return calcPOC1(absFrameNum, nu, sh);
        }
        return calcPOC2(absFrameNum, nu, sh);
    }

    private int calcPOC2(int absFrameNum, H264NalUnitHeader nu, SliceHeader sh) {
        return nu.nal_ref_idc == 0 ? (absFrameNum * 2) - 1 : absFrameNum * 2;
    }

    private int calcPOC1(int absFrameNum, H264NalUnitHeader nu, SliceHeader sh) {
        int expectedPicOrderCnt;
        if (sh.sps.num_ref_frames_in_pic_order_cnt_cycle == 0) {
            absFrameNum = 0;
        }
        if (nu.nal_ref_idc == 0 && absFrameNum > 0) {
            absFrameNum--;
        }
        int expectedDeltaPerPicOrderCntCycle = 0;
        for (int i = 0; i < sh.sps.num_ref_frames_in_pic_order_cnt_cycle; i++) {
            expectedDeltaPerPicOrderCntCycle += sh.sps.offsetForRefFrame[i];
        }
        if (absFrameNum > 0) {
            int picOrderCntCycleCnt = (absFrameNum - 1) / sh.sps.num_ref_frames_in_pic_order_cnt_cycle;
            int frameNumInPicOrderCntCycle = (absFrameNum - 1) % sh.sps.num_ref_frames_in_pic_order_cnt_cycle;
            expectedPicOrderCnt = picOrderCntCycleCnt * expectedDeltaPerPicOrderCntCycle;
            for (int i2 = 0; i2 <= frameNumInPicOrderCntCycle; i2++) {
                expectedPicOrderCnt += sh.sps.offsetForRefFrame[i2];
            }
        } else {
            expectedPicOrderCnt = 0;
        }
        if (nu.nal_ref_idc == 0) {
            expectedPicOrderCnt += sh.sps.offset_for_non_ref_pic;
        }
        return sh.delta_pic_order_cnt_0 + expectedPicOrderCnt;
    }

    private int calcPOC0(H264NalUnitHeader nu, SliceHeader sh) {
        int picOrderCntMsb;
        int pocCntLsb = sh.pic_order_cnt_lsb;
        int maxPicOrderCntLsb = 1 << (sh.sps.log2_max_pic_order_cnt_lsb_minus4 + 4);
        if (pocCntLsb < this.prevPicOrderCntLsb && this.prevPicOrderCntLsb - pocCntLsb >= maxPicOrderCntLsb / 2) {
            picOrderCntMsb = this.prevPicOrderCntMsb + maxPicOrderCntLsb;
        } else if (pocCntLsb > this.prevPicOrderCntLsb && pocCntLsb - this.prevPicOrderCntLsb > maxPicOrderCntLsb / 2) {
            picOrderCntMsb = this.prevPicOrderCntMsb - maxPicOrderCntLsb;
        } else {
            picOrderCntMsb = this.prevPicOrderCntMsb;
        }
        if (nu.nal_ref_idc != 0) {
            this.prevPicOrderCntMsb = picOrderCntMsb;
            this.prevPicOrderCntLsb = pocCntLsb;
        }
        return picOrderCntMsb + pocCntLsb;
    }

    private void handlePPS(ByteBuffer data) throws IOException {
        InputStream is = new ByteBufferBackedInputStream(data);
        is.read();
        PictureParameterSet _pictureParameterSet = PictureParameterSet.read(is);
        if (this.firstPictureParameterSet == null) {
            this.firstPictureParameterSet = _pictureParameterSet;
        }
        this.currentPictureParameterSet = _pictureParameterSet;
        byte[] ppsBytes = toArray((ByteBuffer) data.rewind());
        byte[] oldPpsSameId = this.ppsIdToPpsBytes.get(Integer.valueOf(_pictureParameterSet.pic_parameter_set_id));
        if (oldPpsSameId != null && !Arrays.equals(oldPpsSameId, ppsBytes)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings! (AVC3 is the solution)");
        }
        if (oldPpsSameId == null) {
            this.pictureParameterRangeMap.put((RangeStartMap<Integer, byte[]>) Integer.valueOf(this.samples.size()), (Integer) ppsBytes);
        }
        this.ppsIdToPpsBytes.put(Integer.valueOf(_pictureParameterSet.pic_parameter_set_id), ppsBytes);
        this.ppsIdToPps.put(Integer.valueOf(_pictureParameterSet.pic_parameter_set_id), _pictureParameterSet);
    }

    private void handleSPS(ByteBuffer data) throws IOException {
        InputStream spsInputStream = cleanBuffer(new ByteBufferBackedInputStream(data));
        spsInputStream.read();
        SeqParameterSet _seqParameterSet = SeqParameterSet.read(spsInputStream);
        if (this.firstSeqParameterSet == null) {
            this.firstSeqParameterSet = _seqParameterSet;
            configureFramerate();
        }
        this.currentSeqParameterSet = _seqParameterSet;
        byte[] spsBytes = toArray((ByteBuffer) data.rewind());
        byte[] oldSpsSameId = this.spsIdToSpsBytes.get(Integer.valueOf(_seqParameterSet.seq_parameter_set_id));
        if (oldSpsSameId != null && !Arrays.equals(oldSpsSameId, spsBytes)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings!");
        }
        if (oldSpsSameId != null) {
            this.seqParameterRangeMap.put((RangeStartMap<Integer, byte[]>) Integer.valueOf(this.samples.size()), (Integer) spsBytes);
        }
        this.spsIdToSpsBytes.put(Integer.valueOf(_seqParameterSet.seq_parameter_set_id), spsBytes);
        this.spsIdToSps.put(Integer.valueOf(_seqParameterSet.seq_parameter_set_id), _seqParameterSet);
    }

    private void configureFramerate() {
        if (this.determineFrameRate) {
            if (this.firstSeqParameterSet.vuiParams != null) {
                this.timescale = this.firstSeqParameterSet.vuiParams.time_scale >> 1;
                this.frametick = this.firstSeqParameterSet.vuiParams.num_units_in_tick;
                if (this.timescale == 0 || this.frametick == 0) {
                    LOG.warning("vuiParams contain invalid values: time_scale: " + this.timescale + " and frame_tick: " + this.frametick + ". Setting frame rate to 25fps");
                    this.timescale = 90000L;
                    this.frametick = 3600;
                }
                if (this.timescale / this.frametick > 100) {
                    LOG.warning("Framerate is " + (this.timescale / this.frametick) + ". That is suspicious.");
                    return;
                }
                return;
            }
            LOG.warning("Can't determine frame rate. Guessing 25 fps");
            this.timescale = 90000L;
            this.frametick = 3600;
        }
    }

    /* loaded from: classes2.dex */
    public class ByteBufferBackedInputStream extends InputStream {
        private final ByteBuffer buf;

        public ByteBufferBackedInputStream(ByteBuffer buf) {
            this.buf = buf.duplicate();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (!this.buf.hasRemaining()) {
                return -1;
            }
            return this.buf.get() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bytes, int off, int len) throws IOException {
            if (!this.buf.hasRemaining()) {
                return -1;
            }
            int len2 = Math.min(len, this.buf.remaining());
            this.buf.get(bytes, off, len2);
            return len2;
        }
    }

    /* loaded from: classes2.dex */
    public class SEIMessage {
        boolean clock_timestamp_flag;
        int cnt_dropped_flag;
        int counting_type;
        int cpb_removal_delay;
        int ct_type;
        int discontinuity_flag;
        int dpb_removal_delay;
        int full_timestamp_flag;
        int hours_value;
        int minutes_value;
        int n_frames;
        int nuit_field_based_flag;
        int payloadSize;
        int payloadType;
        int pic_struct;
        boolean removal_delay_flag;
        int seconds_value;
        SeqParameterSet sps;
        int time_offset;
        int time_offset_length;

        public SEIMessage(InputStream is, SeqParameterSet sps) throws IOException {
            int numClockTS;
            this.payloadType = 0;
            this.payloadSize = 0;
            this.sps = sps;
            is.read();
            int datasize = is.available();
            int read = 0;
            while (read < datasize) {
                this.payloadType = 0;
                this.payloadSize = 0;
                int last_payload_type_bytes = is.read();
                while (true) {
                    read++;
                    if (last_payload_type_bytes == 255) {
                        this.payloadType += last_payload_type_bytes;
                        last_payload_type_bytes = is.read();
                    } else {
                        this.payloadType += last_payload_type_bytes;
                        int last_payload_size_bytes = is.read();
                        while (true) {
                            read++;
                            if (last_payload_size_bytes == 255) {
                                this.payloadSize += last_payload_size_bytes;
                                last_payload_size_bytes = is.read();
                            } else {
                                this.payloadSize += last_payload_size_bytes;
                                if (datasize - read >= this.payloadSize) {
                                    if (this.payloadType == 1) {
                                        if (sps.vuiParams != null && (sps.vuiParams.nalHRDParams != null || sps.vuiParams.vclHRDParams != null || sps.vuiParams.pic_struct_present_flag)) {
                                            byte[] data = new byte[this.payloadSize];
                                            is.read(data);
                                            read += this.payloadSize;
                                            CAVLCReader reader = new CAVLCReader(new ByteArrayInputStream(data));
                                            if (sps.vuiParams.nalHRDParams != null || sps.vuiParams.vclHRDParams != null) {
                                                this.removal_delay_flag = true;
                                                this.cpb_removal_delay = reader.readU(sps.vuiParams.nalHRDParams.cpb_removal_delay_length_minus1 + 1, "SEI: cpb_removal_delay");
                                                this.dpb_removal_delay = reader.readU(sps.vuiParams.nalHRDParams.dpb_output_delay_length_minus1 + 1, "SEI: dpb_removal_delay");
                                            } else {
                                                this.removal_delay_flag = false;
                                            }
                                            if (sps.vuiParams.pic_struct_present_flag) {
                                                this.pic_struct = reader.readU(4, "SEI: pic_struct");
                                                switch (this.pic_struct) {
                                                    case 3:
                                                    case 4:
                                                    case 7:
                                                        numClockTS = 2;
                                                        break;
                                                    case 5:
                                                    case 6:
                                                    case 8:
                                                        numClockTS = 3;
                                                        break;
                                                    default:
                                                        numClockTS = 1;
                                                        break;
                                                }
                                                for (int i = 0; i < numClockTS; i++) {
                                                    this.clock_timestamp_flag = reader.readBool("pic_timing SEI: clock_timestamp_flag[" + i + "]");
                                                    if (this.clock_timestamp_flag) {
                                                        this.ct_type = reader.readU(2, "pic_timing SEI: ct_type");
                                                        this.nuit_field_based_flag = reader.readU(1, "pic_timing SEI: nuit_field_based_flag");
                                                        this.counting_type = reader.readU(5, "pic_timing SEI: counting_type");
                                                        this.full_timestamp_flag = reader.readU(1, "pic_timing SEI: full_timestamp_flag");
                                                        this.discontinuity_flag = reader.readU(1, "pic_timing SEI: discontinuity_flag");
                                                        this.cnt_dropped_flag = reader.readU(1, "pic_timing SEI: cnt_dropped_flag");
                                                        this.n_frames = reader.readU(8, "pic_timing SEI: n_frames");
                                                        if (this.full_timestamp_flag == 1) {
                                                            this.seconds_value = reader.readU(6, "pic_timing SEI: seconds_value");
                                                            this.minutes_value = reader.readU(6, "pic_timing SEI: minutes_value");
                                                            this.hours_value = reader.readU(5, "pic_timing SEI: hours_value");
                                                        } else if (reader.readBool("pic_timing SEI: seconds_flag")) {
                                                            this.seconds_value = reader.readU(6, "pic_timing SEI: seconds_value");
                                                            if (reader.readBool("pic_timing SEI: minutes_flag")) {
                                                                this.minutes_value = reader.readU(6, "pic_timing SEI: minutes_value");
                                                                if (reader.readBool("pic_timing SEI: hours_flag")) {
                                                                    this.hours_value = reader.readU(5, "pic_timing SEI: hours_value");
                                                                }
                                                            }
                                                        }
                                                        if (sps.vuiParams.nalHRDParams != null) {
                                                            this.time_offset_length = sps.vuiParams.nalHRDParams.time_offset_length;
                                                        } else if (sps.vuiParams.vclHRDParams != null) {
                                                            this.time_offset_length = sps.vuiParams.vclHRDParams.time_offset_length;
                                                        } else {
                                                            this.time_offset_length = 24;
                                                        }
                                                        this.time_offset = reader.readU(24, "pic_timing SEI: time_offset");
                                                    }
                                                }
                                            }
                                        } else {
                                            for (int i2 = 0; i2 < this.payloadSize; i2++) {
                                                is.read();
                                                read++;
                                            }
                                        }
                                    } else {
                                        for (int i3 = 0; i3 < this.payloadSize; i3++) {
                                            is.read();
                                            read++;
                                        }
                                    }
                                } else {
                                    read = datasize;
                                }
                                H264TrackImpl.LOG.fine(toString());
                            }
                        }
                    }
                }
            }
        }

        public String toString() {
            String out = "SEIMessage{payloadType=" + this.payloadType + ", payloadSize=" + this.payloadSize;
            if (this.payloadType == 1) {
                if (this.sps.vuiParams.nalHRDParams != null || this.sps.vuiParams.vclHRDParams != null) {
                    out = String.valueOf(out) + ", cpb_removal_delay=" + this.cpb_removal_delay + ", dpb_removal_delay=" + this.dpb_removal_delay;
                }
                if (this.sps.vuiParams.pic_struct_present_flag) {
                    out = String.valueOf(out) + ", pic_struct=" + this.pic_struct;
                    if (this.clock_timestamp_flag) {
                        out = String.valueOf(out) + ", ct_type=" + this.ct_type + ", nuit_field_based_flag=" + this.nuit_field_based_flag + ", counting_type=" + this.counting_type + ", full_timestamp_flag=" + this.full_timestamp_flag + ", discontinuity_flag=" + this.discontinuity_flag + ", cnt_dropped_flag=" + this.cnt_dropped_flag + ", n_frames=" + this.n_frames + ", seconds_value=" + this.seconds_value + ", minutes_value=" + this.minutes_value + ", hours_value=" + this.hours_value + ", time_offset_length=" + this.time_offset_length + ", time_offset=" + this.time_offset;
                    }
                }
            }
            return String.valueOf(out) + CoreConstants.CURLY_RIGHT;
        }
    }
}
