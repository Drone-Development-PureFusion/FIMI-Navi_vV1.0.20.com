package com.fimi.app.x8s.tensortfloow;

import android.graphics.Bitmap;
import android.graphics.RectF;
import java.util.List;
/* loaded from: classes.dex */
public interface Classifier {
    void close();

    void enableStatLogging(boolean z);

    String getStatString();

    List<Recognition> recognizeImage(Bitmap bitmap);

    /* loaded from: classes.dex */
    public static class Recognition {
        private final Float confidence;

        /* renamed from: id */
        private final String f144id;
        private RectF location;
        private final String title;

        public Recognition(String id, String title, Float confidence, RectF location) {
            this.f144id = id;
            this.title = title;
            this.confidence = confidence;
            this.location = location;
        }

        public String getId() {
            return this.f144id;
        }

        public String getTitle() {
            return this.title;
        }

        public Float getConfidence() {
            return this.confidence;
        }

        public RectF getLocation() {
            return new RectF(this.location);
        }

        public void setLocation(RectF location) {
            this.location = location;
        }

        public String toString() {
            String resultString = "";
            if (this.f144id != null) {
                resultString = resultString + "[" + this.f144id + "] ";
            }
            if (this.title != null) {
                resultString = resultString + this.title + " ";
            }
            if (this.confidence != null) {
                resultString = resultString + String.format("(%.1f%%) ", Float.valueOf(this.confidence.floatValue() * 100.0f));
            }
            if (this.location != null) {
                resultString = resultString + this.location + " ";
            }
            return resultString.trim();
        }
    }
}
