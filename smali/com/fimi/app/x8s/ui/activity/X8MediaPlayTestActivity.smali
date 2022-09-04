.class public Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;
.super Landroid/app/Activity;
.source "X8MediaPlayTestActivity.java"


# instance fields
.field private videoView:Lcom/fimi/player/widget/FimiVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 29
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_media_play_test:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->testFimiVideo()V

    .line 32
    return-void
.end method

.method public onDeviceClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->videoView:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 37
    return-void
.end method

.method public testFimiVideo()V
    .locals 3

    .prologue
    .line 41
    sget v1, Lcom/fimi/app/x8s/R$id;->fimi_video:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/widget/FimiVideoView;

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->videoView:Lcom/fimi/player/widget/FimiVideoView;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/a.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "s4":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8MediaPlayTestActivity;->videoView:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v1, v0}, Lcom/fimi/player/widget/FimiVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 44
    return-void
.end method
