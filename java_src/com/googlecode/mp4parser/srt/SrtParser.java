package com.googlecode.mp4parser.srt;

import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.googlecode.mp4parser.authoring.tracks.TextTrackImpl;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
/* loaded from: classes2.dex */
public class SrtParser {
    public static TextTrackImpl parse(InputStream is) throws IOException {
        LineNumberReader r = new LineNumberReader(new InputStreamReader(is, SocketOption.DEFAULT_CHARSET));
        TextTrackImpl track = new TextTrackImpl();
        while (r.readLine() != null) {
            String timeString = r.readLine();
            String lineString = "";
            while (true) {
                String s = r.readLine();
                if (s != null && !s.trim().equals("")) {
                    lineString = String.valueOf(lineString) + s + IOUtils.LINE_SEPARATOR_UNIX;
                }
            }
            long startTime = parse(timeString.split("-->")[0]);
            long endTime = parse(timeString.split("-->")[1]);
            track.getSubs().add(new TextTrackImpl.Line(startTime, endTime, lineString));
        }
        return track;
    }

    private static long parse(String in) {
        long hours = Long.parseLong(in.split(":")[0].trim());
        long minutes = Long.parseLong(in.split(":")[1].trim());
        long seconds = Long.parseLong(in.split(":")[2].split(",")[0].trim());
        long millies = Long.parseLong(in.split(":")[2].split(",")[1].trim());
        return (60 * hours * 60 * 1000) + (60 * minutes * 1000) + (1000 * seconds) + millies;
    }
}
