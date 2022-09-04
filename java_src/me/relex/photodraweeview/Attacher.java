package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.p001v4.view.GestureDetectorCompat;
import android.support.p001v4.view.MotionEventCompat;
import android.support.p001v4.widget.ScrollerCompat;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.DraweeView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class Attacher implements IAttacher, View.OnTouchListener, OnScaleDragGestureListener {
    private static final int EDGE_BOTH = 2;
    private static final int EDGE_BOTTOM = 1;
    private static final int EDGE_LEFT = 0;
    private static final int EDGE_NONE = -1;
    private static final int EDGE_RIGHT = 1;
    private static final int EDGE_TOP = 0;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private FlingRunnable mCurrentFlingRunnable;
    private WeakReference<DraweeView<GenericDraweeHierarchy>> mDraweeView;
    private GestureDetectorCompat mGestureDetector;
    private View.OnLongClickListener mLongClickListener;
    private OnPhotoTapListener mPhotoTapListener;
    private OnScaleChangeListener mScaleChangeListener;
    private ScaleDragDetector mScaleDragDetector;
    private OnViewTapListener mViewTapListener;
    private int mOrientation = 0;
    private final float[] mMatrixValues = new float[9];
    private final RectF mDisplayRect = new RectF();
    private final Interpolator mZoomInterpolator = new AccelerateDecelerateInterpolator();
    private float mMinScale = 1.0f;
    private float mMidScale = 1.75f;
    private float mMaxScale = 3.0f;
    private long mZoomDuration = 200;
    private boolean mBlockParentIntercept = false;
    private boolean mAllowParentInterceptOnEdge = true;
    private int mScrollEdgeX = 2;
    private int mScrollEdgeY = 2;
    private final Matrix mMatrix = new Matrix();
    private int mImageInfoHeight = -1;
    private int mImageInfoWidth = -1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface OrientationMode {
    }

    public Attacher(DraweeView<GenericDraweeHierarchy> draweeView) {
        this.mDraweeView = new WeakReference<>(draweeView);
        draweeView.getHierarchy().setActualImageScaleType(ScalingUtils.ScaleType.FIT_CENTER);
        draweeView.setOnTouchListener(this);
        this.mScaleDragDetector = new ScaleDragDetector(draweeView.getContext(), this);
        this.mGestureDetector = new GestureDetectorCompat(draweeView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: me.relex.photodraweeview.Attacher.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent e) {
                super.onLongPress(e);
                if (Attacher.this.mLongClickListener != null) {
                    Attacher.this.mLongClickListener.onLongClick(Attacher.this.getDraweeView());
                }
            }
        });
        this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener newOnDoubleTapListener) {
        if (newOnDoubleTapListener != null) {
            this.mGestureDetector.setOnDoubleTapListener(newOnDoubleTapListener);
        } else {
            this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
        }
    }

    @Nullable
    public DraweeView<GenericDraweeHierarchy> getDraweeView() {
        return this.mDraweeView.get();
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMinimumScale() {
        return this.mMinScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMediumScale() {
        return this.mMidScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getMaximumScale() {
        return this.mMaxScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMaximumScale(float maximumScale) {
        checkZoomLevels(this.mMinScale, this.mMidScale, maximumScale);
        this.mMaxScale = maximumScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMediumScale(float mediumScale) {
        checkZoomLevels(this.mMinScale, mediumScale, this.mMaxScale);
        this.mMidScale = mediumScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setMinimumScale(float minimumScale) {
        checkZoomLevels(minimumScale, this.mMidScale, this.mMaxScale);
        this.mMinScale = minimumScale;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(getMatrixValue(this.mMatrix, 0), 2.0d)) + ((float) Math.pow(getMatrixValue(this.mMatrix, 3), 2.0d)));
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale) {
        setScale(scale, false);
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale, boolean animate) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            setScale(scale, draweeView.getRight() / 2, draweeView.getBottom() / 2, false);
        }
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setScale(float scale, float focalX, float focalY, boolean animate) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null && scale >= this.mMinScale && scale <= this.mMaxScale) {
            if (animate) {
                draweeView.post(new AnimatedZoomRunnable(getScale(), scale, focalX, focalY));
                return;
            }
            this.mMatrix.setScale(scale, scale, focalX, focalY);
            checkMatrixAndInvalidate();
        }
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOrientation(int orientation) {
        this.mOrientation = orientation;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setZoomTransitionDuration(long duration) {
        if (duration < 0) {
            duration = 200;
        }
        this.mZoomDuration = duration;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setAllowParentInterceptOnEdge(boolean allow) {
        this.mAllowParentInterceptOnEdge = allow;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnScaleChangeListener(OnScaleChangeListener listener) {
        this.mScaleChangeListener = listener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnLongClickListener(View.OnLongClickListener listener) {
        this.mLongClickListener = listener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnPhotoTapListener(OnPhotoTapListener listener) {
        this.mPhotoTapListener = listener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void setOnViewTapListener(OnViewTapListener listener) {
        this.mViewTapListener = listener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mPhotoTapListener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public OnViewTapListener getOnViewTapListener() {
        return this.mViewTapListener;
    }

    @Override // me.relex.photodraweeview.IAttacher
    public void update(int imageInfoWidth, int imageInfoHeight) {
        this.mImageInfoWidth = imageInfoWidth;
        this.mImageInfoHeight = imageInfoHeight;
        updateBaseMatrix();
    }

    private static void checkZoomLevels(float minZoom, float midZoom, float maxZoom) {
        if (minZoom >= midZoom) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (midZoom >= maxZoom) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private int getViewWidth() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            return (draweeView.getWidth() - draweeView.getPaddingLeft()) - draweeView.getPaddingRight();
        }
        return 0;
    }

    private int getViewHeight() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            return (draweeView.getHeight() - draweeView.getPaddingTop()) - draweeView.getPaddingBottom();
        }
        return 0;
    }

    private float getMatrixValue(Matrix matrix, int whichValue) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[whichValue];
    }

    public Matrix getDrawMatrix() {
        return this.mMatrix;
    }

    public RectF getDisplayRect() {
        checkMatrixBounds();
        return getDisplayRect(getDrawMatrix());
    }

    public void checkMatrixAndInvalidate() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null && checkMatrixBounds()) {
            draweeView.invalidate();
        }
    }

    public boolean checkMatrixBounds() {
        RectF rect = getDisplayRect(getDrawMatrix());
        if (rect == null) {
            return false;
        }
        float height = rect.height();
        float width = rect.width();
        float deltaX = 0.0f;
        float deltaY = 0.0f;
        int viewHeight = getViewHeight();
        if (height <= viewHeight) {
            deltaY = ((viewHeight - height) / 2.0f) - rect.top;
            this.mScrollEdgeY = 2;
        } else if (rect.top > 0.0f) {
            deltaY = -rect.top;
            this.mScrollEdgeY = 0;
        } else if (rect.bottom < viewHeight) {
            deltaY = viewHeight - rect.bottom;
            this.mScrollEdgeY = 1;
        } else {
            this.mScrollEdgeY = -1;
        }
        int viewWidth = getViewWidth();
        if (width <= viewWidth) {
            deltaX = ((viewWidth - width) / 2.0f) - rect.left;
            this.mScrollEdgeX = 2;
        } else if (rect.left > 0.0f) {
            deltaX = -rect.left;
            this.mScrollEdgeX = 0;
        } else if (rect.right < viewWidth) {
            deltaX = viewWidth - rect.right;
            this.mScrollEdgeX = 1;
        } else {
            this.mScrollEdgeX = -1;
        }
        this.mMatrix.postTranslate(deltaX, deltaY);
        return true;
    }

    private RectF getDisplayRect(Matrix matrix) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null || (this.mImageInfoWidth == -1 && this.mImageInfoHeight == -1)) {
            return null;
        }
        this.mDisplayRect.set(0.0f, 0.0f, this.mImageInfoWidth, this.mImageInfoHeight);
        draweeView.getHierarchy().getActualImageBounds(this.mDisplayRect);
        matrix.mapRect(this.mDisplayRect);
        return this.mDisplayRect;
    }

    private void updateBaseMatrix() {
        if (this.mImageInfoWidth != -1 || this.mImageInfoHeight != -1) {
            resetMatrix();
        }
    }

    private void resetMatrix() {
        this.mMatrix.reset();
        checkMatrixBounds();
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            draweeView.invalidate();
        }
    }

    private void checkMinScale() {
        RectF rect;
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null && getScale() < this.mMinScale && (rect = getDisplayRect()) != null) {
            draweeView.post(new AnimatedZoomRunnable(getScale(), this.mMinScale, rect.centerX(), rect.centerY()));
        }
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onScale(float scaleFactor, float focusX, float focusY) {
        if (getScale() < this.mMaxScale || scaleFactor < 1.0f) {
            if (this.mScaleChangeListener != null) {
                this.mScaleChangeListener.onScaleChange(scaleFactor, focusX, focusY);
            }
            this.mMatrix.postScale(scaleFactor, scaleFactor, focusX, focusY);
            checkMatrixAndInvalidate();
        }
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onScaleEnd() {
        checkMinScale();
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onDrag(float dx, float dy) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null && !this.mScaleDragDetector.isScaling()) {
            this.mMatrix.postTranslate(dx, dy);
            checkMatrixAndInvalidate();
            ViewParent parent = draweeView.getParent();
            if (parent != null) {
                if (this.mAllowParentInterceptOnEdge && !this.mScaleDragDetector.isScaling() && !this.mBlockParentIntercept) {
                    if (this.mOrientation == 0 && (this.mScrollEdgeX == 2 || ((this.mScrollEdgeX == 0 && dx >= 1.0f) || (this.mScrollEdgeX == 1 && dx <= -1.0f)))) {
                        parent.requestDisallowInterceptTouchEvent(false);
                        return;
                    } else if (this.mOrientation != 1) {
                        return;
                    } else {
                        if (this.mScrollEdgeY == 2 || ((this.mScrollEdgeY == 0 && dy >= 1.0f) || (this.mScrollEdgeY == 1 && dy <= -1.0f))) {
                            parent.requestDisallowInterceptTouchEvent(false);
                            return;
                        }
                        return;
                    }
                }
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onFling(float startX, float startY, float velocityX, float velocityY) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            this.mCurrentFlingRunnable = new FlingRunnable(draweeView.getContext());
            this.mCurrentFlingRunnable.fling(getViewWidth(), getViewHeight(), (int) velocityX, (int) velocityY);
            draweeView.post(this.mCurrentFlingRunnable);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        boolean z = true;
        int action = MotionEventCompat.getActionMasked(event);
        switch (action) {
            case 0:
                ViewParent parent = v.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                cancelFling();
                break;
            case 1:
            case 3:
                ViewParent parent2 = v.getParent();
                if (parent2 != null) {
                    parent2.requestDisallowInterceptTouchEvent(false);
                    break;
                }
                break;
        }
        boolean wasScaling = this.mScaleDragDetector.isScaling();
        boolean wasDragging = this.mScaleDragDetector.isDragging();
        boolean handled = this.mScaleDragDetector.onTouchEvent(event);
        boolean noScale = !wasScaling && !this.mScaleDragDetector.isScaling();
        boolean noDrag = !wasDragging && !this.mScaleDragDetector.isDragging();
        if (!noScale || !noDrag) {
            z = false;
        }
        this.mBlockParentIntercept = z;
        if (this.mGestureDetector.onTouchEvent(event)) {
            return true;
        }
        return handled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float currentZoom, float targetZoom, float focalX, float focalY) {
            this.mFocalX = focalX;
            this.mFocalY = focalY;
            this.mZoomStart = currentZoom;
            this.mZoomEnd = targetZoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> draweeView = Attacher.this.getDraweeView();
            if (draweeView != null) {
                float t = interpolate();
                float scale = this.mZoomStart + ((this.mZoomEnd - this.mZoomStart) * t);
                float deltaScale = scale / Attacher.this.getScale();
                Attacher.this.onScale(deltaScale, this.mFocalX, this.mFocalY);
                if (t < 1.0f) {
                    Attacher.this.postOnAnimation(draweeView, this);
                }
            }
        }

        private float interpolate() {
            float t = (((float) (System.currentTimeMillis() - this.mStartTime)) * 1.0f) / ((float) Attacher.this.mZoomDuration);
            return Attacher.this.mZoomInterpolator.getInterpolation(Math.min(1.0f, t));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final ScrollerCompat mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = ScrollerCompat.create(context);
        }

        public void cancelFling() {
            this.mScroller.abortAnimation();
        }

        public void fling(int viewWidth, int viewHeight, int velocityX, int velocityY) {
            int maxX;
            int minX;
            int maxY;
            int minY;
            RectF rect = Attacher.this.getDisplayRect();
            if (rect != null) {
                int startX = Math.round(-rect.left);
                if (viewWidth < rect.width()) {
                    minX = 0;
                    maxX = Math.round(rect.width() - viewWidth);
                } else {
                    maxX = startX;
                    minX = startX;
                }
                int startY = Math.round(-rect.top);
                if (viewHeight < rect.height()) {
                    minY = 0;
                    maxY = Math.round(rect.height() - viewHeight);
                } else {
                    maxY = startY;
                    minY = startY;
                }
                this.mCurrentX = startX;
                this.mCurrentY = startY;
                if (startX != maxX || startY != maxY) {
                    this.mScroller.fling(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY, 0, 0);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> draweeView;
            if (!this.mScroller.isFinished() && (draweeView = Attacher.this.getDraweeView()) != null && this.mScroller.computeScrollOffset()) {
                int newX = this.mScroller.getCurrX();
                int newY = this.mScroller.getCurrY();
                Attacher.this.mMatrix.postTranslate(this.mCurrentX - newX, this.mCurrentY - newY);
                draweeView.invalidate();
                this.mCurrentX = newX;
                this.mCurrentY = newY;
                Attacher.this.postOnAnimation(draweeView, this);
            }
        }
    }

    private void cancelFling() {
        if (this.mCurrentFlingRunnable != null) {
            this.mCurrentFlingRunnable.cancelFling();
            this.mCurrentFlingRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnAnimation(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        cancelFling();
    }
}
