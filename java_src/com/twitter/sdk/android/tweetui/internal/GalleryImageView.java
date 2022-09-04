package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Target;
import com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener;
/* loaded from: classes2.dex */
public class GalleryImageView extends FrameLayout implements Target {
    final MultiTouchImageView imageView;
    final ProgressBar progressBar;

    public GalleryImageView(Context context) {
        this(context, new MultiTouchImageView(context), new ProgressBar(context));
    }

    GalleryImageView(Context context, MultiTouchImageView imageView, ProgressBar progressBar) {
        super(context);
        this.imageView = imageView;
        this.progressBar = progressBar;
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(-2, -2, 17);
        progressBar.setLayoutParams(params);
        addView(progressBar);
        FrameLayout.LayoutParams params2 = new FrameLayout.LayoutParams(-1, -1, 17);
        imageView.setLayoutParams(params2);
        addView(imageView);
    }

    public void setSwipeToDismissCallback(SwipeToDismissTouchListener.Callback callback) {
        View.OnTouchListener listener = SwipeToDismissTouchListener.createFromView(this.imageView, callback);
        this.imageView.setOnTouchListener(listener);
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapLoaded(Bitmap bitmap, Picasso.LoadedFrom from) {
        this.imageView.setImageBitmap(bitmap);
        this.progressBar.setVisibility(8);
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapFailed(Drawable errorDrawable) {
    }

    @Override // com.squareup.picasso.Target
    public void onPrepareLoad(Drawable placeHolderDrawable) {
        this.imageView.setImageResource(17170445);
        this.progressBar.setVisibility(0);
    }
}
