.class Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;
.super Ljava/lang/Object;
.source "FermiSystemMediaPlayer.java"

# interfaces
.implements Lcom/fimi/soul/media/player/IFermiMediaPlayer;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$InnerHandler;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataSourceUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isAutoPlay:Z

.field private ischanging:Z

.field private onMediaSizeChangedListener:Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;

.field private onPlayerStateChangedListenerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private onProgressChangedListener:Lcom/fimi/soul/media/player/OnProgressChangedListener;

.field private player:Landroid/media/MediaPlayer;

.field private seekBar:Landroid/widget/SeekBar;

.field private startPosition:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    .line 54
    iput v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->startPosition:I

    .line 64
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->ischanging:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChangedListenerArray:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->timer:Ljava/util/Timer;

    .line 79
    new-instance v0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$InnerHandler;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$InnerHandler;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->handler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->timerTask:Ljava/util/TimerTask;

    .line 104
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->ischanging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->ischanging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->isAutoPlay:Z

    return v0
.end method

.method static synthetic access$500(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->startPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;
    .param p1, "x1"    # Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChange(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onMediaSizeChangedListener:Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Lcom/fimi/soul/media/player/OnProgressChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onProgressChangedListener:Lcom/fimi/soul/media/player/OnProgressChangedListener;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onPlayerStateChange(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChangedListenerArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChangedListenerArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;

    .line 352
    .local v0, "item":Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;
    invoke-interface {v0, p1, p0}, Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;->OnPlayerStateChanged(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;Lcom/fimi/soul/media/player/IFermiMediaPlayer;)V

    goto :goto_0

    .line 356
    .end local v0    # "item":Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPlayerStateChangedListener(Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/soul/media/player/OnPlayerStateChangedListener;

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChangedListenerArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->isAutoPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 292
    if-eqz p3, :cond_0

    .line 293
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 294
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onProgressChangedListener:Lcom/fimi/soul/media/player/OnProgressChangedListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onProgressChangedListener:Lcom/fimi/soul/media/player/OnProgressChangedListener;

    int-to-long v2, p2

    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    .line 296
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v4, v1

    .line 295
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/fimi/soul/media/player/OnProgressChangedListener;->onProgressChanged(JJ)V

    .line 300
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->ischanging:Z

    .line 306
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 311
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 154
    sget-object v0, Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;->Pause:Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChange(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V

    .line 158
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 120
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->isAutoPlay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 122
    sget-object v1, Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;->Playing:Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;

    invoke-direct {p0, v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChange(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 372
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 374
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .param p1, "isAutoPlay"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->isAutoPlay:Z

    .line 319
    return-void
.end method

.method public setMediaUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0, v0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->setMediaUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setMediaUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->dataSourceUrl:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->dataSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnMediaSizeChangedListener(Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onMediaSizeChangedListener:Lcom/fimi/soul/media/player/OnMediaSizeChangedListener;

    .line 411
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/fimi/soul/media/player/OnProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/OnProgressChangedListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onProgressChangedListener:Lcom/fimi/soul/media/player/OnProgressChangedListener;

    .line 213
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->startPosition:I

    .line 385
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 206
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 207
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 199
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 201
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 165
    sget-object v0, Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;->Stop:Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->onPlayerStateChange(Lcom/fimi/soul/media/player/IFermiMediaPlayer$FermiPlyaerState;)V

    .line 167
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 218
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 222
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    .line 223
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 224
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 225
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$2;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->dataSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 238
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$3;

    invoke-direct {v2, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$3;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 253
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$4;

    invoke-direct {v2, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$4;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 260
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$5;

    invoke-direct {v2, p0}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$5;-><init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 272
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 286
    :cond_0
    return-void
.end method
