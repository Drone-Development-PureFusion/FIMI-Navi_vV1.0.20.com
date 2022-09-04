package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.interfaces.DraweeController;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.image.ImageInfo;
/* loaded from: classes2.dex */
public class PhotoDraweeView extends SimpleDraweeView implements IAttacher {
    private Attacher mAttacher;
    private boolean mEnableDraweeMatrix = true;

    public PhotoDraweeView(Context context, GenericDraweeHierarchy hierarchy) {
        super(context, hierarchy);
        init();
    }

    public PhotoDraweeView(Context context) {
        super(context);
        init();
    }

    public PhotoDraweeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public PhotoDraweeView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init();
    }

    protected void init() {
        if (this.mAttacher == null || this.mAttacher.getDraweeView() == null) {
            this.mAttacher = new Attacher(this);
        }
    }

    public Attacher getAttacher() {
        return this.mAttacher;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return super.onTouchEvent(event);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        int saveCount = canvas.save();
        if (this.mEnableDraweeMatrix) {
            canvas.concat(this.mAttacher.getDrawMatrix());
        }
        super.onDraw(canvas);
        canvas.restoreToCount(saveCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        init();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.mAttacher.onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMinimumScale() {
        return this.mAttacher.getMinimumScale();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMediumScale() {
        return this.mAttacher.getMediumScale();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMaximumScale() {
        return this.mAttacher.getMaximumScale();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMinimumScale(float minimumScale) {
        this.mAttacher.setMinimumScale(minimumScale);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMediumScale(float mediumScale) {
        this.mAttacher.setMediumScale(mediumScale);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMaximumScale(float maximumScale) {
        this.mAttacher.setMaximumScale(maximumScale);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getScale() {
        return this.mAttacher.getScale();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale) {
        this.mAttacher.setScale(scale);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale, boolean animate) {
        this.mAttacher.setScale(scale, animate);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale, float focalX, float focalY, boolean animate) {
        this.mAttacher.setScale(scale, focalX, focalY, animate);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOrientation(int orientation) {
        this.mAttacher.setOrientation(orientation);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setZoomTransitionDuration(long duration) {
        this.mAttacher.setZoomTransitionDuration(duration);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setAllowParentInterceptOnEdge(boolean allow) {
        this.mAttacher.setAllowParentInterceptOnEdge(allow);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener listener) {
        this.mAttacher.setOnDoubleTapListener(listener);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnScaleChangeListener(OnScaleChangeListener listener) {
        this.mAttacher.setOnScaleChangeListener(listener);
    }

    @Override // android.view.View, me.relex.photodraweeview.IAttacher
    public void setOnLongClickListener(View.OnLongClickListener listener) {
        this.mAttacher.setOnLongClickListener(listener);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnPhotoTapListener(OnPhotoTapListener listener) {
        this.mAttacher.setOnPhotoTapListener(listener);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnViewTapListener(OnViewTapListener listener) {
        this.mAttacher.setOnViewTapListener(listener);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mAttacher.getOnPhotoTapListener();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public OnViewTapListener getOnViewTapListener() {
        return this.mAttacher.getOnViewTapListener();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void update(int imageInfoWidth, int imageInfoHeight) {
        this.mAttacher.update(imageInfoWidth, imageInfoHeight);
    }

    public boolean isEnableDraweeMatrix() {
        return this.mEnableDraweeMatrix;
    }

    public void setEnableDraweeMatrix(boolean enableDraweeMatrix) {
        this.mEnableDraweeMatrix = enableDraweeMatrix;
    }

    public void setPhotoUri(Uri uri) {
        setPhotoUri(uri, null);
    }

    public void setPhotoUri(Uri uri, @Nullable Context context) {
        this.mEnableDraweeMatrix = false;
        DraweeController controller = Fresco.newDraweeControllerBuilder().setCallerContext((Object) context).mo1658setUri(uri).setOldController(getController()).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: me.relex.photodraweeview.PhotoDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFailure(String id, Throwable throwable) {
                super.onFailure(id, throwable);
                PhotoDraweeView.this.mEnableDraweeMatrix = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String id, ImageInfo imageInfo, Animatable animatable) {
                super.onFinalImageSet(id, (String) imageInfo, animatable);
                PhotoDraweeView.this.mEnableDraweeMatrix = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.update(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onIntermediateImageFailed(String id, Throwable throwable) {
                super.onIntermediateImageFailed(id, throwable);
                PhotoDraweeView.this.mEnableDraweeMatrix = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onIntermediateImageSet(String id, ImageInfo imageInfo) {
                super.onIntermediateImageSet(id, (String) imageInfo);
                PhotoDraweeView.this.mEnableDraweeMatrix = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.update(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }
        }).build();
        setController(controller);
    }
}
