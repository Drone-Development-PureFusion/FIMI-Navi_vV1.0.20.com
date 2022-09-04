package com.twitter.sdk.android.tweetui.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;
import com.twitter.sdk.android.tweetui.C2168R;
/* loaded from: classes2.dex */
public class VideoControlView extends FrameLayout {
    static final int FADE_DURATION_MS = 150;
    static final long PROGRESS_BAR_TICKS = 1000;
    private static final int SHOW_PROGRESS_MSG = 1001;
    TextView currentTime;
    TextView duration;
    @SuppressLint({"HandlerLeak"})
    private final Handler handler = new Handler() { // from class: com.twitter.sdk.android.tweetui.internal.VideoControlView.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1001 && VideoControlView.this.player != null) {
                VideoControlView.this.updateProgress();
                VideoControlView.this.updateStateControl();
                if (VideoControlView.this.isShowing() && VideoControlView.this.player.isPlaying()) {
                    Message msg2 = obtainMessage(1001);
                    sendMessageDelayed(msg2, 500L);
                }
            }
        }
    };
    MediaPlayerControl player;
    SeekBar seekBar;
    ImageButton stateControl;

    /* loaded from: classes2.dex */
    public interface MediaPlayerControl {
        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int i);

        void start();
    }

    public VideoControlView(Context context) {
        super(context);
    }

    public VideoControlView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public VideoControlView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setMediaPlayer(MediaPlayerControl player) {
        this.player = player;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initSubviews();
    }

    void initSubviews() {
        LayoutInflater inflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        inflater.inflate(C2168R.layout.tw__video_control, this);
        this.stateControl = (ImageButton) findViewById(C2168R.C2172id.tw__state_control);
        this.currentTime = (TextView) findViewById(C2168R.C2172id.tw__current_time);
        this.duration = (TextView) findViewById(C2168R.C2172id.tw__duration);
        this.seekBar = (SeekBar) findViewById(C2168R.C2172id.tw__progress);
        this.seekBar.setMax(1000);
        this.seekBar.setOnSeekBarChangeListener(createProgressChangeListener());
        this.stateControl.setOnClickListener(createStateControlClickListener());
        setDuration(0);
        setCurrentTime(0);
        setProgress(0, 0, 0);
    }

    View.OnClickListener createStateControlClickListener() {
        return new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.internal.VideoControlView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoControlView.this.player.isPlaying()) {
                    VideoControlView.this.player.pause();
                } else {
                    VideoControlView.this.player.start();
                }
                VideoControlView.this.show();
            }
        };
    }

    SeekBar.OnSeekBarChangeListener createProgressChangeListener() {
        return new SeekBar.OnSeekBarChangeListener() { // from class: com.twitter.sdk.android.tweetui.internal.VideoControlView.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    int duration = VideoControlView.this.player.getDuration();
                    long position = (duration * progress) / 1000;
                    VideoControlView.this.player.seekTo((int) position);
                    VideoControlView.this.setCurrentTime((int) position);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoControlView.this.handler.removeMessages(1001);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoControlView.this.handler.sendEmptyMessage(1001);
            }
        };
    }

    void updateProgress() {
        int duration = this.player.getDuration();
        int currentTime = this.player.getCurrentPosition();
        int bufferPercentage = this.player.getBufferPercentage();
        setDuration(duration);
        setCurrentTime(currentTime);
        setProgress(currentTime, duration, bufferPercentage);
    }

    void setDuration(int durationMillis) {
        this.duration.setText(MediaTimeUtils.getPlaybackTime(durationMillis));
    }

    void setCurrentTime(int currentTimeMillis) {
        this.currentTime.setText(MediaTimeUtils.getPlaybackTime(currentTimeMillis));
    }

    void setProgress(int currentTimeMillis, int durationMillis, int bufferPercentage) {
        long pos = durationMillis > 0 ? (1000 * currentTimeMillis) / durationMillis : 0L;
        this.seekBar.setProgress((int) pos);
        this.seekBar.setSecondaryProgress(bufferPercentage * 10);
    }

    void updateStateControl() {
        if (this.player.isPlaying()) {
            setPauseDrawable();
        } else if (this.player.getCurrentPosition() > Math.max(this.player.getDuration() - 500, 0)) {
            setReplayDrawable();
        } else {
            setPlayDrawable();
        }
    }

    void setPlayDrawable() {
        this.stateControl.setImageResource(C2168R.C2171drawable.tw__video_play_btn);
        this.stateControl.setContentDescription(getContext().getString(C2168R.string.tw__play));
    }

    void setPauseDrawable() {
        this.stateControl.setImageResource(C2168R.C2171drawable.tw__video_pause_btn);
        this.stateControl.setContentDescription(getContext().getString(C2168R.string.tw__pause));
    }

    void setReplayDrawable() {
        this.stateControl.setImageResource(C2168R.C2171drawable.tw__video_replay_btn);
        this.stateControl.setContentDescription(getContext().getString(C2168R.string.tw__replay));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide() {
        this.handler.removeMessages(1001);
        AnimationUtils.fadeOut(this, 150);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show() {
        this.handler.sendEmptyMessage(1001);
        AnimationUtils.fadeIn(this, 150);
    }

    public boolean isShowing() {
        return getVisibility() == 0;
    }

    public void update() {
        this.handler.sendEmptyMessage(1001);
    }
}
