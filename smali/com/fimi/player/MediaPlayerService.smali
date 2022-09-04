.class public Lcom/fimi/player/MediaPlayerService;
.super Landroid/app/Service;
.source "MediaPlayerService.java"


# static fields
.field private static sMediaPlayer:Lcom/fimi/player/IMediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getMediaPlayer()Lcom/fimi/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    return-object v0
.end method

.method public static intentToStart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/fimi/player/MediaPlayerService;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method

.method public static intentToStop(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/fimi/player/MediaPlayerService;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 39
    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fimi/player/MediaPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static setMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V
    .locals 2
    .param p0, "mp"    # Lcom/fimi/player/IMediaPlayer;

    .prologue
    .line 48
    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eq v0, p0, :cond_1

    .line 49
    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->stop()V

    .line 51
    :cond_0
    sget-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->release()V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 53
    const-string v0, "peter"

    const-string v1, "setMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sput-object p0, Lcom/fimi/player/MediaPlayerService;->sMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 56
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
