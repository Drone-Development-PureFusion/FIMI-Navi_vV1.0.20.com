package com.fimi.album.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.example.album.C0522R;
import com.fimi.kernel.utils.LogUtil;
import java.util.Formatter;
import java.util.Locale;
/* loaded from: classes.dex */
public class CustomVideoView extends RelativeLayout implements View.OnClickListener, TextureView.SurfaceTextureListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnInfoListener, MediaPlayer.OnErrorListener, MediaPlayer.OnBufferingUpdateListener, SeekBar.OnSeekBarChangeListener {
    private static final int LOAD_TOTAL_COUNT = 3;
    private static final int STATE_ERROR = 1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSE = 2;
    private static final int STATE_PLAYING = 1;
    private static final String TAG = "CustomVideoView";
    private static final int TIME_INVAL = 1000;
    private static final int TIME_MSG = 1;
    private static float VIDEO_HEIGHT_PERCENT = 0.5625f;
    private boolean isMute;
    private VideoPlayerListener listener;
    private RelativeLayout mBottomPlayRl;
    private int mCurrentCount;
    private TextView mCurrentTimeTv;
    private int mDestationHeight;
    private StringBuilder mFormatBuilder;
    private Formatter mFormatter;
    private boolean mIsComplete;
    private boolean mIsRealPause;
    private ProgressBar mLoadingBar;
    private ImageButton mMiniPlayBtn;
    private ViewGroup mParentContainar;
    private ImageButton mPlayBackIBtn;
    private SeekBar mPlaySb;
    private RelativeLayout mPlayerView;
    private ScreenEventReciver mScreenEventReciver;
    private int mScreenWidth;
    private LinearLayout mTopBarLl;
    private TextView mTotalTimeTv;
    private String mUrl;
    private TextureView mVideoView;
    private MediaPlayer mediaPlayer;
    private TextView nameTv;
    private Surface videoSurface;
    private boolean canPlay = true;
    private int showTopBottomBarTime = 0;
    private int playerState = 0;
    private boolean isUpdateProgressed = false;
    private Handler mHandler = new Handler() { // from class: com.fimi.album.widget.CustomVideoView.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 1:
                    if (CustomVideoView.this.isPlaying()) {
                        if (!CustomVideoView.this.isUpdateProgressed) {
                            int currentPosition = (int) (Math.round(CustomVideoView.this.getCurrentPosition() / 1000.0d) * 1000);
                            CustomVideoView.this.mPlaySb.setProgress(currentPosition);
                            String formateTime = CustomVideoView.this.setTimeFormatter(currentPosition);
                            CustomVideoView.this.mCurrentTimeTv.setText(formateTime);
                        }
                        if (CustomVideoView.this.listener != null) {
                            CustomVideoView.this.listener.onBufferUpdate(CustomVideoView.this.getCurrentPosition());
                        }
                        sendEmptyMessageDelayed(1, 1000L);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");

    /* loaded from: classes.dex */
    public interface ADFrameImageLoadListener {
        void onStartFrameLoad(String str, ImageLoaderListener imageLoaderListener);
    }

    /* loaded from: classes.dex */
    public interface ImageLoaderListener {
        void onLoadingComplete(Bitmap bitmap);
    }

    /* loaded from: classes.dex */
    public interface VideoPlayerListener {
        void onAdVideoLoadComplete();

        void onAdVideoLoadFailed();

        void onAdVideoLoadSuccess();

        void onBufferUpdate(int i);

        void onClickBackBtn();

        void onClickFullScreenBtn();

        void onClickPlay();

        void onClickVideo();
    }

    public void timeFunction() {
        if (this.mBottomPlayRl.getVisibility() == 0) {
            LogUtil.m1326i(TAG, "handleMessage:visible");
            this.showTopBottomBarTime++;
            if (this.showTopBottomBarTime >= 5) {
                this.showTopBottomBarTime = 0;
                showBar(false);
                return;
            }
            return;
        }
        this.showTopBottomBarTime = 0;
    }

    public CustomVideoView(Context context, ViewGroup parentContainer) {
        super(context);
        this.mParentContainar = parentContainer;
        initDate();
        initView();
        registerBroadcastReceiver();
    }

    private void initDate() {
        DisplayMetrics dm = new DisplayMetrics();
        WindowManager wm = (WindowManager) getContext().getSystemService("window");
        wm.getDefaultDisplay().getMetrics(dm);
        this.mScreenWidth = dm.widthPixels;
        this.mDestationHeight = (int) (this.mScreenWidth * VIDEO_HEIGHT_PERCENT);
        this.mFormatBuilder = new StringBuilder();
        this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
    }

    private void initView() {
        LayoutInflater layoutInflater = LayoutInflater.from(getContext());
        this.mPlayerView = (RelativeLayout) layoutInflater.inflate(C0522R.layout.album_custom_video_view, this);
        this.mPlayerView.setOnClickListener(this);
        this.mLoadingBar = (ProgressBar) this.mPlayerView.findViewById(C0522R.C0526id.load_iv);
        this.mVideoView = (TextureView) this.mPlayerView.findViewById(C0522R.C0526id.play_video_textureview);
        this.mVideoView.setOnClickListener(this);
        this.mVideoView.setKeepScreenOn(true);
        this.mVideoView.setSurfaceTextureListener(this);
        this.mTopBarLl = (LinearLayout) this.mPlayerView.findViewById(C0522R.C0526id.shoto_top_tab_ll);
        this.mBottomPlayRl = (RelativeLayout) this.mPlayerView.findViewById(C0522R.C0526id.bottom_play_rl);
        this.mMiniPlayBtn = (ImageButton) this.mBottomPlayRl.findViewById(C0522R.C0526id.play_btn);
        this.mPlaySb = (SeekBar) this.mBottomPlayRl.findViewById(C0522R.C0526id.play_sb);
        this.mPlaySb.setOnSeekBarChangeListener(this);
        this.mMiniPlayBtn.setOnClickListener(this);
        this.mCurrentTimeTv = (TextView) this.mBottomPlayRl.findViewById(C0522R.C0526id.time_current_tv);
        this.mTotalTimeTv = (TextView) this.mBottomPlayRl.findViewById(C0522R.C0526id.total_time_tv);
        showBar(false);
        this.nameTv = (TextView) findViewById(C0522R.C0526id.photo_name_tv);
        this.mPlayBackIBtn = (ImageButton) findViewById(C0522R.C0526id.media_back_btn);
        this.mPlayBackIBtn.setOnClickListener(this);
        this.mPlayerView.setOnClickListener(this);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(this.mScreenWidth, this.mDestationHeight);
        params.addRule(13);
        this.mPlayerView.setLayoutParams(params);
    }

    public void setDataSource(String url) {
        this.mUrl = url;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C0522R.C0526id.play_video_textureview) {
            if (this.mTopBarLl.getVisibility() == 0) {
                this.mTopBarLl.setVisibility(8);
                this.mBottomPlayRl.setVisibility(8);
                return;
            }
            this.mTopBarLl.setVisibility(0);
            this.mBottomPlayRl.setVisibility(0);
        } else if (view.getId() == C0522R.C0526id.play_btn) {
            if (this.playerState == 2) {
                seekAndResume(this.mPlaySb.getProgress());
            } else if (this.playerState == 0) {
                load();
            } else {
                pause();
            }
        } else if (view.getId() == C0522R.C0526id.media_back_btn && this.listener != null) {
            this.listener.onClickBackBtn();
        }
    }

    private void registerBroadcastReceiver() {
        if (this.mScreenEventReciver == null) {
            this.mScreenEventReciver = new ScreenEventReciver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            getContext().registerReceiver(this.mScreenEventReciver, intentFilter);
        }
    }

    private void unRegisterBroadcastReceiver() {
        if (this.mScreenEventReciver != null) {
            getContext().unregisterReceiver(this.mScreenEventReciver);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i1) {
        LogUtil.m1330d(TAG, "onSurfaceTextureAvailable");
        this.videoSurface = new Surface(surfaceTexture);
        checkMediaPlayer();
        this.mediaPlayer.setSurface(this.videoSurface);
        load();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i1) {
        LogUtil.m1330d(TAG, "onSurfaceTextureSizeChanged");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        Log.d(TAG, "onVisibilityChanged: " + visibility + "," + this.mMiniPlayBtn.getVisibility());
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0 && this.playerState == 2) {
            if (isRealPause() || isComplete()) {
                pause();
                return;
            } else {
                resume();
                return;
            }
        }
        pause();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        LogUtil.m1326i(TAG, "onPrepare");
        showPlayView();
        this.mPlaySb.setMax(getDuration());
        this.mTotalTimeTv.setText(setTimeFormatter(getDuration()));
        this.mediaPlayer = mediaPlayer;
        if (this.mediaPlayer != null) {
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.mCurrentCount = 0;
            if (this.listener != null) {
                this.listener.onAdVideoLoadSuccess();
            }
            setCurrentPlayState(2);
            resume();
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mp) {
        LogUtil.m1326i(TAG, "onCompletion");
        if (this.listener != null) {
            this.listener.onAdVideoLoadComplete();
        }
        playBack();
        setIsComplete(true);
        setIsRealPause(true);
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i1) {
        return false;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mp, int what, int extra) {
        LogUtil.m1326i(TAG, "do error:" + what + ",extra:" + extra);
        this.playerState = 1;
        this.mediaPlayer = mp;
        if (this.mediaPlayer != null) {
            this.mediaPlayer.reset();
        }
        if (this.mCurrentCount >= 3) {
            showPauseView(false);
            if (this.listener != null) {
                this.listener.onAdVideoLoadFailed();
            }
        }
        stop();
        return false;
    }

    public void load() {
        LogUtil.m1326i(TAG, "load:" + this.mUrl);
        if (this.playerState == 0) {
            showLoadingView();
            try {
                setCurrentPlayState(0);
                checkMediaPlayer();
                mute(true);
                this.mediaPlayer.setDataSource(this.mUrl);
                this.nameTv.setText(this.mUrl.substring(this.mUrl.lastIndexOf("/") + 1));
                this.mediaPlayer.prepareAsync();
            } catch (Exception e) {
                e.printStackTrace();
                stop();
            }
        }
    }

    public void stop() {
        LogUtil.m1326i(TAG, "do stop");
        if (this.mediaPlayer != null) {
            this.mediaPlayer.reset();
            this.mediaPlayer.setOnSeekCompleteListener(null);
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        this.mHandler.removeCallbacksAndMessages(null);
        setCurrentPlayState(0);
        if (this.mCurrentCount <= 3) {
            this.mCurrentCount++;
            load();
            return;
        }
        showPauseView(false);
    }

    public void pause() {
        if (this.playerState == 1) {
            LogUtil.m1326i(TAG, "do full pause");
            setCurrentPlayState(2);
            if (isPlaying()) {
                this.mediaPlayer.pause();
                if (!this.canPlay) {
                    this.mediaPlayer.seekTo(0);
                }
            }
            showPauseView(false);
            this.mHandler.removeCallbacksAndMessages(null);
        }
    }

    public void resume() {
        if (this.playerState == 2) {
            mute(false);
            LogUtil.m1326i(TAG, "resume");
            if (!isPlaying()) {
                entryResumeState();
                this.mediaPlayer.setOnSeekCompleteListener(null);
                this.mediaPlayer.start();
                this.mHandler.sendEmptyMessage(1);
                showPauseView(true);
                return;
            }
            showPauseView(false);
        }
    }

    public void destory() {
        LogUtil.m1326i(TAG, "do destory");
        if (this.mediaPlayer != null) {
            this.mediaPlayer.setOnSeekCompleteListener(null);
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        setCurrentPlayState(0);
        this.mCurrentCount = 0;
        setIsComplete(false);
        setIsRealPause(false);
        unRegisterBroadcastReceiver();
        this.mHandler.removeCallbacksAndMessages(null);
        showPauseView(false);
    }

    public void playBack() {
        LogUtil.m1326i(TAG, " do play back");
        setCurrentPlayState(2);
        this.mHandler.removeCallbacksAndMessages(null);
        if (this.mediaPlayer != null) {
            this.mediaPlayer.setOnSeekCompleteListener(null);
            this.mediaPlayer.seekTo(0);
            this.mediaPlayer.pause();
        }
        showPauseView(false);
    }

    private void setCurrentPlayState(int state) {
        this.playerState = state;
    }

    public boolean isPlaying() {
        return this.mediaPlayer != null && this.mediaPlayer.isPlaying();
    }

    private synchronized void checkMediaPlayer() {
        if (this.mediaPlayer == null) {
            this.mediaPlayer = createMediaPlayer();
        }
    }

    private MediaPlayer createMediaPlayer() {
        this.mediaPlayer = new MediaPlayer();
        this.mediaPlayer.reset();
        this.mediaPlayer.setOnPreparedListener(this);
        this.mediaPlayer.setOnCompletionListener(this);
        this.mediaPlayer.setOnInfoListener(this);
        this.mediaPlayer.setOnErrorListener(this);
        this.mediaPlayer.setAudioStreamType(3);
        if (this.videoSurface != null && this.videoSurface.isValid()) {
            this.mediaPlayer.setSurface(this.videoSurface);
        } else {
            stop();
        }
        return this.mediaPlayer;
    }

    private void entryResumeState() {
        this.canPlay = true;
        setCurrentPlayState(1);
        setIsRealPause(false);
        setIsComplete(false);
    }

    public void setIsComplete(boolean isComplete) {
        this.mIsComplete = isComplete;
    }

    public void setIsRealPause(boolean isRealPause) {
        this.mIsRealPause = isRealPause;
    }

    public void mute(boolean mute) {
        this.isMute = mute;
        if (this.mediaPlayer != null && this.audioManager != null) {
            float volume = this.isMute ? 0.0f : 1.0f;
            this.mediaPlayer.setVolume(volume, volume);
        }
    }

    public void seekAndResume(int position) {
        if (this.mediaPlayer != null) {
            showPauseView(true);
            entryResumeState();
            this.mediaPlayer.seekTo(position);
            this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.fimi.album.widget.CustomVideoView.2
                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(MediaPlayer mp) {
                    LogUtil.m1330d(CustomVideoView.TAG, "do seek and resume");
                    CustomVideoView.this.mediaPlayer.start();
                    CustomVideoView.this.mHandler.sendEmptyMessage(1);
                }
            });
        }
    }

    public void seekAndPause(int position) {
        if (this.playerState == 1) {
            showPauseView(false);
            setCurrentPlayState(2);
            if (isPlaying()) {
                this.mediaPlayer.seekTo(position);
                this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.fimi.album.widget.CustomVideoView.3
                    @Override // android.media.MediaPlayer.OnSeekCompleteListener
                    public void onSeekComplete(MediaPlayer mp) {
                        LogUtil.m1330d(CustomVideoView.TAG, "do seek and pause");
                        CustomVideoView.this.mediaPlayer.pause();
                        CustomVideoView.this.mHandler.removeCallbacksAndMessages(null);
                    }
                });
            }
        }
    }

