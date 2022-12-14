package com.facebook.imagepipeline.image;
/* loaded from: classes.dex */
public class ImmutableQualityInfo implements QualityInfo {
    public static final QualityInfo FULL_QUALITY = m1332of(Integer.MAX_VALUE, true, true);
    boolean mIsOfFullQuality;
    boolean mIsOfGoodEnoughQuality;
    int mQuality;

    private ImmutableQualityInfo(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        this.mQuality = quality;
        this.mIsOfGoodEnoughQuality = isOfGoodEnoughQuality;
        this.mIsOfFullQuality = isOfFullQuality;
    }

    @Override // com.facebook.imagepipeline.image.QualityInfo
    public int getQuality() {
        return this.mQuality;
    }

    @Override // com.facebook.imagepipeline.image.QualityInfo
    public boolean isOfGoodEnoughQuality() {
        return this.mIsOfGoodEnoughQuality;
    }

    @Override // com.facebook.imagepipeline.image.QualityInfo
    public boolean isOfFullQuality() {
        return this.mIsOfFullQuality;
    }

    public int hashCode() {
        int i = 0;
        int i2 = (this.mIsOfGoodEnoughQuality ? 4194304 : 0) ^ this.mQuality;
        if (this.mIsOfFullQuality) {
            i = 8388608;
        }
        return i2 ^ i;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ImmutableQualityInfo)) {
            return false;
        }
        ImmutableQualityInfo that = (ImmutableQualityInfo) other;
        return this.mQuality == that.mQuality && this.mIsOfGoodEnoughQuality == that.mIsOfGoodEnoughQuality && this.mIsOfFullQuality == that.mIsOfFullQuality;
    }

    /* renamed from: of */
    public static QualityInfo m1332of(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        return new ImmutableQualityInfo(quality, isOfGoodEnoughQuality, isOfFullQuality);
    }
}
