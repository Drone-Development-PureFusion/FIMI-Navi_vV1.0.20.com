package com.fimi.app.x8s.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.widget.X8VerticalSeekBar;
import com.fimi.kernel.dataparser.usb.JsonUiCallBackListener;
import com.fimi.x8sdk.controller.CameraManager;
import com.fimi.x8sdk.jsonResult.CameraParamsJson;
import com.fimi.x8sdk.modulestate.X8CameraSettings;
import java.util.concurrent.TimeUnit;
import p021rx.Observer;
import p021rx.Subscription;
import p021rx.android.schedulers.AndroidSchedulers;
import p021rx.schedulers.Schedulers;
import p021rx.subjects.PublishSubject;
/* loaded from: classes.dex */
public class X8VerticalSeekBarValueLayout extends RelativeLayout implements X8VerticalSeekBar.SlideChangeListener {
    private CameraManager cameraManager;
    private PublishSubject<Integer> mSearchResultsSubject;
    private Subscription mTextWatchSubscription;
    private View view;
    private int seekBarMax = 30;
    private int seekBarMin = 10;
    private int curValue = 10;
    private int lastValue = 0;
    private Handler mHandler = new Handler() { // from class: com.fimi.app.x8s.widget.X8VerticalSeekBarValueLayout.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
        }
    };
    private X8VerticalSeekBar verticalSeekBar = (X8VerticalSeekBar) findViewById(C0885R.C0889id.verticalSeekBar);
    private TextView tvValue = (TextView) findViewById(C0885R.C0889id.tv_value);
    private String prex = "x";

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTextWatchSubscription != null && !this.mTextWatchSubscription.isUnsubscribed()) {
            this.mTextWatchSubscription.unsubscribe();
        }
    }

    public X8VerticalSeekBarValueLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.view = LayoutInflater.from(context).inflate(C0885R.layout.x8_vertical_seek_bar_value_layout, (ViewGroup) this, true);
        this.verticalSeekBar.setProgress(0);
        this.verticalSeekBar.setMaxProgress(this.seekBarMax - this.seekBarMin);
        this.verticalSeekBar.setOrientation(0);
        this.view.measure(0, 0);
        this.tvValue.measure(0, 0);
        this.verticalSeekBar.setTextHeight(this.view.getMeasuredHeight(), this.tvValue.getMeasuredHeight());
        this.verticalSeekBar.setOnSlideChangeListener(this);
        runRxAnroid();
    }

    public void setMinMax(int[] minMax, CameraManager cameraManager) {
        this.seekBarMax = minMax[1];
        this.seekBarMin = minMax[0];
        this.verticalSeekBar.setMaxProgress(this.seekBarMax - this.seekBarMin);
        this.cameraManager = cameraManager;
    }

    public void setProgress(int value) {
        if (value > this.seekBarMax) {
            value = this.seekBarMax;
        }
        if (value < this.seekBarMin) {
            value = this.seekBarMin;
        }
        this.curValue = value;
        this.lastValue = value;
        this.prex = this.prex;
        this.verticalSeekBar.setProgress(value - this.seekBarMin);
    }

    public void changeProcess(boolean isDown) {
        int progess;
        int progess2 = this.verticalSeekBar.getProcess();
        if (isDown) {
            progess = progess2 - 1;
            if (progess < 0) {
                progess = 0;
            }
        } else {
            progess = progess2 + 1;
            if (progess > this.seekBarMax - this.seekBarMin) {
                progess = this.seekBarMax - this.seekBarMin;
            }
        }
        setProgress(progess + this.seekBarMin);
        sendJsonCmdSetFocuse(this.lastValue);
    }

    @Override // com.fimi.app.x8s.widget.X8VerticalSeekBar.SlideChangeListener
    public void onStart(X8VerticalSeekBar slideView, int progress) {
    }

    @Override // com.fimi.app.x8s.widget.X8VerticalSeekBar.SlideChangeListener
    public void onProgress(X8VerticalSeekBar slideView, int progress) {
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(this.tvValue.getLayoutParams());
        lp.setMargins(this.verticalSeekBar.getDestX(), this.verticalSeekBar.getDestY(), 0, 0);
        this.tvValue.setLayoutParams(lp);
        this.curValue = this.seekBarMin + progress;
        this.tvValue.setText("" + (this.curValue / 10.0f) + this.prex);
        this.mSearchResultsSubject.onNext(Integer.valueOf(this.curValue));
    }

    @Override // com.fimi.app.x8s.widget.X8VerticalSeekBar.SlideChangeListener
    public void onStop(X8VerticalSeekBar slideView, int progress) {
        this.mHandler.postDelayed(new Runnable() { // from class: com.fimi.app.x8s.widget.X8VerticalSeekBarValueLayout.2
            @Override // java.lang.Runnable
            public void run() {
                X8VerticalSeekBarValueLayout.this.mSearchResultsSubject.onNext(Integer.valueOf(X8VerticalSeekBarValueLayout.this.curValue));
            }
        }, 510L);
    }

    public String getCurrentProcess() {
        return "" + (this.curValue / 10.0f);
    }

    public void sendJsonCmdSetFocuse(int param) {
        final String s = "" + (param / 10.0f);
        this.cameraManager.setCameraFocuse(s, new JsonUiCallBackListener() { // from class: com.fimi.app.x8s.widget.X8VerticalSeekBarValueLayout.3
            @Override // com.fimi.kernel.dataparser.usb.JsonUiCallBackListener
            public void onComplete(JSONObject rt, Object o) {
                if (rt != null) {
                    CameraParamsJson paramsJson = (CameraParamsJson) JSON.parseObject(rt.toString(), CameraParamsJson.class);
                    if (paramsJson != null) {
                        X8CameraSettings.setFocusSetting(s);
                        return;
                    } else {
                        X8VerticalSeekBarValueLayout.this.setProgress(X8CameraSettings.getFocuse());
                        return;
                    }
                }
                X8VerticalSeekBarValueLayout.this.setProgress(X8CameraSettings.getFocuse());
            }
        });
    }

    private void runRxAnroid() {
        this.mSearchResultsSubject = PublishSubject.create();
        this.mTextWatchSubscription = this.mSearchResultsSubject.throttleLast(500L, TimeUnit.MILLISECONDS).observeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Observer<Integer>() { // from class: com.fimi.app.x8s.widget.X8VerticalSeekBarValueLayout.4
            @Override // p021rx.Observer
            public void onCompleted() {
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
            }

            @Override // p021rx.Observer
            public void onNext(Integer cities) {
                if (X8VerticalSeekBarValueLayout.this.lastValue != cities.intValue()) {
                    X8VerticalSeekBarValueLayout.this.lastValue = cities.intValue();
                    X8VerticalSeekBarValueLayout.this.sendJsonCmdSetFocuse(X8VerticalSeekBarValueLayout.this.lastValue);
                }
            }
        });
    }
}
