package com.fimi.album.p007ui;

import android.view.KeyEvent;
import android.widget.RelativeLayout;
import com.example.album.C0522R;
import com.fimi.album.biz.AlbumConstant;
import com.fimi.album.iview.IVideoPlayer;
import com.fimi.album.presenter.VideoPlayerPresneter;
import com.fimi.album.widget.CustomVideoView;
import com.fimi.kernel.base.BaseActivity;
/* renamed from: com.fimi.album.ui.VideoPlayActivity */
/* loaded from: classes.dex */
public class VideoPlayActivity extends BaseActivity implements CustomVideoView.VideoPlayerListener, IVideoPlayer {
    private CustomVideoView mCustomVideoView;
    private RelativeLayout mRl;
    private String mUrl;
    private VideoPlayerPresneter mVideoPlayerPresneter;

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        this.mRl = (RelativeLayout) findViewById(C0522R.C0526id.activity_video_play);
        this.mUrl = getIntent().getStringExtra(AlbumConstant.VIDEOPLARURL);
        this.mVideoPlayerPresneter = new VideoPlayerPresneter(this);
        this.mCustomVideoView = new CustomVideoView(this, this.mRl);
        this.mCustomVideoView.setDataSource(this.mUrl);
        this.mCustomVideoView.setListener(this);
        this.mRl.addView(this.mCustomVideoView);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0522R.layout.album_activity_video_play;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.mVideoPlayerPresneter != null) {
            this.mVideoPlayerPresneter.startPlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.mVideoPlayerPresneter != null) {
            this.mVideoPlayerPresneter.removeCallBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mCustomVideoView.destory();
        this.mRl.removeView(this.mCustomVideoView);
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onBufferUpdate(int time) {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onClickFullScreenBtn() {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onClickVideo() {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onClickBackBtn() {
        finish();
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onClickPlay() {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onAdVideoLoadSuccess() {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onAdVideoLoadFailed() {
    }

    @Override // com.fimi.album.widget.CustomVideoView.VideoPlayerListener
    public void onAdVideoLoadComplete() {
        finish();
    }

    @Override // com.fimi.album.iview.IVideoPlayer
    public void timeFunction() {
        if (this.mCustomVideoView != null) {
            this.mCustomVideoView.timeFunction();
        }
    }
}
