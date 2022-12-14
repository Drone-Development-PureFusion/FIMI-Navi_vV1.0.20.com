package com.fimi.app.x8s.p011ui.presenter;

import android.app.Activity;
import android.os.Handler;
import com.fimi.album.biz.DataManager;
import com.fimi.album.biz.X9HandleType;
import com.fimi.album.entity.MediaModel;
import com.fimi.album.handler.HandlerManager;
import com.fimi.album.interfaces.ICameraDeviceDispater;
import com.fimi.album.iview.IDateHandler;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.p011ui.album.x8s.X8CameraDispater;
import com.fimi.app.x8s.p011ui.album.x8s.X8MediaActivity;
import com.fimi.kernel.utils.DirectoryPath;
import com.fimi.kernel.utils.LogUtil;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.modulestate.StateManager;
import java.io.File;
import java.lang.ref.WeakReference;
/* renamed from: com.fimi.app.x8s.ui.presenter.X8MediaPresenter */
/* loaded from: classes.dex */
public class X8MediaPresenter<T extends Activity> implements IDateHandler {
    private IMediaCameraConnected iMediaCameraConnected;
    private X8MediaActivity mMediaActivity;
    private WeakReference<T> weakReference;
    private final String TAG = "X8MediaPresenter";
    private DataManager<MediaModel> mDataManager = DataManager.obtain();
    private boolean isFirstEnterCamera = true;
    Handler handler = new Handler();
    Runnable runnable = new Runnable() { // from class: com.fimi.app.x8s.ui.presenter.X8MediaPresenter.3
        @Override // java.lang.Runnable
        public void run() {
            if (X8MediaPresenter.this.mMediaActivity.getTlTitleCategoly().getSelectedTabPosition() == 0) {
                if (StateManager.getInstance().getCamera().getToken() > 0) {
                    X8MediaPresenter.this.iMediaCameraConnected.onCameraConnectedState(true);
                } else {
                    X8MediaPresenter.this.iMediaCameraConnected.onCameraConnectedState(false);
                }
                X8MediaPresenter.this.handler.postDelayed(this, 1000L);
            }
        }
    };
    private ICameraDeviceDispater mCameraDispater = new X8CameraDispater();

    /* renamed from: com.fimi.app.x8s.ui.presenter.X8MediaPresenter$IMediaCameraConnected */
    /* loaded from: classes.dex */
    public interface IMediaCameraConnected {
        void onCameraConnectedState(boolean z);
    }

    public X8MediaPresenter(T activity) {
        this.weakReference = new WeakReference<>(activity);
        this.mMediaActivity = (X8MediaActivity) this.weakReference.get();
        this.mDataManager.setCameraDeviceDispater(this.mCameraDispater);
        this.mDataManager.setIdataImpl(this);
        this.handler.postDelayed(this.runnable, 1000L);
    }