    private void showPauseView(boolean show) {
        this.mLoadingBar.setVisibility(8);
        this.mMiniPlayBtn.setImageResource(show ? C0522R.C0525drawable.album_btn_pause_media : C0522R.C0525drawable.album_icon_play_media);
    }

    private void showLoadingView() {
        this.mLoadingBar.setVisibility(0);
        this.mMiniPlayBtn.setImageResource(C0522R.C0525drawable.album_icon_play_media);
        this.showTopBottomBarTime = 0;
    }

    private void showPlayView() {
        this.mLoadingBar.setVisibility(8);
        this.mMiniPlayBtn.setImageResource(C0522R.C0525drawable.album_btn_pause_media);
        this.showTopBottomBarTime = 0;
    }

    private void showBar(boolean isShow) {
        int i = 0;
        this.mTopBarLl.setVisibility(isShow ? 0 : 8);
        RelativeLayout relativeLayout = this.mBottomPlayRl;
        if (!isShow) {
            i = 8;
        }
        relativeLayout.setVisibility(i);
    }

    public int getCurrentPosition() {
        if (this.mediaPlayer != null) {
            return this.mediaPlayer.getCurrentPosition();
        }
        return -1;
    }

    public int getDuration() {
        if (this.mediaPlayer != null) {
            return this.mediaPlayer.getDuration();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String setTimeFormatter(int timeMs) {
        int totalSeconds = timeMs / 1000;
        int seconds = totalSeconds % 60;
        int minutes = (totalSeconds / 60) % 60;
        int hours = totalSeconds / 3600;
        this.mFormatBuilder.setLength(0);
        return hours > 0 ? this.mFormatter.format("%d:%02d:%02d", Integer.valueOf(hours), Integer.valueOf(minutes), Integer.valueOf(seconds)).toString() : this.mFormatter.format("%02d:%02d", Integer.valueOf(minutes), Integer.valueOf(seconds)).toString();
    }

    public boolean isRealPause() {
        return this.mIsRealPause;
    }

    public boolean isComplete() {
        return this.mIsComplete;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        if (fromUser) {
            LogUtil.m1326i(TAG, "onProgressChanged:" + this.isUpdateProgressed);
            this.isUpdateProgressed = true;
            this.showTopBottomBarTime = 0;
            this.mCurrentTimeTv.setText(setTimeFormatter(seekBar.getProgress()));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        LogUtil.m1326i(TAG, "onStartTrackingTouch:" + this.isUpdateProgressed);
        this.isUpdateProgressed = true;
        this.showTopBottomBarTime = 0;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        LogUtil.m1326i(TAG, "onStopTrackingTouch:" + this.isUpdateProgressed);
        this.isUpdateProgressed = false;
        if (this.playerState == 1) {
            seekAndResume(seekBar.getProgress());
        }
    }

    public void setListener(VideoPlayerListener listener) {
        this.listener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ScreenEventReciver extends BroadcastReceiver {
        private ScreenEventReciver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.i(CustomVideoView.TAG, "onReceive: " + intent.getAction());
            String action = intent.getAction();
            char c = 65535;
            switch (action.hashCode()) {
                case -2128145023:
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        c = 1;
                        break;
                    }
                    break;
                case 823795052:
                    if (action.equals("android.intent.action.USER_PRESENT")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (CustomVideoView.this.playerState == 2) {
                        if (CustomVideoView.this.mIsRealPause) {
                            CustomVideoView.this.pause();
                            return;
                        } else {
                            CustomVideoView.this.resume();
                            return;
                        }
                    }
                    return;
                case 1:
                    if (CustomVideoView.this.playerState == 1) {
                        CustomVideoView.this.pause();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
