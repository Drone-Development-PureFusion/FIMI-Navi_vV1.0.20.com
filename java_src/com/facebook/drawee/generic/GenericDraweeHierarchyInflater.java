package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.C0592R;
import com.facebook.drawee.drawable.AutoRotateDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class GenericDraweeHierarchyInflater {
    public static GenericDraweeHierarchy inflateHierarchy(Context context, @Nullable AttributeSet attrs) {
        return inflateBuilder(context, attrs).build();
    }

    public static GenericDraweeHierarchyBuilder inflateBuilder(Context context, @Nullable AttributeSet attrs) {
        Resources resources = context.getResources();
        GenericDraweeHierarchyBuilder builder = new GenericDraweeHierarchyBuilder(resources);
        return updateBuilder(builder, context, attrs);
    }

    public static GenericDraweeHierarchyBuilder updateBuilder(GenericDraweeHierarchyBuilder builder, Context context, @Nullable AttributeSet attrs) {
        int progressBarAutoRotateInterval = 0;
        int roundedCornerRadius = 0;
        boolean roundTopLeft = true;
        boolean roundTopRight = true;
        boolean roundBottomLeft = true;
        boolean roundBottomRight = true;
        if (attrs != null) {
            TypedArray gdhAttrs = context.obtainStyledAttributes(attrs, C0592R.styleable.GenericDraweeHierarchy);
            try {
                int indexCount = gdhAttrs.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int attr = gdhAttrs.getIndex(i);
                    if (attr == C0592R.styleable.GenericDraweeHierarchy_actualImageScaleType) {
                        builder.setActualImageScaleType(getScaleTypeFromXml(gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_placeholderImage) {
                        builder.setPlaceholderImage(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_pressedStateOverlayImage) {
                        builder.setPressedStateOverlay(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_progressBarImage) {
                        builder.setProgressBarImage(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_fadeDuration) {
                        builder.setFadeDuration(gdhAttrs.getInt(attr, 0));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_viewAspectRatio) {
                        builder.setDesiredAspectRatio(gdhAttrs.getFloat(attr, 0.0f));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_placeholderImageScaleType) {
                        builder.setPlaceholderImageScaleType(getScaleTypeFromXml(gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_retryImage) {
                        builder.setRetryImage(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_retryImageScaleType) {
                        builder.setRetryImageScaleType(getScaleTypeFromXml(gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_failureImage) {
                        builder.setFailureImage(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_failureImageScaleType) {
                        builder.setFailureImageScaleType(getScaleTypeFromXml(gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_progressBarImageScaleType) {
                        builder.setProgressBarImageScaleType(getScaleTypeFromXml(gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                        progressBarAutoRotateInterval = gdhAttrs.getInteger(attr, progressBarAutoRotateInterval);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_backgroundImage) {
                        builder.setBackground(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_overlayImage) {
                        builder.setOverlay(getDrawable(context, gdhAttrs, attr));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundAsCircle) {
                        getRoundingParams(builder).setRoundAsCircle(gdhAttrs.getBoolean(attr, false));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundedCornerRadius) {
                        roundedCornerRadius = gdhAttrs.getDimensionPixelSize(attr, roundedCornerRadius);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundTopLeft) {
                        roundTopLeft = gdhAttrs.getBoolean(attr, roundTopLeft);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundTopRight) {
                        roundTopRight = gdhAttrs.getBoolean(attr, roundTopRight);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundBottomLeft) {
                        roundBottomLeft = gdhAttrs.getBoolean(attr, roundBottomLeft);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundBottomRight) {
                        roundBottomRight = gdhAttrs.getBoolean(attr, roundBottomRight);
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundWithOverlayColor) {
                        getRoundingParams(builder).setOverlayColor(gdhAttrs.getColor(attr, 0));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundingBorderWidth) {
                        getRoundingParams(builder).setBorderWidth(gdhAttrs.getDimensionPixelSize(attr, 0));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundingBorderColor) {
                        getRoundingParams(builder).setBorderColor(gdhAttrs.getColor(attr, 0));
                    } else if (attr == C0592R.styleable.GenericDraweeHierarchy_roundingBorderPadding) {
                        getRoundingParams(builder).setPadding(gdhAttrs.getDimensionPixelSize(attr, 0));
                    }
                }
            } finally {
                gdhAttrs.recycle();
            }
        }
        if (builder.getProgressBarImage() != null && progressBarAutoRotateInterval > 0) {
            builder.setProgressBarImage(new AutoRotateDrawable(builder.getProgressBarImage(), progressBarAutoRotateInterval));
        }
        if (roundedCornerRadius > 0) {
            getRoundingParams(builder).setCornersRadii(roundTopLeft ? roundedCornerRadius : 0.0f, roundTopRight ? roundedCornerRadius : 0.0f, roundBottomRight ? roundedCornerRadius : 0.0f, roundBottomLeft ? roundedCornerRadius : 0.0f);
        }
        return builder;
    }

    private static RoundingParams getRoundingParams(GenericDraweeHierarchyBuilder builder) {
        if (builder.getRoundingParams() == null) {
            builder.setRoundingParams(new RoundingParams());
        }
        return builder.getRoundingParams();
    }

    @Nullable
    private static Drawable getDrawable(Context context, TypedArray gdhAttrs, int attrId) {
        int resourceId = gdhAttrs.getResourceId(attrId, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static ScalingUtils.ScaleType getScaleTypeFromXml(TypedArray gdhAttrs, int attrId) {
        switch (gdhAttrs.getInt(attrId, -2)) {
            case -1:
                return null;
            case 0:
                return ScalingUtils.ScaleType.FIT_XY;
            case 1:
                return ScalingUtils.ScaleType.FIT_START;
            case 2:
                return ScalingUtils.ScaleType.FIT_CENTER;
            case 3:
                return ScalingUtils.ScaleType.FIT_END;
            case 4:
                return ScalingUtils.ScaleType.CENTER;
            case 5:
                return ScalingUtils.ScaleType.CENTER_INSIDE;
            case 6:
                return ScalingUtils.ScaleType.CENTER_CROP;
            case 7:
                return ScalingUtils.ScaleType.FOCUS_CROP;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
