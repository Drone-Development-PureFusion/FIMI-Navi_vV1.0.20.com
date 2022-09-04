package com.googlecode.mp4parser.authoring.tracks.webvtt;

import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.authoring.tracks.webvtt.sampleboxes.VTTEmptyCueBox;
import com.googlecode.mp4parser.util.ByteBufferByteChannel;
import com.googlecode.mp4parser.util.CastUtils;
import com.mp4parser.iso14496.part30.WebVTTConfigurationBox;
import com.mp4parser.iso14496.part30.WebVTTSampleEntry;
import com.mp4parser.iso14496.part30.WebVTTSourceLabelBox;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class WebVttTrack extends AbstractTrack {
    long[] sampleDurations;
    private static final String WEBVTT_FILE_HEADER_STRING = "^\ufeff?WEBVTT((\\u0020|\t).*)?$";
    private static final Pattern WEBVTT_FILE_HEADER = Pattern.compile(WEBVTT_FILE_HEADER_STRING);
    private static final String WEBVTT_METADATA_HEADER_STRING = "\\S*[:=]\\S*";
    private static final Pattern WEBVTT_METADATA_HEADER = Pattern.compile(WEBVTT_METADATA_HEADER_STRING);
    private static final String WEBVTT_CUE_IDENTIFIER_STRING = "^(?!.*(-->)).*$";
    private static final Pattern WEBVTT_CUE_IDENTIFIER = Pattern.compile(WEBVTT_CUE_IDENTIFIER_STRING);
    private static final String WEBVTT_TIMESTAMP_STRING = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}";
    private static final Pattern WEBVTT_TIMESTAMP = Pattern.compile(WEBVTT_TIMESTAMP_STRING);
    private static final String WEBVTT_CUE_SETTING_STRING = "\\S*:\\S*";
    private static final Pattern WEBVTT_CUE_SETTING = Pattern.compile(WEBVTT_CUE_SETTING_STRING);
    private static final Sample EMPTY_SAMPLE = new Sample() { // from class: com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.1
        ByteBuffer vtte;

        {
            VTTEmptyCueBox vttEmptyCueBox = new VTTEmptyCueBox();
            this.vtte = ByteBuffer.allocate(CastUtils.l2i(vttEmptyCueBox.getSize()));
            try {
                vttEmptyCueBox.getBox(new ByteBufferByteChannel(this.vtte));
                this.vtte.rewind();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public void writeTo(WritableByteChannel channel) throws IOException {
            channel.write(this.vtte.duplicate());
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public long getSize() {
            return this.vtte.remaining();
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public ByteBuffer asByteBuffer() {
            return this.vtte.duplicate();
        }
    };
    TrackMetaData trackMetaData = new TrackMetaData();
    List<Sample> samples = new ArrayList();
    SampleDescriptionBox stsd = new SampleDescriptionBox();
    WebVTTSampleEntry sampleEntry = new WebVTTSampleEntry();

    /* loaded from: classes2.dex */
    private static class BoxBearingSample implements Sample {
        List<Box> boxes;

        public BoxBearingSample(List<Box> boxes) {
            this.boxes = boxes;
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public void writeTo(WritableByteChannel channel) throws IOException {
            for (Box box : this.boxes) {
                box.getBox(channel);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public long getSize() {
            long l = 0;
            for (Box box : this.boxes) {
                l += box.getSize();
            }
            return l;
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public ByteBuffer asByteBuffer() {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            try {
                writeTo(Channels.newChannel(baos));
                return ByteBuffer.wrap(baos.toByteArray());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0103, code lost:
        r9 = r19.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0107, code lost:
        if (r9 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x015e, code lost:
        if ("".equals(r9.trim()) != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x016c, code lost:
        if (com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.WEBVTT_CUE_IDENTIFIER.matcher(r9).find() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x016e, code lost:
        r9 = r19.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0172, code lost:
        r10 = com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.WEBVTT_TIMESTAMP.matcher(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x017e, code lost:
        if (r10.find() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0197, code lost:
        r16 = parseTimestampUs(r10.group());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x01a3, code lost:
        if (r10.find() != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01bc, code lost:
        r8 = r10.group();
        r6 = parseTimestampUs(r8);
        r10 = com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.WEBVTT_CUE_SETTING.matcher(r9.substring(r9.indexOf(r8) + r8.length()));
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x01e1, code lost:
        if (r10.find() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0277, code lost:
        r14 = r10.group();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01e3, code lost:
        r11 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01e8, code lost:
        r9 = r19.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01ec, code lost:
        if (r9 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01f2, code lost:
        if (r9.isEmpty() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0281, code lost:
        if (r11.length() <= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0283, code lost:
        r11.append(com.fimi.kernel.animutils.IOUtils.LINE_SEPARATOR_UNIX);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x028a, code lost:
        r11.append(r9.trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f6, code lost:
        if (r16 == r12) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01f8, code lost:
        r26.sampleDurations = com.googlecode.mp4parser.util.Mp4Arrays.copyOfAndAppend(r26.sampleDurations, r16 - r12);
        r26.samples.add(com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.EMPTY_SAMPLE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0221, code lost:
        r26.sampleDurations = com.googlecode.mp4parser.util.Mp4Arrays.copyOfAndAppend(r26.sampleDurations, r6 - r16);
        r15 = new com.googlecode.mp4parser.authoring.tracks.webvtt.sampleboxes.VTTCueBox();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0244, code lost:
        if (r14 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0246, code lost:
        r4 = new com.googlecode.mp4parser.authoring.tracks.webvtt.sampleboxes.CueSettingsBox();
        r4.setContent(r14);
        r15.setCueSettingsBox(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0251, code lost:
        r5 = new com.googlecode.mp4parser.authoring.tracks.webvtt.sampleboxes.CuePayloadBox();
        r5.setContent(r11.toString());
        r15.setCuePayloadBox(r5);
        r26.samples.add(new com.googlecode.mp4parser.authoring.tracks.webvtt.WebVttTrack.BoxBearingSample(java.util.Collections.singletonList(r15)));
        r12 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01bb, code lost:
        throw new java.io.IOException("Expected cue end time: " + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0196, code lost:
        throw new java.io.IOException("Expected cue start time: " + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0109, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WebVttTrack(InputStream is, String trackName, Locale locale) throws IOException {
        super(trackName);
        this.sampleDurations = new long[0];
        this.trackMetaData.setTimescale(1000L);
        this.trackMetaData.setLanguage(locale.getISO3Language());
        long mediaTimestampUs = 0;
        this.stsd.addBox(this.sampleEntry);
        WebVTTConfigurationBox webVttConf = new WebVTTConfigurationBox();
        this.sampleEntry.addBox(webVttConf);
        this.sampleEntry.addBox(new WebVTTSourceLabelBox());
        BufferedReader webvttData = new BufferedReader(new InputStreamReader(is, SocketOption.DEFAULT_CHARSET));
        String line = webvttData.readLine();
        if (line == null || !WEBVTT_FILE_HEADER.matcher(line).matches()) {
            throw new IOException("Expected WEBVTT. Got " + line);
        }
        webVttConf.setConfig(String.valueOf(webVttConf.getConfig()) + IOUtils.LINE_SEPARATOR_UNIX + line);
        while (true) {
            String line2 = webvttData.readLine();
            if (line2 == null) {
                throw new IOException("Expected an empty line after webvtt header");
            }
            if (line2.isEmpty()) {
                break;
            } else if (!WEBVTT_METADATA_HEADER.matcher(line2).find()) {
                throw new IOException("Expected WebVTT metadata header. Got " + line2);
            } else {
                webVttConf.setConfig(String.valueOf(webVttConf.getConfig()) + IOUtils.LINE_SEPARATOR_UNIX + line2);
            }
        }
    }

    private static long parseTimestampUs(String s) throws NumberFormatException {
        String[] split;
        if (!s.matches(WEBVTT_TIMESTAMP_STRING)) {
            throw new NumberFormatException("has invalid format");
        }
        String[] parts = s.split("\\.", 2);
        long value = 0;
        for (String group : parts[0].split(":")) {
            value = (60 * value) + Long.parseLong(group);
        }
        return (1000 * value) + Long.parseLong(parts[1]);
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return this.stsd;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public long[] getSampleDurations() {
        long[] adoptedSampleDuration = new long[this.sampleDurations.length];
        for (int i = 0; i < adoptedSampleDuration.length; i++) {
            adoptedSampleDuration[i] = (this.sampleDurations[i] * this.trackMetaData.getTimescale()) / 1000;
        }
        return adoptedSampleDuration;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public TrackMetaData getTrackMetaData() {
        return this.trackMetaData;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return "text";
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return this.samples;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }
}
