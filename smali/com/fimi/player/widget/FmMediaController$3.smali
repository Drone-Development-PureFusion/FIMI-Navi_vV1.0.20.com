.class Lcom/fimi/player/widget/FmMediaController$3;
.super Landroid/os/Handler;
.source "FmMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/FmMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/player/widget/FmMediaController;


# direct methods
.method constructor <init>(Lcom/fimi/player/widget/FmMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/player/widget/FmMediaController;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 404
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-virtual {v1}, Lcom/fimi/player/widget/FmMediaController;->hide()V

    goto :goto_0

    .line 409
    :pswitch_1
    const-string v1, "player"

    const-string v2, "handle SHOW_PROGRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$500(Lcom/fimi/player/widget/FmMediaController;)I

    move-result v0

    .line 411
    .local v0, "pos":I
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$600(Lcom/fimi/player/widget/FmMediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$100(Lcom/fimi/player/widget/FmMediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$700(Lcom/fimi/player/widget/FmMediaController;)Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/player/widget/FmMediaController$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 413
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/fimi/player/widget/FmMediaController$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 418
    .end local v0    # "pos":I
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$700(Lcom/fimi/player/widget/FmMediaController;)Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$800(Lcom/fimi/player/widget/FmMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    sget v2, Lcom/fimi/sdk/R$drawable;->drone_stop:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/fimi/player/widget/FmMediaController$3;->this$0:Lcom/fimi/player/widget/FmMediaController;

    invoke-static {v1}, Lcom/fimi/player/widget/FmMediaController;->access$800(Lcom/fimi/player/widget/FmMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    sget v2, Lcom/fimi/sdk/R$drawable;->drone_play:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
