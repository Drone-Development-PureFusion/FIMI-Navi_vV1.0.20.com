package com.fimi.app.x8s.manager;

import com.fimi.TcpClient;
import com.fimi.app.x8s.entity.X8PressureGpsInfo;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.entity.GpsInfoCmd;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class X8PressureGpsManger {
    private FcManager fcManager;
    Task task;
    Timer timer;

    public void setFcManger(FcManager fc) {
        this.fcManager = fc;
    }

    public void startTask() {
        if (this.timer == null) {
            this.timer = new Timer();
            this.task = new Task();
            this.timer.schedule(this.task, 50L, 50L);
        }
    }

    public void stopTask() {
        if (this.timer != null) {
            this.timer.cancel();
        }
        if (this.task != null) {
            this.task.cancel();
        }
        this.timer = null;
        this.task = null;
    }

    /* loaded from: classes.dex */
    public class Task extends TimerTask {
        public Task() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            TcpClient.getIntance().sendLog("定时任务执行" + X8PressureGpsInfo.getInstance().toString() + X8PressureGpsManger.this.fcManager);
            if (X8PressureGpsManger.this.fcManager != null) {
                X8PressureGpsManger.this.sendPressure();
                X8PressureGpsManger.this.sendGps();
            }
        }
    }

    public void sendPressure() {
        if (X8PressureGpsInfo.getInstance().isHasPressure()) {
            this.fcManager.setPressureInfo(X8PressureGpsInfo.getInstance().getmAltitude(), X8PressureGpsInfo.getInstance().gethPa());
        }
    }

    public void sendGps() {
        if (X8PressureGpsInfo.getInstance().isHasLocation()) {
            GpsInfoCmd cmd = new GpsInfoCmd();
            cmd.mLongitude = X8PressureGpsInfo.getInstance().getmLongitude();
            cmd.mLatitude = X8PressureGpsInfo.getInstance().getmLatitude();
            cmd.mAltitude = X8PressureGpsInfo.getInstance().getmAltitude();
            cmd.mHorizontalAccuracyMeters = (int) X8PressureGpsInfo.getInstance().getmHorizontalAccuracyMeters();
            cmd.mVerticalAccuracyMeters = (int) X8PressureGpsInfo.getInstance().getmVerticalAccuracyMeters();
            cmd.mSpeed = X8PressureGpsInfo.getInstance().getmSpeed();
            cmd.mBearing = (int) X8PressureGpsInfo.getInstance().getmBearing();
            this.fcManager.setGpsInfo(cmd);
        }
    }
}
