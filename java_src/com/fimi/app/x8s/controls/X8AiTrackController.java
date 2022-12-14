package com.fimi.app.x8s.controls;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.RectF;
import com.fimi.TcpClient;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.enums.X8VcErrorCode;
import com.fimi.app.x8s.media.FimiH264Video;
import com.fimi.app.x8s.tensortfloow.X8DetectionControler;
import com.fimi.app.x8s.widget.X8TrackOverlayView;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.controller.X8VcManager;
import com.fimi.x8sdk.dataparser.AutoVcTracking;
/* loaded from: classes.dex */
public class X8AiTrackController implements X8DetectionControler.onDetectionListener, X8TrackOverlayView.OverlayListener {
    private FimiH264Video fimiH264Video;
    boolean isLog;
    private boolean isShow;
    private boolean isTou;
    private OnAiTrackControllerListener listener;
    private X8DetectionControler mX8DetectionControler = new X8DetectionControler();
    private X8VcManager vcManager;
    private X8TrackOverlayView viewTrackOverlay;

    /* loaded from: classes.dex */
    public interface OnAiTrackControllerListener {
        void onChangeGoLocation(float f, float f2, float f3, float f4, int i, int i2);

        void onTouchActionDown();

        void onTouchActionUp();

        void onTracking();

        void setGoEnabled(boolean z);
    }

    public void init(Activity activity, X8MapVideoController mMapVideoController) {
        this.fimiH264Video = mMapVideoController.getVideoView();
        this.viewTrackOverlay = this.fimiH264Video.getX8AiTrackContainterView().getViewTrackOverlay();
        this.mX8DetectionControler.initView(activity, this.viewTrackOverlay, this.fimiH264Video, null, this);
        this.viewTrackOverlay.setCustomOverlay(false);
        this.viewTrackOverlay.setOverlayListener(this);
    }

    public void setOnAiTrackControllerListener(OnAiTrackControllerListener listener) {
        this.listener = listener;
    }

    @Override // com.fimi.app.x8s.tensortfloow.X8DetectionControler.onDetectionListener
    public void onDetectionResult(int x, int y, int w, int h, int classfier) {
        sendRectF(x, y, w, h, classfier);
    }

    @Override // com.fimi.app.x8s.tensortfloow.X8DetectionControler.onDetectionListener
    public void onDetectionFailed() {
    }

    public void setVcManager(X8VcManager vcManager) {
        this.vcManager = vcManager;
    }

    public void sendRectF(int x, int y, int w, int h, int classfier) {
        this.vcManager.setVcRectF(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.X8AiTrackController.1
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    if (cmdResult.getErrCode() == 0) {
                        if (X8AiTrackController.this.isLog) {
                            TcpClient.getIntance().sendLog("Vc??????????????????");
                        }
                        X8AiTrackController.this.viewTrackOverlay.setSelectError(false);
                        X8AiTrackController.this.listener.setGoEnabled(true);
                        return;
                    }
                    if (X8AiTrackController.this.isLog) {
                        TcpClient.getIntance().sendLog("Vc??????????????????");
                    }
                    X8AiTrackController.this.listener.setGoEnabled(false);
                    X8AiTrackController.this.viewTrackOverlay.setSelectError(true);
                    return;
                }
                if (X8AiTrackController.this.isLog) {
                    TcpClient.getIntance().sendLog("Vc??????????????????");
                }
                X8AiTrackController.this.listener.setGoEnabled(false);
                X8AiTrackController.this.viewTrackOverlay.setSelectError(true);
            }
        }, x, y, w, h, classfier);
    }

    @Override // com.fimi.app.x8s.widget.X8TrackOverlayView.OverlayListener
    public void onTouchActionDown() {
        this.isTou = false;
        this.mX8DetectionControler.onTouchActionDown();
        this.listener.onTouchActionDown();
    }

    @Override // com.fimi.app.x8s.widget.X8TrackOverlayView.OverlayListener
    public void onTouchActionUp(float x, float y, float w, float h, int x1, int y1, int x2, int y2) {
        this.mX8DetectionControler.onTouchActionUp((int) x, (int) y, (int) w, (int) h, x1, y1, x2, y2);
        this.isTou = true;
        this.listener.onTouchActionUp();
    }

    @Override // com.fimi.app.x8s.widget.X8TrackOverlayView.OverlayListener
    public void onDraw(Canvas canvas, RectF rect, boolean lost) {
    }

    @Override // com.fimi.app.x8s.widget.X8TrackOverlayView.OverlayListener
    public void onChangeGoLocation(float left, float right, float top, float bottom, int w, int h) {
        if (this.listener != null) {
            this.listener.onChangeGoLocation(left, right, top, bottom, w, h);
        }
    }

    @Override // com.fimi.app.x8s.widget.X8TrackOverlayView.OverlayListener
    public boolean isCanSelect() {
        return false;
    }

    public void onTracking(AutoVcTracking tracking) {
        if (this.isShow && this.viewTrackOverlay != null && this.isTou) {
            this.listener.onTracking();
            if (tracking.getTrackErrorCode() == 0) {
                this.viewTrackOverlay.setSelectError(false);
            } else if (isValidError(tracking.getX(), tracking.getY(), tracking.getW(), tracking.getH())) {
                this.viewTrackOverlay.setSelectError(true);
                this.viewTrackOverlay.setErrorMsg("" + X8VcErrorCode.valueOf((int) tracking.getTrackErrorCode()));
            }
            this.viewTrackOverlay.onTracking(tracking.getX(), tracking.getY(), tracking.getW(), tracking.getH());
        }
    }

    public boolean isValidError(int x, int y, int w, int h) {
        if (x == y && y == w && w == h && h == 0) {
            return false;
        }
        return true;
    }

    public void closeUi() {
        this.viewTrackOverlay.cleanTrackerRect();
        this.isShow = false;
        this.fimiH264Video.setX8TrackOverlaVisiable(8);
        X8Application.enableGesture = true;
    }

    public void openUi() {
        this.isShow = true;
        this.fimiH264Video.setX8TrackOverlaVisiable(0);
        X8Application.enableGesture = false;
    }

    public void setTou(boolean tou) {
        this.isTou = tou;
    }
}
