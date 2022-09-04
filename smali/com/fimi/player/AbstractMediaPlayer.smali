.class public abstract Lcom/fimi/player/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/fimi/player/IMediaPlayer;


# instance fields
.field private mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

.field private mOnBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

.field private mOnLiveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

.field private mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final notifyOnBufferingUpdate(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p1}, Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/fimi/player/IMediaPlayer;I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0, p1}, Lcom/fimi/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/fimi/player/IMediaPlayer;I)V

    .line 99
    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/fimi/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/player/IMediaPlayer;II)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/fimi/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/fimi/player/IMediaPlayer;II)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/fimi/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/fimi/player/IMediaPlayer;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/fimi/player/IMediaPlayer;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected final notifyOnStartStream()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer$OnPreparedListener;->onStartStream()V

    .line 143
    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/fimi/player/IMediaPlayer;IIII)V

    .line 116
    :cond_0
    return-void
.end method

.method public notifyRtmpStatusCBOnLiveVideoListener(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "status1"    # I
    .param p3, "status2"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnLiveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnLiveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;->onRtmpStatusCB(III)V

    .line 138
    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 81
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 82
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 83
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

    .line 84
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 85
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 86
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 87
    iput-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnLiveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 88
    return-void
.end method

.method public setMediaQualityListener(Lcom/fimi/player/IMediaPlayer$MediaQualityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .line 33
    return-void
.end method

.method public final setOnBufferingUpdateListener(Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 46
    return-void
.end method

.method public final setOnCompletionListener(Lcom/fimi/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 41
    return-void
.end method

.method public final setOnErrorListener(Lcom/fimi/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 73
    return-void
.end method

.method public final setOnInfoListener(Lcom/fimi/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 77
    return-void
.end method

.method public setOnLiveVideoListener(Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnLiveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 132
    return-void
.end method

.method public final setOnPreparedListener(Lcom/fimi/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 37
    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/player/IMediaPlayer$OnSeekCompleteListener;

    .line 50
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 55
    return-void
.end method

.method public final setmMediaQualityListener(Lcom/fimi/player/IMediaPlayer$MediaQualityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/player/AbstractMediaPlayer;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .line 68
    return-void
.end method

.method public showMediaQuality(II)V
    .locals 1
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fimi/player/AbstractMediaPlayer;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    invoke-interface {v0, p1, p2}, Lcom/fimi/player/IMediaPlayer$MediaQualityListener;->showMediaQuality(II)V

    .line 63
    :cond_0
    return-void
.end method
