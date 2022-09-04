package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.sdk.android.core.internal.VineCardUtils;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.C2168R;
/* loaded from: classes2.dex */
public class MediaBadgeView extends FrameLayout {
    ImageView badge;
    TextView videoDuration;

    public MediaBadgeView(Context context) {
        this(context, null);
    }

    public MediaBadgeView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MediaBadgeView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initSubViews(context);
    }

    void initSubViews(Context context) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        View view = inflater.inflate(C2168R.layout.tw__media_badge, (ViewGroup) this, true);
        this.videoDuration = (TextView) view.findViewById(C2168R.C2172id.tw__video_duration);
        this.badge = (ImageView) view.findViewById(C2168R.C2172id.tw__gif_badge);
    }

    public void setMediaEntity(MediaEntity entity) {
        if ("animated_gif".equals(entity.type)) {
            setBadge(getResources().getDrawable(C2168R.C2171drawable.tw__gif_badge));
        } else if ("video".equals(entity.type)) {
            long duration = entity.videoInfo == null ? 0L : entity.videoInfo.durationMillis;
            setText(duration);
        } else {
            setEmpty();
        }
    }

    public void setCard(Card card) {
        if (VineCardUtils.isVine(card)) {
            setBadge(getResources().getDrawable(C2168R.C2171drawable.tw__vine_badge));
        } else {
            setEmpty();
        }
    }

    void setText(long duration) {
        this.videoDuration.setVisibility(0);
        this.badge.setVisibility(8);
        this.videoDuration.setText(MediaTimeUtils.getPlaybackTime(duration));
    }

    void setBadge(Drawable drawable) {
        this.badge.setVisibility(0);
        this.videoDuration.setVisibility(8);
        this.badge.setImageDrawable(drawable);
    }

    void setEmpty() {
        this.videoDuration.setVisibility(8);
        this.badge.setVisibility(8);
    }
}
