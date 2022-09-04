package com.fimi.app.x8s.p011ui.album.x8s;

import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.design.widget.TabLayout;
import android.support.p001v4.app.Fragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.album.C0522R;
import com.fimi.album.biz.X9HandleType;
import com.fimi.album.iview.ISelectData;
import com.fimi.album.widget.HackyViewPager;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.CategoryAdapter;
import com.fimi.app.x8s.manager.X8FpvManager;
import com.fimi.app.x8s.p011ui.presenter.X8MediaPresenter;
import com.fimi.app.x8s.tools.X8sNavigationBarUtils;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.host.HostLogBack;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.base.EventMessage;
import com.fimi.kernel.connect.session.NoticeManager;
import com.fimi.kernel.utils.DirectoryPath;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.LogUtil;
import com.fimi.kernel.utils.NumberUtil;
import com.fimi.widget.CustomLoadManage;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.modulestate.StateManager;
import java.util.LinkedList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* renamed from: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity */
/* loaded from: classes.dex */
public class X8MediaActivity extends BaseActivity implements ISelectData, X8MediaPresenter.IMediaCameraConnected {
    private static final String TAG = "X8MediaActivity";
    private boolean isFirstLoadLocalMedia;
    Button mBtnCancle;
    Button mBtnIsSelect;
    private CategoryAdapter mCategolyAdapter;
    private List<Fragment> mFragmentList;
    HackyViewPager mHackyViewPager;
    ImageButton mIbtnReturn;
    RelativeLayout mRlHead;
    RelativeLayout mRlTopBar;
    TabLayout mTlTitleCategoly;
    TextView mTvMediaSelect;
    TextView mTvSelectTitle;
    private X8CameraFragment mX8CameraFragment;
    private X8LocalMediaLocalFragment mX8LocalMediaFragment;
    private X8MediaPresenter mX8MediaPresenter;

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        X8sNavigationBarUtils.hideBottomUIMenu(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            X8sNavigationBarUtils.hideBottomUIMenu(this);
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0885R.layout.activity_x8_media;
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        X8FpvManager.isUpdateing = true;
        initView();
        getX9MediaPresenter();
        this.mX8MediaPresenter.setCameraConnectedState(this);
        this.mX8CameraFragment = new X8CameraFragment();
        this.mX8LocalMediaFragment = new X8LocalMediaLocalFragment();
        this.mFragmentList = new LinkedList();
        this.mFragmentList.add(this.mX8CameraFragment);
        this.mFragmentList.add(this.mX8LocalMediaFragment);
        this.mCategolyAdapter = new CategoryAdapter(getSupportFragmentManager(), this.mFragmentList);
        this.mHackyViewPager.setAdapter(this.mCategolyAdapter);
        this.mHackyViewPager.setOverScrollMode(2);
        this.mTlTitleCategoly.setupWithViewPager(this.mHackyViewPager);
        for (int index = 0; index < this.mTlTitleCategoly.getTabCount(); index++) {
            View tabItem = LayoutInflater.from(this).inflate(C0885R.layout.x8_tab_view, (ViewGroup) null);
            if (StateManager.getInstance().getCamera().getToken() > 0) {
                if (index == 0) {
                    changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.x8_media_tab_select), 0, C0885R.string.x8_online_media);
                    AutoCameraStateADV stateADV = StateManager.getInstance().getCamera().getAutoCameraStateADV();
                    if (stateADV.isNoTFCard()) {
                        X8ToastUtil.showToast(this, getString(C0885R.string.x8_album_no_file), 0);
                    }
                } else {
                    changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.x8_media_tab_unselect), 4, C0885R.string.x8_local_media);
                }
            } else if (index == 0) {
                changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.x8_media_tab_unselect), 0, C0885R.string.x8_online_media);
            } else {
                changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.x8_media_tab_select), 0, C0885R.string.x8_local_media);
            }
            TabLayout.Tab tab = this.mTlTitleCategoly.getTabAt(index);
            if (tab != null) {
                tab.setCustomView(tabItem);
            }
        }
    }

    private void initView() {
        this.mIbtnReturn = (ImageButton) findViewById(C0885R.C0889id.ibtn_return);
        this.mTvMediaSelect = (TextView) findViewById(C0885R.C0889id.tv_media_select);
        this.mTlTitleCategoly = (TabLayout) findViewById(C0885R.C0889id.tl_title_categoly);
        this.mRlHead = (RelativeLayout) findViewById(C0885R.C0889id.rl_head);
        this.mHackyViewPager = (HackyViewPager) findViewById(C0885R.C0889id.viewpaper);
        this.mBtnCancle = (Button) findViewById(C0885R.C0889id.btn_cancle);
        this.mBtnIsSelect = (Button) findViewById(C0885R.C0889id.btn_is_select);
        this.mTvSelectTitle = (TextView) findViewById(C0885R.C0889id.tv_select_title);
        this.mRlTopBar = (RelativeLayout) findViewById(C0885R.C0889id.rl_top_bar);
        this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select);
        FontUtil.changeFontLanTing(getAssets(), this.mTvMediaSelect, this.mBtnCancle, this.mBtnIsSelect, this.mTvSelectTitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeViewVariablw(View view, int resColor, int indicatorState, int resStr) {
        TextView tvTitleDescription = (TextView) view.findViewById(C0885R.C0889id.tv_title_desprition);
        tvTitleDescription.setTextColor(resColor);
        if (resStr != 0) {
            tvTitleDescription.setText(resStr);
        }
        FontUtil.changeFontLanTing(getAssets(), tvTitleDescription);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.mIbtnReturn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (X8MediaFileDownloadManager.getInstance().hasDownloading()) {
                    X8MediaActivity.this.showDialogTip();
                } else {
                    X8MediaActivity.this.finish();
                }
            }
        });
        this.mTlTitleCategoly.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.2
            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                X8MediaActivity.this.changeViewVariablw(tab.getCustomView(), X8MediaActivity.this.getResources().getColor(C0885R.C0887color.x8_media_tab_select), 0, 0);
                X8MediaActivity.this.getX9MediaPresenter().currentFragmentType();
                if (X8MediaActivity.this.isFirstLoadLocalMedia) {
                    X8MediaActivity.this.isFirstLoadLocalMedia = false;
                } else {
                    X8MediaActivity.this.getX9MediaPresenter().switchLoadMedia();
                }
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
                X8MediaActivity.this.changeViewVariablw(tab.getCustomView(), X8MediaActivity.this.getResources().getColor(C0885R.C0887color.x8_media_tab_unselect), 4, 0);
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }
        });
        this.mTvMediaSelect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8MediaActivity.this.getX9MediaPresenter().enterSelectMode(true, true);
                if (X9HandleType.isCameraView()) {
                    X8MediaActivity.this.mTvSelectTitle.setText(X8MediaActivity.this.getString(C0885R.string.album_select_camera_title, new Object[]{"0", "0KB"}));
                } else {
                    X8MediaActivity.this.mTvSelectTitle.setText(X8MediaActivity.this.getString(C0885R.string.album_select_title, new Object[]{"0"}));
                }
                X8MediaActivity.this.mRlTopBar.setVisibility(0);
                X8MediaActivity.this.mHackyViewPager.setScrollble(false);
                X8MediaActivity.this.changeBtnSelectState(X8MediaActivity.this.getString(C0522R.string.media_select_all), X8MediaActivity.this.mBtnIsSelect);
                X8MediaActivity.this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select_unclick);
            }
        });
        this.mBtnCancle.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8MediaActivity.this.getX9MediaPresenter().enterSelectMode(false, true);
                X8MediaActivity.this.mHackyViewPager.setScrollble(true);
                X8MediaActivity.this.mRlTopBar.setVisibility(8);
            }
        });
        this.mBtnIsSelect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (X8MediaActivity.this.mBtnIsSelect.getText().equals(X8MediaActivity.this.getString(C0522R.string.media_select_all))) {
                    X8MediaActivity.this.getX9MediaPresenter().selectBtn(true);
                    X8MediaActivity.this.changeBtnSelectState(X8MediaActivity.this.getString(C0522R.string.media_select_all_no), X8MediaActivity.this.mBtnIsSelect);
                    X8MediaActivity.this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select_press);
                    return;
                }
                X8MediaActivity.this.getX9MediaPresenter().selectBtn(false);
                X8MediaActivity.this.changeBtnSelectState(X8MediaActivity.this.getString(C0522R.string.media_select_all), X8MediaActivity.this.mBtnIsSelect);
                X8MediaActivity.this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select_unclick);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBtnSelectState(String changeText, TextView textView) {
        textView.setText(changeText);
    }

    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mHackyViewPager.setCurrentItem(0);
        getmX8LocalMediaFragment().unRegisterReciver();
        getmX8CameraFragment().unRegisterReciver();
        X8MediaFileDownloadManager.getInstance().stopAllDownload();
        X8MediaThumDownloadManager.getInstance().stopDownload();
        NoticeManager.getInstance().removeALLMediaListener();
        X8FpvManager.isUpdateing = false;
        EventBus.getDefault().unregister(this);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void selectSize(int size, long capacity) {
        String capacityStr;
        float capacityfloat;
        if (X9HandleType.isCameraView()) {
            float capacityfloat2 = ((float) capacity) / 1024.0f;
            if (capacityfloat2 > 1024.0f) {
                if (capacityfloat2 / 1024.0f > 1024.0f) {
                    capacityStr = NumberUtil.decimalPointStr(capacityfloat / 1024.0f, 1) + "G";
                } else {
                    capacityStr = NumberUtil.decimalPointStr(capacityfloat, 1) + "M";
                }
            } else {
                capacityStr = NumberUtil.decimalPointStr(capacityfloat2, 1) + "KB";
            }
            if (size == 0) {
                this.mTvSelectTitle.setText(getString(C0885R.string.album_select_camera_title, new Object[]{size + "", "0KB"}));
            } else {
                this.mTvSelectTitle.setText(getString(C0885R.string.album_select_camera_title, new Object[]{size + "", capacityStr}));
            }
        } else {
            this.mTvSelectTitle.setText(getString(C0885R.string.album_select_title, new Object[]{size + ""}));
        }
        getX9MediaPresenter().selectFileSize(size);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void enterSelectMode() {
        this.mRlTopBar.setVisibility(0);
        getX9MediaPresenter().enterSelectMode(true, true);
        LogUtil.m1326i(TAG, "enterSelectMode: ");
    }

    @Override // com.fimi.album.iview.ISelectData
    public void quitSelectMode() {
        this.mRlTopBar.setVisibility(8);
        this.mHackyViewPager.setScrollble(true);
        getX9MediaPresenter().enterSelectMode(false, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void deleteFile() {
        this.mRlTopBar.setVisibility(8);
        this.mHackyViewPager.setScrollble(true);
        getX9MediaPresenter().enterSelectMode(false, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void allSelectMode(boolean isAll) {
        if (isAll) {
            changeBtnSelectState(getString(C0522R.string.media_select_all_no), this.mBtnIsSelect);
            this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select_press);
            return;
        }
        changeBtnSelectState(getString(C0522R.string.media_select_all), this.mBtnIsSelect);
        this.mBtnIsSelect.setBackgroundResource(C0885R.C0888drawable.x8_ablum_top_select_unclick);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void startDownload() {
        this.mRlTopBar.setVisibility(8);
        this.mHackyViewPager.setScrollble(true);
        getX9MediaPresenter().enterSelectMode(false, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void onDeleteComplete() {
        showSelectBtn();
    }

    @Override // com.fimi.album.iview.ISelectData
    public void initComplete(boolean isCamera) {
        if (isCamera) {
            getX9MediaPresenter().removeCameraDefaultVaribale();
            getX9MediaPresenter().forCameraFolder();
        } else {
            getX9MediaPresenter().reDefaultVaribale();
            getX9MediaPresenter().forEachFile(DirectoryPath.getX8LocalMedia());
        }
        if (StateManager.getInstance().getCamera().getToken() > 0 && isCamera) {
            this.mHackyViewPager.setCurrentItem(0);
        } else if (StateManager.getInstance().getCamera().getToken() < 0 && !isCamera) {
            this.isFirstLoadLocalMedia = true;
            this.mHackyViewPager.setCurrentItem(1);
        }
    }

    @Override // com.fimi.album.iview.ISelectData
    public void addSingleFile() {
        this.mTvMediaSelect.setVisibility(0);
        getmX8LocalMediaFragment().noDataTipCallback(false);
    }

    public List<Fragment> getFragmentList() {
        return this.mFragmentList;
    }

    public TabLayout getTlTitleCategoly() {
        return this.mTlTitleCategoly;
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (this.mRlTopBar.getVisibility() == 0) {
                getX9MediaPresenter().enterSelectMode(false, true);
                this.mHackyViewPager.setScrollble(true);
                this.mRlTopBar.setVisibility(8);
                return true;
            } else if (X8MediaFileDownloadManager.getInstance().hasDownloading()) {
                showDialogTip();
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    public void showDialogTip() {
        X8DoubleCustomDialog doubleCustomDialog = new X8DoubleCustomDialog(this, getString(C0885R.string.x8_album_warn_tip), getString(C0885R.string.x8_album_exit_tip), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.ui.album.x8s.X8MediaActivity.6
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                X8MediaActivity.this.finish();
            }
        });
        doubleCustomDialog.show();
    }

    public X8MediaPresenter getX9MediaPresenter() {
        if (this.mX8MediaPresenter == null) {
            this.mX8MediaPresenter = new X8MediaPresenter(this);
        }
        return this.mX8MediaPresenter;
    }

    public void showSelectBtn() {
        if (this.mX8MediaPresenter.isModelListEmpty()) {
            this.mTvMediaSelect.setVisibility(4);
        } else {
            this.mTvMediaSelect.setVisibility(0);
        }
    }

    public RelativeLayout getRlTopBar() {
        return this.mRlTopBar;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState, PersistableBundle outPersistentState) {
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
    }

    public X8CameraFragment getmX8CameraFragment() {
        return this.mX8CameraFragment;
    }

    public X8LocalMediaLocalFragment getmX8LocalMediaFragment() {
        return this.mX8LocalMediaFragment;
    }

    @Override // com.fimi.app.x8s.p011ui.presenter.X8MediaPresenter.IMediaCameraConnected
    public void onCameraConnectedState(boolean isConnected) {
        if (!isConnected) {
            this.mX8MediaPresenter.onDisConnect();
            X8MediaFileDownloadManager.getInstance().stopAllDownload();
            CustomLoadManage.dismiss();
            HostLogBack.getInstance().writeLog("Alanqiu  ==========onCameraConnectedState:" + StateManager.getInstance().getCamera().getToken());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void eventBusToCameraState(EventMessage eventMessage) {
        if (eventMessage != null && eventMessage.getKey() == Constants.X8_CAMERA_STATE_EVENT_KEY) {
            boolean isShowProgress = ((Boolean) eventMessage.getMessage()).booleanValue();
            this.mX8CameraFragment.showProgress(isShowProgress);
        }
    }
}
