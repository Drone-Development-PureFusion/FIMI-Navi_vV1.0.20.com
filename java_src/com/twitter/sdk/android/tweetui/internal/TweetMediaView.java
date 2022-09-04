package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.p001v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.IntentUtils;
import com.twitter.sdk.android.core.internal.VineCardUtils;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.ImageValue;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.VideoInfo;
import com.twitter.sdk.android.tweetui.C2168R;
import com.twitter.sdk.android.tweetui.GalleryActivity;
import com.twitter.sdk.android.tweetui.PlayerActivity;
import com.twitter.sdk.android.tweetui.TweetMediaClickListener;
import com.twitter.sdk.android.tweetui.TweetUi;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes2.dex */
public class TweetMediaView extends ViewGroup implements View.OnClickListener {
    static final int MAX_IMAGE_VIEW_COUNT = 4;
    static final String SIZED_IMAGE_SMALL = ":small";
    final DependencyProvider dependencyProvider;
    private int imageCount;
    private final OverlayImageView[] imageViews;
    boolean internalRoundedCornersEnabled;
    int mediaBgColor;
    private final int mediaDividerSize;
    private List<MediaEntity> mediaEntities;
    private final Path path;
    int photoErrorResId;
    final float[] radii;
    private final RectF rect;
    Tweet tweet;
    TweetMediaClickListener tweetMediaClickListener;

    public TweetMediaView(Context context) {
        this(context, null);
    }

    public TweetMediaView(Context context, AttributeSet attrs) {
        this(context, attrs, new DependencyProvider());
    }

    TweetMediaView(Context context, AttributeSet attrs, DependencyProvider dependencyProvider) {
        super(context, attrs);
        this.imageViews = new OverlayImageView[4];
        this.mediaEntities = Collections.emptyList();
        this.path = new Path();
        this.rect = new RectF();
        this.radii = new float[8];
        this.mediaBgColor = ViewCompat.MEASURED_STATE_MASK;
        this.dependencyProvider = dependencyProvider;
        this.mediaDividerSize = getResources().getDimensionPixelSize(C2168R.dimen.tw__media_view_divider_size);
        this.photoErrorResId = C2168R.C2171drawable.tw__ic_tweet_photo_error_dark;
    }

    public void setRoundedCornersRadii(int topLeft, int topRight, int bottomRight, int bottomLeft) {
        this.radii[0] = topLeft;
        this.radii[1] = topLeft;
        this.radii[2] = topRight;
        this.radii[3] = topRight;
        this.radii[4] = bottomRight;
        this.radii[5] = bottomRight;
        this.radii[6] = bottomLeft;
        this.radii[7] = bottomLeft;
        requestLayout();
    }

    public void setMediaBgColor(int mediaBgColor) {
        this.mediaBgColor = mediaBgColor;
    }

    public void setTweetMediaClickListener(TweetMediaClickListener tweetMediaClickListener) {
        this.tweetMediaClickListener = tweetMediaClickListener;
    }

