package com.fimi.player;

import com.fimi.player.IMediaPlayer;
/* loaded from: classes.dex */
public abstract class AbstractMediaPlayer implements IMediaPlayer {
    private IMediaPlayer.MediaQualityListener mMediaQualityListener;
    private IMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
    private IMediaPlayer.OnCompletionListener mOnCompletionListener;
    private IMediaPlayer.OnErrorListener mOnErrorListener;
    private IMediaPlayer.OnInfoListener mOnInfoListener;
    private IMediaPlayer.OnLiveVideoListener mOnLiveVideoListener;
    private IMediaPlayer.OnPreparedListener mOnPreparedListener;
    private IMediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
    private IMediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener;

    @Override // com.fimi.player.IMediaPlayer
    public void setMediaQualityListener(IMediaPlayer.MediaQualityListener listener) {
        this.mMediaQualityListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnPreparedListener(IMediaPlayer.OnPreparedListener listener) {
        this.mOnPreparedListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnCompletionListener(IMediaPlayer.OnCompletionListener listener) {
        this.mOnCompletionListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener listener) {
        this.mOnBufferingUpdateListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener listener) {
        this.mOnSeekCompleteListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener listener) {
        this.mOnVideoSizeChangedListener = listener;
    }

    public void showMediaQuality(int arg1, int arg2) {
        if (this.mMediaQualityListener != null) {
            this.mMediaQualityListener.showMediaQuality(arg1, arg2);
        }
    }

    public final void setmMediaQualityListener(IMediaPlayer.MediaQualityListener listener) {
        this.mMediaQualityListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnErrorListener(IMediaPlayer.OnErrorListener listener) {
        this.mOnErrorListener = listener;
    }

    @Override // com.fimi.player.IMediaPlayer
    public final void setOnInfoListener(IMediaPlayer.OnInfoListener listener) {
        this.mOnInfoListener = listener;
    }

    public void resetListeners() {
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnLiveVideoListener = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnPrepared() {
        if (this.mOnPreparedListener != null) {
            this.mOnPreparedListener.onPrepared(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnCompletion(int code) {
        if (this.mOnCompletionListener != null) {
            this.mOnCompletionListener.onCompletion(this, code);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnBufferingUpdate(int percent) {
        if (this.mOnBufferingUpdateListener != null) {
            this.mOnBufferingUpdateListener.onBufferingUpdate(this, percent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnSeekComplete() {
        if (this.mOnSeekCompleteListener != null) {
            this.mOnSeekCompleteListener.onSeekComplete(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnVideoSizeChanged(int width, int height, int sarNum, int sarDen) {
        if (this.mOnVideoSizeChangedListener != null) {
            this.mOnVideoSizeChangedListener.onVideoSizeChanged(this, width, height, sarNum, sarDen);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean notifyOnError(int what, int extra) {
        if (this.mOnErrorListener != null) {
            return this.mOnErrorListener.onError(this, what, extra);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean notifyOnInfo(int what, int extra) {
        if (this.mOnInfoListener != null) {
            return this.mOnInfoListener.onInfo(this, what, extra);
        }
        return false;
    }

    @Override // com.fimi.player.IMediaPlayer
    public void setOnLiveVideoListener(IMediaPlayer.OnLiveVideoListener listener) {
        this.mOnLiveVideoListener = listener;
    }

    public void notifyRtmpStatusCBOnLiveVideoListener(int type, int status1, int status2) {
        if (this.mOnLiveVideoListener != null) {
            this.mOnLiveVideoListener.onRtmpStatusCB(type, status1, status2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnStartStream() {
        if (this.mOnPreparedListener != null) {
            this.mOnPreparedListener.onStartStream();
        }
    }
}
