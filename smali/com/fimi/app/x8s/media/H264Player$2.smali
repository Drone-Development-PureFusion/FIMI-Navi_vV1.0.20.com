.class Lcom/fimi/app/x8s/media/H264Player$2;
.super Landroid/os/Handler;
.source "H264Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/media/H264Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/media/H264Player;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/media/H264Player;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/media/H264Player;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264Player$2;->this$0:Lcom/fimi/app/x8s/media/H264Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player$2;->this$0:Lcom/fimi/app/x8s/media/H264Player;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Player;->countFps()V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player$2;->this$0:Lcom/fimi/app/x8s/media/H264Player;

    iget-object v0, v0, Lcom/fimi/app/x8s/media/H264Player;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
