package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.interfaces.IX8GestureListener;
import com.fimi.app.x8s.tensortfloow.X8GestureDetector;
/* loaded from: classes.dex */
public class X8AiTrackContainterView extends RelativeLayout {
    private GestureDetector mDetector;
    private X8GestureDetector mX8GestureDetector;
    private X8TrackOverlayView viewTrackOverlay;

    public X8TrackOverlayView getViewTrackOverlay() {
        return this.viewTrackOverlay;
    }

    public void setViewTrackOverlay(X8TrackOverlayView viewTrackOverlay) {
        this.viewTrackOverlay = viewTrackOverlay;
    }

    public X8AiTrackContainterView(Context context) {
        super(context);
        initView(context);
    }

    public X8AiTrackContainterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    public X8AiTrackContainterView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView(context);
    }

    public void initView(Context context) {
        LayoutInflater.from(context).inflate(C0885R.layout.x8_ai_track_contaitner_layout, (ViewGroup) this, true);
        this.viewTrackOverlay = (X8TrackOverlayView) findViewById(C0885R.C0889id.view_follow_rectangle);
        this.mX8GestureDetector = new X8GestureDetector(getContext());
    }

    public void isFullScreen(boolean full) {
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (X8Application.enableGesture) {
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent arg0) {
        if (X8Application.enableGesture) {
            this.mX8GestureDetector.onTouchEvent(arg0);
            return true;
        }
        return super.onTouchEvent(arg0);
    }

    public void setX8GestureListener(IX8GestureListener x8GestureListener) {
        this.mX8GestureDetector.setX8GestureListener(x8GestureListener);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mX8GestureDetector.setDistance(w / 6);
    }
}
