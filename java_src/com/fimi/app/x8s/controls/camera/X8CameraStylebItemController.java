package com.fimi.app.x8s.controls.camera;

import android.content.Context;
import android.view.View;
import android.widget.SeekBar;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.x8sdk.controller.CameraManager;
/* loaded from: classes.dex */
public class X8CameraStylebItemController extends AbsX8Controllers implements SeekBar.OnSeekBarChangeListener {
    private SeekBar awbSeekBar;
    private CameraManager cameraManager;
    private Context context;
    private boolean isUser = false;

    public void setCameraManager(CameraManager cameraManager) {
        this.cameraManager = cameraManager;
    }

    public X8CameraStylebItemController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.context = rootView.getContext();
        this.awbSeekBar = (SeekBar) rootView.findViewById(C0885R.C0889id.awb_seekBar);
        this.awbSeekBar.setOnSeekBarChangeListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        this.isUser = fromUser;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }
}
