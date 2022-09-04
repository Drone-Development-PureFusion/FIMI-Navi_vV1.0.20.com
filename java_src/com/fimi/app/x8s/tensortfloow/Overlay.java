package com.fimi.app.x8s.tensortfloow;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.p001v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.fimi.kernel.FimiAppContext;
@SuppressLint({"WrongCall"})
/* loaded from: classes.dex */
public class Overlay extends View {
    private int MAX_HEIGHT;
    private int MAX_WIDTH;
    private final String TAG;
    private boolean enableCustomOverlay;
    private int endX;
    private int endY;
    private boolean isLost;
    private boolean isTracking;
    private OverlayListener listener;
    private int lostColor;
    private int previewH;
    private int previewW;
    private int selectedColor;
    private int startX;
    private int startY;
    private int viewH;
    private int viewW;

    /* renamed from: x1 */
    private int f145x1;

    /* renamed from: x2 */
    private int f146x2;

    /* renamed from: y1 */
    private int f147y1;

    /* renamed from: y2 */
    private int f148y2;

    /* loaded from: classes.dex */
    public interface OverlayListener {
        void onDraw(Canvas canvas, Rect rect, boolean z);

        void onTouchActionDown();

        void onTouchActionUp(int i, int i2, int i3, int i4);
    }

    public Overlay(Context context) {
        super(context);
        this.TAG = Overlay.class.getSimpleName();
        this.listener = null;
        this.enableCustomOverlay = false;
        this.isTracking = false;
        this.isLost = true;
        this.selectedColor = -15935891;
        this.lostColor = SupportMenu.CATEGORY_MASK;
        this.viewW = 0;
        this.viewH = 0;
        this.startX = 0;
        this.startY = 0;
        this.endX = 0;
        this.endY = 0;
        this.f145x1 = 0;
        this.f147y1 = 0;
        this.f146x2 = 0;
        this.f148y2 = 0;
        this.previewW = FimiAppContext.UI_HEIGHT;
        this.previewH = FimiAppContext.UI_WIDTH;
    }

    public Overlay(Context context, int w, int h) {
        super(context);
        this.TAG = Overlay.class.getSimpleName();
        this.listener = null;
        this.enableCustomOverlay = false;
        this.isTracking = false;
        this.isLost = true;
        this.selectedColor = -15935891;
        this.lostColor = SupportMenu.CATEGORY_MASK;
        this.viewW = 0;
        this.viewH = 0;
        this.startX = 0;
        this.startY = 0;
        this.endX = 0;
        this.endY = 0;
        this.f145x1 = 0;
        this.f147y1 = 0;
        this.f146x2 = 0;
        this.f148y2 = 0;
        this.previewW = FimiAppContext.UI_HEIGHT;
        this.previewH = FimiAppContext.UI_WIDTH;
        this.viewW = w;
        this.viewH = h;
    }

    public Overlay(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = Overlay.class.getSimpleName();
        this.listener = null;
        this.enableCustomOverlay = false;
        this.isTracking = false;
        this.isLost = true;
        this.selectedColor = -15935891;
        this.lostColor = SupportMenu.CATEGORY_MASK;
        this.viewW = 0;
        this.viewH = 0;
        this.startX = 0;
        this.startY = 0;
        this.endX = 0;
        this.endY = 0;
        this.f145x1 = 0;
        this.f147y1 = 0;
        this.f146x2 = 0;
        this.f148y2 = 0;
        this.previewW = FimiAppContext.UI_HEIGHT;
        this.previewH = FimiAppContext.UI_WIDTH;
    }

    public void setOverlayListener(OverlayListener listener) {
        this.listener = listener;
    }

    public void setCustomOverlay(boolean flag) {
        this.enableCustomOverlay = flag;
    }

    public void setTracking(boolean flag) {
        this.isTracking = flag;
    }

    public boolean getTracking() {
        return this.isTracking;
    }

    public void setLost(boolean flag) {
        this.isLost = flag;
    }

    public void setSelectedColor(int color) {
        this.selectedColor = color;
    }

    public void setLostColor(int color) {
        this.lostColor = color;
    }

    public void refreshTrackerRect(int x1, int y1, int x2, int y2) {
        this.startX = x1;
        this.startY = y1;
        this.endX = x2;
        this.endY = y2;
        postInvalidate();
    }

    public void cleanTrackerRect() {
        this.f145x1 = 0;
        this.startX = 0;
        this.f147y1 = 0;
        this.startY = 0;
        this.f146x2 = 0;
        this.endX = 0;
        this.f148y2 = 0;
        this.endY = 0;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 0) {
            this.listener.onTouchActionDown();
            int x = (int) event.getX();
            this.endX = x;
            this.startX = x;
            int y = (int) event.getY();
            this.endY = y;
            this.startY = y;
            invalidate();
        } else if (event.getAction() == 2) {
            this.endX = (int) event.getX();
            this.endY = (int) event.getY();
            invalidate();
        } else if (event.getAction() == 1 && this.listener != null) {
            int preX = (this.f145x1 * this.previewW) / this.MAX_WIDTH;
            int preY = (this.f147y1 * this.previewH) / this.MAX_HEIGHT;
            int preW = ((this.f146x2 - this.f145x1) * this.previewW) / this.MAX_WIDTH;
            int preH = ((this.f148y2 - this.f147y1) * this.previewH) / this.MAX_HEIGHT;
            this.listener.onTouchActionUp(preX, preY, preW, preH);
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.enableCustomOverlay) {
            Paint p = new Paint();
            if (!this.isTracking) {
                p.setColor(this.lostColor);
                if (this.startX <= this.endX) {
                    this.f145x1 = this.startX;
                    this.f146x2 = this.endX;
                } else {
                    this.f145x1 = this.endX;
                    this.f146x2 = this.startX;
                }
                if (this.startY <= this.endY) {
                    this.f147y1 = this.startY;
                    this.f148y2 = this.endY;
                } else {
                    this.f147y1 = this.endY;
                    this.f148y2 = this.startY;
                }
            } else if (!this.isLost) {
                p.setColor(this.selectedColor);
            } else {
                p.setColor(this.lostColor);
            }
            canvas.drawRect(this.f145x1, this.f147y1, this.f146x2, this.f147y1 + 5, p);
            canvas.drawRect(this.f145x1, this.f148y2, this.f146x2 + 5, this.f148y2 + 5, p);
            canvas.drawRect(this.f145x1, this.f147y1, this.f145x1 + 5, this.f148y2, p);
            canvas.drawRect(this.f146x2, this.f147y1, this.f146x2 + 5, this.f148y2, p);
        } else if (this.listener != null) {
            if (!this.isTracking) {
                if (this.startX <= this.endX) {
                    this.f145x1 = this.startX;
                    this.f146x2 = this.endX;
                } else {
                    this.f145x1 = this.endX;
                    this.f146x2 = this.startX;
                }
                if (this.startY <= this.endY) {
                    this.f147y1 = this.startY;
                    this.f148y2 = this.endY;
                } else {
                    this.f147y1 = this.endY;
                    this.f148y2 = this.startY;
                }
            }
            Rect rect = new Rect(this.f145x1, this.f147y1, this.f146x2, this.f148y2);
            this.listener.onDraw(canvas, rect, this.isLost);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w != oldw || h != oldh) {
            this.MAX_WIDTH = w;
            this.MAX_HEIGHT = h;
        }
    }

    public int getMaxWidth() {
        return this.MAX_WIDTH;
    }

    public int getMaxHeight() {
        return this.MAX_HEIGHT;
    }
}
