package com.fimi.album.p007ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.album.C0522R;
import com.fimi.album.biz.AlbumConstant;
import com.fimi.album.iview.ISelectData;
import com.fimi.album.p007ui.albumfragment.LocalFragment;
import com.fimi.album.presenter.MediaPresenter;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.utils.FontUtil;
/* renamed from: com.fimi.album.ui.MediaActivity */
/* loaded from: classes.dex */
public class MediaActivity extends BaseActivity implements ISelectData {
    private Button btnCancalAll;
    private ImageButton btnQuitActivity;
    private Button btnSelectAll;
    private Button btnmode;
    private ImageButton ibQuitMedia;
    private LocalFragment localFragment;
    private MediaPresenter mMediaPresenter;
    private ProgressBar mProgressBar;
    private RelativeLayout rlHeadDirection;
    private RelativeLayout rlMediaSelectTop;
    private RelativeLayout rootViewGroup;
    private TextView tvSelectModeSize;

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        this.mProgressBar = (ProgressBar) findViewById(C0522R.C0526id.loading);
        this.ibQuitMedia = (ImageButton) findViewById(C0522R.C0526id.media_back_btn);
        this.tvSelectModeSize = (TextView) findViewById(C0522R.C0526id.select_n_tv);
        this.rlHeadDirection = (RelativeLayout) findViewById(C0522R.C0526id.head_direction);
        this.rlMediaSelectTop = (RelativeLayout) findViewById(C0522R.C0526id.media_select_top_rl);
        this.btnSelectAll = (Button) findViewById(C0522R.C0526id.all_select_btn);
        this.btnCancalAll = (Button) findViewById(C0522R.C0526id.cancel_btn);
        this.btnmode = (Button) findViewById(C0522R.C0526id.media_select_btn);
        this.btnQuitActivity = (ImageButton) findViewById(C0522R.C0526id.media_back_btn);
        this.rootViewGroup = (RelativeLayout) findViewById(C0522R.C0526id.view_group);
        FontUtil.changeFontLanTing(getAssets(), this.btnmode, this.btnSelectAll, this.btnCancalAll, this.tvSelectModeSize);
        this.localFragment = (LocalFragment) getSupportFragmentManager().findFragmentById(C0522R.C0526id.media_fragment);
        if (this.localFragment == null) {
            this.localFragment = LocalFragment.obtaion();
            getSupportFragmentManager().beginTransaction().add(C0522R.C0526id.media_fragment, this.localFragment).commitAllowingStateLoss();
        }
        Intent intent = getIntent();
        String floderPath = null;
        if (intent != null) {
            floderPath = intent.getStringExtra(AlbumConstant.MEDIAPATH);
        }
        this.mMediaPresenter = new MediaPresenter(this);
        if (!TextUtils.isEmpty(floderPath)) {
            this.mMediaPresenter.forEachFile(floderPath);
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.ibQuitMedia.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity.this.finish();
            }
        });
        this.btnmode.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity.this.rlMediaSelectTop.setVisibility(0);
                MediaActivity.this.mMediaPresenter.enterSelectMode(true, true);
            }
        });
        this.btnSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaActivity.this.btnSelectAll.getText().equals(MediaActivity.this.getString(C0522R.string.media_select_all))) {
                    MediaActivity.this.mMediaPresenter.selectBtn(true);
                    MediaActivity.this.changeBtnSelectState(MediaActivity.this.getString(C0522R.string.media_select_all_no), MediaActivity.this.btnSelectAll);
                    return;
                }
                MediaActivity.this.mMediaPresenter.selectBtn(false);
                MediaActivity.this.changeBtnSelectState(MediaActivity.this.getString(C0522R.string.media_select_all), MediaActivity.this.btnSelectAll);
            }
        });
        this.btnCancalAll.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity.this.rlMediaSelectTop.setVisibility(8);
                MediaActivity.this.mMediaPresenter.enterSelectMode(false, true);
            }
        });
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0522R.layout.album_activity_main;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBtnSelectState(String changeText, Button button) {
        button.setText(changeText);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.mMediaPresenter.reDefaultVaribale();
        super.onDestroy();
    }

    @Override // com.fimi.album.iview.ISelectData
    public void selectSize(int size, long capacity) {
        changeShowSelectTextView(this.tvSelectModeSize, size, C0522R.string.media_select_n_item);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void enterSelectMode() {
        this.rlMediaSelectTop.setVisibility(0);
        this.mMediaPresenter.enterSelectMode(true, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void quitSelectMode() {
        this.rlMediaSelectTop.setVisibility(8);
        this.mMediaPresenter.enterSelectMode(false, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void deleteFile() {
        this.rlMediaSelectTop.setVisibility(8);
        this.mMediaPresenter.enterSelectMode(false, false);
    }

    @Override // com.fimi.album.iview.ISelectData
    public void allSelectMode(boolean isAll) {
    }

    @Override // com.fimi.album.iview.ISelectData
    public void startDownload() {
    }

    @Override // com.fimi.album.iview.ISelectData
    public void onDeleteComplete() {
    }

    @Override // com.fimi.album.iview.ISelectData
    public void initComplete(boolean isCamera) {
    }

    @Override // com.fimi.album.iview.ISelectData
    public void addSingleFile() {
    }

    public ProgressBar getmProgressBar() {
        return this.mProgressBar;
    }

    private void changeShowSelectTextView(TextView textView, int size, int resStr) {
        textView.setText(String.format(getString(resStr), Integer.valueOf(size)));
    }

    public LocalFragment getLocalFragment() {
        return this.localFragment;
    }
}
