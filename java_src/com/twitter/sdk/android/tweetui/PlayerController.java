package com.twitter.sdk.android.tweetui;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.sdk.android.core.IntentUtils;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.tweetui.PlayerActivity;
import com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener;
import com.twitter.sdk.android.tweetui.internal.VideoControlView;
import com.twitter.sdk.android.tweetui.internal.VideoView;
/* loaded from: classes2.dex */
class PlayerController {
    private static final String TAG = "PlayerController";
    final TextView callToActionView;
    final SwipeToDismissTouchListener.Callback callback;
    boolean isPlaying = true;
    final View rootView;
    int seekPosition;
    final VideoControlView videoControlView;
    final ProgressBar videoProgressView;
    final VideoView videoView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayerController(View rootView, SwipeToDismissTouchListener.Callback callback) {
        this.rootView = rootView;
        this.videoView = (VideoView) rootView.findViewById(C2168R.C2172id.video_view);
        this.videoControlView = (VideoControlView) rootView.findViewById(C2168R.C2172id.video_control_view);
        this.videoProgressView = (ProgressBar) rootView.findViewById(C2168R.C2172id.video_progress_view);
        this.callToActionView = (TextView) rootView.findViewById(C2168R.C2172id.call_to_action_view);
        this.callback = callback;
    }

    PlayerController(View rootView, VideoView videoView, VideoControlView videoControlView, ProgressBar videoProgressView, TextView callToActionView, SwipeToDismissTouchListener.Callback callback) {
        this.rootView = rootView;
        this.videoView = videoView;
        this.videoControlView = videoControlView;
        this.videoProgressView = videoProgressView;
        this.callToActionView = callToActionView;
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prepare(PlayerActivity.PlayerItem item) {
        try {
            setUpCallToAction(item);
            setUpMediaControl(item.looping, item.showVideoControls);
            View.OnTouchListener listener = SwipeToDismissTouchListener.createFromView(this.videoView, this.callback);
            this.videoView.setOnTouchListener(listener);
            this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.twitter.sdk.android.tweetui.PlayerController.1
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    PlayerController.this.videoProgressView.setVisibility(8);
                }
            });
            this.videoView.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.twitter.sdk.android.tweetui.PlayerController.2
                @Override // android.media.MediaPlayer.OnInfoListener
                public boolean onInfo(MediaPlayer mediaPlayer, int what, int extra) {
                    if (what == 702) {
                        PlayerController.this.videoProgressView.setVisibility(8);
                        return true;
                    } else if (what != 701) {
                        return false;
                    } else {
                        PlayerController.this.videoProgressView.setVisibility(0);
                        return true;
                    }
                }
            });
            Uri uri = Uri.parse(item.url);
            this.videoView.setVideoURI(uri, item.looping);
            this.videoView.requestFocus();
        } catch (Exception e) {
            Twitter.getLogger().mo1290e(TAG, "Error occurred during video playback", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume() {
        if (this.seekPosition != 0) {
            this.videoView.seekTo(this.seekPosition);
        }
        if (this.isPlaying) {
            this.videoView.start();
            this.videoControlView.update();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPause() {
        this.isPlaying = this.videoView.isPlaying();
        this.seekPosition = this.videoView.getCurrentPosition();
        this.videoView.pause();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroy() {
        this.videoView.stopPlayback();
    }

    void setUpMediaControl(boolean looping, boolean showVideoControls) {
        if (looping && !showVideoControls) {
            setUpLoopControl();
        } else {
            setUpMediaControl();
        }
    }

    void setUpLoopControl() {
        this.videoControlView.setVisibility(4);
        this.videoView.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.PlayerController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlayerController.this.videoView.isPlaying()) {
                    PlayerController.this.videoView.pause();
                } else {
                    PlayerController.this.videoView.start();
                }
            }
        });
    }

    void setUpMediaControl() {
        this.videoView.setMediaController(this.videoControlView);
    }

    void setUpCallToAction(PlayerActivity.PlayerItem item) {
        if (item.callToActionText != null && item.callToActionUrl != null) {
            this.callToActionView.setVisibility(0);
            this.callToActionView.setText(item.callToActionText);
            setUpCallToActionListener(item.callToActionUrl);
            setUpRootViewOnClickListener();
        }
    }

    void setUpCallToActionListener(final String callToActionUrl) {
        this.callToActionView.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.PlayerController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Uri uri = Uri.parse(callToActionUrl);
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                IntentUtils.safeStartActivity(PlayerController.this.callToActionView.getContext(), intent);
            }
        });
    }

    void setUpRootViewOnClickListener() {
        this.rootView.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.PlayerController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PlayerController.this.callToActionView.getVisibility() == 0) {
                    PlayerController.this.callToActionView.setVisibility(8);
                } else {
                    PlayerController.this.callToActionView.setVisibility(0);
                }
            }
        });
    }
}