    @Override // com.fimi.album.iview.IDateHandler
    public void loadDateComplete(final boolean isCamera, boolean isSuccess) {
        HandlerManager.obtain().getHandlerInMainThread().post(new Runnable() { // from class: com.fimi.app.x8s.ui.presenter.X8MediaPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                if (isCamera) {
                    X8MediaPresenter.this.isFirstEnterCamera = false;
                    X8MediaPresenter.this.mMediaActivity.getmX8CameraFragment().showProgress(false);
                    X8MediaPresenter.this.mMediaActivity.getmX8CameraFragment().reshAdapter();
                    X8MediaPresenter.this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(false);
                    X8MediaPresenter.this.mMediaActivity.showSelectBtn();
                    return;
                }
                X8MediaPresenter.this.mMediaActivity.getmX8LocalMediaFragment().showProgress(false);
            }
        });
        onStartReshAdapter();
    }

    @Override // com.fimi.album.iview.IDateHandler
    public void refreshLoadDataComplete() {
    }

    public void forEachFile(String folderPath) {
        File file = new File(folderPath);
        if (file.exists()) {
            this.mMediaActivity.getmX8LocalMediaFragment().showProgress(true);
            this.mDataManager.forEachFolder(file.getAbsolutePath());
            return;
        }
        this.mMediaActivity.getmX8LocalMediaFragment().showProgress(false);
        this.mMediaActivity.getmX8LocalMediaFragment().noDataTipCallback(true);
        this.mMediaActivity.showSelectBtn();
    }

    public void forCameraFolder() {
        this.mMediaActivity.getmX8CameraFragment().showProgress(true);
        this.mDataManager.forX9CameraFolder();
    }

    public void reDefaultVaribale() {
        this.mDataManager.reLocalDefaultVaribale();
        this.mDataManager.removeCallBack();
    }

    public void removeCameraDefaultVaribale() {
        this.mDataManager.reX9CameraDefaultVaribale();
        this.mDataManager.removeCallBack();
    }

    public void onStartReshAdapter() {
        if (X9HandleType.isCameraView()) {
            this.mMediaActivity.getmX8CameraFragment().reshAdapter();
        } else {
            this.mMediaActivity.getmX8LocalMediaFragment().reshAdapter();
        }
    }

    public void selectBtn(boolean selectState) {
        if (X9HandleType.isCameraView()) {
            if (selectState) {
                this.mMediaActivity.getmX8CameraFragment().enterSelectAllMode();
            } else {
                this.mMediaActivity.getmX8CameraFragment().cancalSelectAllMode();
            }
        } else if (selectState) {
            this.mMediaActivity.getmX8LocalMediaFragment().enterSelectAllMode();
        } else {
            this.mMediaActivity.getmX8LocalMediaFragment().cancalSelectAllMode();
        }
    }

    public void selectFileSize(int size) {
        if (X9HandleType.isCameraView()) {
            this.mMediaActivity.getmX8CameraFragment().selectFileSize(size);
        } else {
            this.mMediaActivity.getmX8LocalMediaFragment().selectFileSize(size);
        }
    }

    public void enterSelectMode(boolean state, boolean isNeedPreform) {
        if (X9HandleType.isCameraView()) {
            this.mMediaActivity.getmX8CameraFragment().enterSelectMode(state, isNeedPreform);
        } else {
            this.mMediaActivity.getmX8LocalMediaFragment().enterSelectMode(state, isNeedPreform);
        }
    }

    public void currentFragmentType() {
        if (this.mMediaActivity != null && this.mMediaActivity.getFragmentList() != null) {
            int currentPosition = this.mMediaActivity.getTlTitleCategoly().getSelectedTabPosition();
            if (this.mMediaActivity.getmX8CameraFragment() == this.mMediaActivity.getFragmentList().get(currentPosition)) {
                X9HandleType.fragmentType = X9HandleType.FragmentType.CAMERA;
            } else {
                X9HandleType.fragmentType = X9HandleType.FragmentType.LOCAL_MEDIA_LIB;
            }
        }
    }

    public void switchLoadMedia() {
        if (X9HandleType.isCameraView()) {
            if (StateManager.getInstance().getCamera().getToken() < 0) {
                this.mMediaActivity.getmX8CameraFragment().showProgress(false);
                this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(true);
                X8ToastUtil.showToast(this.mMediaActivity.getBaseContext(), this.mMediaActivity.getBaseContext().getString(C0885R.string.x8_album_connect_camera), 0);
                return;
            } else if (StateManager.getInstance().getCamera().getToken() > 0 && !this.mDataManager.isX9CameraLoad()) {
                if (this.isFirstEnterCamera) {
                    AutoCameraStateADV stateADV = StateManager.getInstance().getCamera().getAutoCameraStateADV();
                    if (stateADV.isNoTFCard()) {
                        this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(isModelListEmpty(true));
                        this.mMediaActivity.showSelectBtn();
                        return;
                    }
                    forCameraFolder();
                    this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(false);
                    return;
                }
                return;
            } else if (StateManager.getInstance().getCamera().getToken() < 0 && this.mDataManager.isX9CameraLoad()) {
                removeCameraDefaultVaribale();
                this.mMediaActivity.getmX8CameraFragment().reshAdapter();
                this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(isModelListEmpty(true));
                this.mMediaActivity.showSelectBtn();
                return;
            } else {
                this.mMediaActivity.getmX8CameraFragment().reshAdapter();
                this.mMediaActivity.showSelectBtn();
                this.mMediaActivity.getmX8CameraFragment().showProgress(false);
                return;
            }
        }
        LogUtil.m1330d("X8MediaPresenter", "switchLoadMedia: 3" + this.mDataManager.isX9LocalLoad());
        this.handler.postDelayed(new Runnable() { // from class: com.fimi.app.x8s.ui.presenter.X8MediaPresenter.2
            @Override // java.lang.Runnable
            public void run() {
                if (X8MediaPresenter.this.mDataManager.isX9LocalLoad()) {
                    X8MediaPresenter.this.mMediaActivity.getmX8LocalMediaFragment().reshAdapter();
                    X8MediaPresenter.this.mMediaActivity.showSelectBtn();
                    return;
                }
                X8MediaPresenter.this.forEachFile(DirectoryPath.getX8LocalMedia());
            }
        }, 500L);
    }

    public boolean isModelListEmpty() {
        if (X9HandleType.isCameraView()) {
            boolean ret = this.mMediaActivity.getmX8CameraFragment().isModelListEmpty();
            return ret;
        }
        boolean ret2 = this.mMediaActivity.getmX8LocalMediaFragment().isModelListEmpty();
        return ret2;
    }

    public boolean isModelListEmpty(boolean isCamera) {
        if (isCamera) {
            boolean ret = this.mMediaActivity.getmX8CameraFragment().isModelListEmpty();
            return ret;
        }
        boolean ret2 = this.mMediaActivity.getmX8LocalMediaFragment().isModelListEmpty();
        return ret2;
    }

    public void onDisConnect() {
        removeCameraDefaultVaribale();
        this.mMediaActivity.getmX8CameraFragment().noDataTipCallback(true);
        this.mMediaActivity.getmX8CameraFragment().reshAdapter();
        this.mMediaActivity.showSelectBtn();
        this.mMediaActivity.getRlTopBar().setVisibility(8);
        this.mMediaActivity.getmX8CameraFragment().onDisConnect();
    }

    public void setCameraConnectedState(IMediaCameraConnected iMediaCameraConnected) {
        this.iMediaCameraConnected = iMediaCameraConnected;
    }
}
