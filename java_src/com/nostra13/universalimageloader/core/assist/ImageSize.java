package com.nostra13.universalimageloader.core.assist;
/* loaded from: classes2.dex */
public class ImageSize {
    private static final String SEPARATOR = "x";
    private static final int TO_STRING_MAX_LENGHT = 9;
    private final int height;
    private final int width;

    public ImageSize(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public ImageSize(int width, int height, int rotation) {
        if (rotation % 180 == 0) {
            this.width = width;
            this.height = height;
            return;
        }
        this.width = height;
        this.height = width;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public ImageSize scaleDown(int sampleSize) {
        return new ImageSize(this.width / sampleSize, this.height / sampleSize);
    }

    public ImageSize scale(float scale) {
        return new ImageSize((int) (this.width * scale), (int) (this.height * scale));
    }

    public String toString() {
        return new StringBuilder(9).append(this.width).append(SEPARATOR).append(this.height).toString();
    }
}