    public void setPhotoErrorResId(int photoErrorResId) {
        this.photoErrorResId = photoErrorResId;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (this.imageCount > 0) {
            layoutImages();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Size size;
        if (this.imageCount > 0) {
            size = measureImages(widthMeasureSpec, heightMeasureSpec);
        } else {
            size = Size.EMPTY;
        }
        setMeasuredDimension(size.width, size.height);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.path.reset();
        this.rect.set(0.0f, 0.0f, w, h);
        this.path.addRoundRect(this.rect, this.radii, Path.Direction.CW);
        this.path.close();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.internalRoundedCornersEnabled && Build.VERSION.SDK_INT >= 18) {
            int saveState = canvas.save();
            canvas.clipPath(this.path);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(saveState);
            return;
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaEntity mediaEntity;
        Integer mediaEntityIndex = (Integer) view.getTag(C2168R.C2172id.tw__entity_index);
        if (this.tweetMediaClickListener != null) {
            if (!this.mediaEntities.isEmpty()) {
                mediaEntity = this.mediaEntities.get(mediaEntityIndex.intValue());
            } else {
                mediaEntity = null;
            }
            this.tweetMediaClickListener.onMediaEntityClick(this.tweet, mediaEntity);
        } else if (!this.mediaEntities.isEmpty()) {
            MediaEntity mediaEntity2 = this.mediaEntities.get(mediaEntityIndex.intValue());
            if (TweetMediaUtils.isVideoType(mediaEntity2)) {
                launchVideoPlayer(mediaEntity2);
            } else if (TweetMediaUtils.isPhotoType(mediaEntity2)) {
                launchPhotoGallery(mediaEntityIndex.intValue());
            }
        } else {
            launchVideoPlayer(this.tweet);
        }
    }

    public void launchVideoPlayer(MediaEntity entity) {
        VideoInfo.Variant variant = TweetMediaUtils.getSupportedVariant(entity);
        if (variant != null) {
            Intent intent = new Intent(getContext(), PlayerActivity.class);
            boolean looping = TweetMediaUtils.isLooping(entity);
            boolean showControls = TweetMediaUtils.showVideoControls(entity);
            String url = TweetMediaUtils.getSupportedVariant(entity).url;
            PlayerActivity.PlayerItem item = new PlayerActivity.PlayerItem(url, looping, showControls, null, null);
            intent.putExtra(PlayerActivity.PLAYER_ITEM, item);
            IntentUtils.safeStartActivity(getContext(), intent);
        }
    }

    public void launchVideoPlayer(Tweet tweet) {
        Card card = tweet.card;
        Intent intent = new Intent(getContext(), PlayerActivity.class);
        String playerStreamUrl = VineCardUtils.getStreamUrl(card);
        PlayerActivity.PlayerItem playerItem = new PlayerActivity.PlayerItem(playerStreamUrl, true, false, null, null);
        intent.putExtra(PlayerActivity.PLAYER_ITEM, playerItem);
        ScribeItem scribeItem = ScribeItem.fromTweetCard(tweet.f312id, card);
        intent.putExtra(PlayerActivity.SCRIBE_ITEM, scribeItem);
        IntentUtils.safeStartActivity(getContext(), intent);
    }

    public void launchPhotoGallery(int mediaEntityIndex) {
        Intent intent = new Intent(getContext(), GalleryActivity.class);
        GalleryActivity.GalleryItem item = new GalleryActivity.GalleryItem(this.tweet.f312id, mediaEntityIndex, this.mediaEntities);
        intent.putExtra(GalleryActivity.GALLERY_ITEM, item);
        IntentUtils.safeStartActivity(getContext(), intent);
    }

    public void setTweetMediaEntities(Tweet tweet, List<MediaEntity> mediaEntities) {
        if (tweet != null && mediaEntities != null && !mediaEntities.isEmpty() && !mediaEntities.equals(this.mediaEntities)) {
            this.tweet = tweet;
            this.mediaEntities = mediaEntities;
            clearImageViews();
            initializeImageViews(mediaEntities);
            if (TweetMediaUtils.isPhotoType(mediaEntities.get(0))) {
                this.internalRoundedCornersEnabled = true;
            } else {
                this.internalRoundedCornersEnabled = false;
            }
            requestLayout();
        }
    }

    public void setVineCard(Tweet tweet) {
        if (tweet != null && tweet.card != null && VineCardUtils.isVine(tweet.card)) {
            this.tweet = tweet;
            this.mediaEntities = Collections.emptyList();
            clearImageViews();
            initializeImageViews(tweet.card);
            this.internalRoundedCornersEnabled = false;
            requestLayout();
        }
    }

    Size measureImages(int widthMeasureSpec, int heightMeasureSpec) {
        int width = View.MeasureSpec.getSize(widthMeasureSpec);
        int height = View.MeasureSpec.getSize(heightMeasureSpec);
        int halfWidth = (width - this.mediaDividerSize) / 2;
        int halfHeight = (height - this.mediaDividerSize) / 2;
        switch (this.imageCount) {
            case 1:
                measureImageView(0, width, height);
                break;
            case 2:
                measureImageView(0, halfWidth, height);
                measureImageView(1, halfWidth, height);
                break;
            case 3:
                measureImageView(0, halfWidth, height);
                measureImageView(1, halfWidth, halfHeight);
                measureImageView(2, halfWidth, halfHeight);
                break;
            case 4:
                measureImageView(0, halfWidth, halfHeight);
                measureImageView(1, halfWidth, halfHeight);
                measureImageView(2, halfWidth, halfHeight);
                measureImageView(3, halfWidth, halfHeight);
                break;
        }
        return Size.fromSize(width, height);
    }

    void measureImageView(int i, int width, int height) {
        this.imageViews[i].measure(View.MeasureSpec.makeMeasureSpec(width, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE), View.MeasureSpec.makeMeasureSpec(height, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE));
    }

    void layoutImages() {
        int width = getMeasuredWidth();
        int height = getMeasuredHeight();
        int halfWidth = (width - this.mediaDividerSize) / 2;
        int halfHeight = (height - this.mediaDividerSize) / 2;
        int middle = halfWidth + this.mediaDividerSize;
        switch (this.imageCount) {
            case 1:
                layoutImage(0, 0, 0, width, height);
                return;
            case 2:
                layoutImage(0, 0, 0, halfWidth, height);
                layoutImage(1, halfWidth + this.mediaDividerSize, 0, width, height);
                return;
            case 3:
                layoutImage(0, 0, 0, halfWidth, height);
                layoutImage(1, middle, 0, width, halfHeight);
                layoutImage(2, middle, halfHeight + this.mediaDividerSize, width, height);
                return;
            case 4:
                layoutImage(0, 0, 0, halfWidth, halfHeight);
                layoutImage(2, 0, halfHeight + this.mediaDividerSize, halfWidth, height);
                layoutImage(1, middle, 0, width, halfHeight);
                layoutImage(3, middle, halfHeight + this.mediaDividerSize, width, height);
                return;
            default:
                return;
        }
    }

    void layoutImage(int i, int left, int top, int right, int bottom) {
        ImageView view = this.imageViews[i];
        if (view.getLeft() != left || view.getTop() != top || view.getRight() != right || view.getBottom() != bottom) {
            view.layout(left, top, right, bottom);
        }
    }

    void clearImageViews() {
        for (int index = 0; index < this.imageCount; index++) {
            ImageView imageView = this.imageViews[index];
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        }
        this.imageCount = 0;
    }

    void initializeImageViews(List<MediaEntity> mediaEntities) {
        this.imageCount = Math.min(4, mediaEntities.size());
        for (int index = 0; index < this.imageCount; index++) {
            OverlayImageView imageView = getOrCreateImageView(index);
            MediaEntity mediaEntity = mediaEntities.get(index);
            setAltText(imageView, mediaEntity.altText);
            setMediaImage(imageView, getSizedImagePath(mediaEntity));
            setOverlayImage(imageView, TweetMediaUtils.isVideoType(mediaEntity));
        }
    }

    void initializeImageViews(Card card) {
        this.imageCount = 1;
        OverlayImageView imageView = getOrCreateImageView(0);
        ImageValue imageValue = VineCardUtils.getImageValue(card);
        setAltText(imageView, imageValue.alt);
        setMediaImage(imageView, imageValue.url);
        setOverlayImage(imageView, true);
    }

    OverlayImageView getOrCreateImageView(int index) {
        OverlayImageView imageView = this.imageViews[index];
        if (imageView == null) {
            imageView = new OverlayImageView(getContext());
            imageView.setLayoutParams(generateDefaultLayoutParams());
            imageView.setOnClickListener(this);
            this.imageViews[index] = imageView;
            addView(imageView, index);
        } else {
            measureImageView(index, 0, 0);
            layoutImage(index, 0, 0, 0, 0);
        }
        imageView.setVisibility(0);
        imageView.setBackgroundColor(this.mediaBgColor);
        imageView.setTag(C2168R.C2172id.tw__entity_index, Integer.valueOf(index));
        return imageView;
    }

    String getSizedImagePath(MediaEntity mediaEntity) {
        return this.imageCount > 1 ? mediaEntity.mediaUrlHttps + SIZED_IMAGE_SMALL : mediaEntity.mediaUrlHttps;
    }

    void setAltText(ImageView imageView, String description) {
        if (!TextUtils.isEmpty(description)) {
            imageView.setContentDescription(description);
        } else {
            imageView.setContentDescription(getResources().getString(C2168R.string.tw__tweet_media));
        }
    }

    void setOverlayImage(OverlayImageView imageView, boolean isVideo) {
        if (isVideo) {
            imageView.setOverlayDrawable(getContext().getResources().getDrawable(C2168R.C2171drawable.tw__player_overlay));
        } else {
            imageView.setOverlayDrawable(null);
        }
    }

    void setMediaImage(ImageView imageView, String imagePath) {
        Picasso imageLoader = this.dependencyProvider.getImageLoader();
        if (imageLoader != null) {
            imageLoader.load(imagePath).fit().centerCrop().error(this.photoErrorResId).into(imageView, new PicassoCallback(imageView));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class PicassoCallback implements Callback {
        final WeakReference<ImageView> imageViewWeakReference;

        PicassoCallback(ImageView imageView) {
            this.imageViewWeakReference = new WeakReference<>(imageView);
        }

        @Override // com.squareup.picasso.Callback
        public void onSuccess() {
            ImageView imageView = this.imageViewWeakReference.get();
            if (imageView != null) {
                imageView.setBackgroundResource(17170445);
            }
        }

        @Override // com.squareup.picasso.Callback
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Size {
        static final Size EMPTY = new Size();
        final int height;
        final int width;

        private Size() {
            this(0, 0);
        }

        private Size(int width, int height) {
            this.width = width;
            this.height = height;
        }

        static Size fromSize(int w, int h) {
            int boundedWidth = Math.max(w, 0);
            int boundedHeight = Math.max(h, 0);
            return (boundedWidth == 0 && boundedHeight == 0) ? EMPTY : new Size(boundedWidth, boundedHeight);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DependencyProvider {
        DependencyProvider() {
        }

        Picasso getImageLoader() {
            return TweetUi.getInstance().getImageLoader();
        }
    }
}
