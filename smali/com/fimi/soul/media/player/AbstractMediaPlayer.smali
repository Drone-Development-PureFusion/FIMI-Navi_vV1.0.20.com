.class public abstract Lcom/fimi/soul/media/player/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/fimi/soul/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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
    .line 79
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p1}, Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/fimi/soul/media/player/IMediaPlayer;I)V

    .line 81
    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/soul/media/player/IMediaPlayer;II)Z

    move-result v0

    .line 98
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
    .line 102
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/fimi/soul/media/player/IMediaPlayer;II)Z

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    .line 86
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
    .line 90
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/fimi/soul/media/player/IMediaPlayer;IIII)V

    .line 93
    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 60
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 61
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 62
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 63
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 64
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 65
    iput-object v0, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 66
    return-void
.end method

.method public final setOnBufferingUpdateListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 39
    return-void
.end method

.method public final setOnCompletionListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 34
    return-void
.end method

.method public final setOnErrorListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 52
    return-void
.end method

.method public final setOnInfoListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 56
    return-void
.end method

.method public final setOnPreparedListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 30
    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 43
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 48
    return-void
.end method
