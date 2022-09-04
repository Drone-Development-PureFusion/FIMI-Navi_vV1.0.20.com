package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8BatteryReturnLandingView extends View {
    private X8WithTimeDoubleCustomDialog dialogLanding;
    private X8WithTimeDoubleCustomDialog dialogReturn;

    /* renamed from: h */
    private int f155h;
    private boolean hasSHowLanding;
    private boolean hasShowReturn;
    private Bitmap imgLanding;
    private Bitmap imgReturn;
    private int landingCapacity;
    private Paint paint;
    private int power;
    private int rhtCapacity;

    /* renamed from: w */
    private int f156w;
    private X8sMainActivity x8sMainActivity;

    public X8BatteryReturnLandingView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        initSurface(context);
    }

    private void initSurface(Context context) {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        initBitmap();
    }

    private void initBitmap() {
        this.imgReturn = createBitMap(C0885R.C0888drawable.x8_img_top_return_home_battery);
        this.imgLanding = createBitMap(C0885R.C0888drawable.x8_img_top_landing_battery);
        this.f155h = this.imgLanding.getHeight();
        this.f156w = this.imgLanding.getWidth();
    }

    private Bitmap createBitMap(int resID) {
        return BitmapFactory.decodeResource(getResources(), resID);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        recyleBitMap(this.imgReturn);
        recyleBitMap(this.imgLanding);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int start;
        int start2;
        super.onDraw(canvas);
        if (!StateManager.getInstance().getX8Drone().isOnGround() && getWidth() > 0) {
            float x = (getWidth() * 1624) / 1920.0f;
            if (this.rhtCapacity > 0) {
                if (this.rhtCapacity <= 50) {
                    start2 = (int) ((this.rhtCapacity * x) / 100.0f);
                } else {
                    int start3 = (int) (getWidth() - (0.5f * x));
                    start2 = (int) (start3 + (((this.rhtCapacity - 50) / 100.0f) * x));
                }
                canvas.drawBitmap(this.imgReturn, (int) (start2 - (this.f156w * 0.05f)), 0.0f, this.paint);
            }
            if (this.landingCapacity > 0) {
                if (this.landingCapacity <= 50) {
                    start = (int) ((this.landingCapacity * x) / 100.0f);
                } else {
                    int start4 = (int) (getWidth() - (0.5f * x));
                    start = (int) (start4 + (((this.landingCapacity - 50) / 100.0f) * x));
                }
                canvas.drawBitmap(this.imgLanding, (int) (start - (this.f156w * 0.05f)), 0.0f, this.paint);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), measureHeight(heightMeasureSpec, this.f155h));
    }

    private void recyleBitMap(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }

    private int measureHeight(int measureSpec, int height) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == 1073741824) {
            return size;
        }
        if (mode != Integer.MIN_VALUE) {
            return height;
        }
        int result = Math.min(height, size);
        return result;
    }

    public void setPercent(int landing, int rht, int total, int power) {
        int mode;
        int mode2;
        if (landing < rht) {
            landing = 0;
        }
        this.landingCapacity = (int) (((landing * 1.0f) / total) * 100.0f);
        this.rhtCapacity = (int) (((rht * 1.0f) / total) * 100.0f);
        this.power = power;
        if (this.hasShowReturn && StateManager.getInstance().getX8Drone().isOnGround()) {
            this.hasShowReturn = false;
        }
        if (this.hasSHowLanding && StateManager.getInstance().getX8Drone().isOnGround()) {
            this.hasSHowLanding = false;
        }
        if (power <= this.rhtCapacity && !this.hasShowReturn && GlobalConfig.getInstance().isLowReturn() && StateManager.getInstance().getX8Drone().isInSky() && (mode2 = StateManager.getInstance().getX8Drone().getCtrlMode()) != 7 && mode2 != 8 && mode2 != 3) {
            showReturn();
        }
        if (power <= this.landingCapacity && !this.hasSHowLanding && GlobalConfig.getInstance().isLowLanding() && StateManager.getInstance().getX8Drone().isInSky() && (mode = StateManager.getInstance().getX8Drone().getCtrlMode()) != 7 && mode != 8 && mode != 3) {
            showLanding();
        }
        postInvalidate();
    }

    public void resetByDidconnect() {
        if (this.landingCapacity != 0 || this.rhtCapacity != 0) {
            this.landingCapacity = 0;
            this.rhtCapacity = 0;
            if (this.dialogLanding != null) {
                this.dialogLanding.dismiss();
                this.dialogLanding = null;
            }
            if (this.dialogReturn != null) {
                this.dialogReturn.dismiss();
                this.dialogReturn = null;
            }
            postInvalidate();
        }
    }

    public void showLanding() {
        if (this.dialogLanding == null || !this.dialogLanding.isShowing()) {
            String t = getContext().getString(C0885R.string.x8_battery_low_landing_title);
            String m = getContext().getString(C0885R.string.x8_ai_fly_land_title);
            this.dialogLanding = new X8WithTimeDoubleCustomDialog(getContext(), t, m, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.widget.X8BatteryReturnLandingView.1
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    X8BatteryReturnLandingView.this.onLandingClick();
                }
            });
            this.hasSHowLanding = true;
            this.dialogLanding.setCanceledOnTouchOutside(false);
            this.dialogLanding.show();
        }
    }

    public void showReturn() {
        if (this.dialogReturn == null || !this.dialogReturn.isShowing()) {
            String t = getContext().getString(C0885R.string.x8_battery_low_return_title);
            String m = getContext().getString(C0885R.string.x8_ai_fly_return_home_title);
            this.dialogReturn = new X8WithTimeDoubleCustomDialog(getContext(), t, m, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.widget.X8BatteryReturnLandingView.2
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    X8BatteryReturnLandingView.this.onRetureHomeClick();
                }
            });
            this.hasShowReturn = true;
            this.dialogReturn.setCanceledOnTouchOutside(false);
            this.dialogReturn.show();
        }
    }

    public void setX8sMainActivity(X8sMainActivity x8sMainActivity) {
        this.x8sMainActivity = x8sMainActivity;
    }

    public void onRetureHomeClick() {
        this.x8sMainActivity.getFcManager().setAiRetureHome(new UiCallBackListener() { // from class: com.fimi.app.x8s.widget.X8BatteryReturnLandingView.3
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess() && X8BatteryReturnLandingView.this.dialogReturn != null && X8BatteryReturnLandingView.this.dialogReturn.isShowing()) {
                    X8BatteryReturnLandingView.this.dialogReturn.dismiss();
                }
            }
        });
    }

    public void onLandingClick() {
        this.x8sMainActivity.getFcManager().land(new UiCallBackListener() { // from class: com.fimi.app.x8s.widget.X8BatteryReturnLandingView.4
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess() && X8BatteryReturnLandingView.this.dialogLanding != null && X8BatteryReturnLandingView.this.dialogLanding.isShowing()) {
                    X8BatteryReturnLandingView.this.dialogLanding.dismiss();
                }
            }
        });
    }
}
