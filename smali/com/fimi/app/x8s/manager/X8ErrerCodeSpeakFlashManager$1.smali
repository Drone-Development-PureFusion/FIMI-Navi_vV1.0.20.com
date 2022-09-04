.class Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager$1;
.super Landroid/os/Handler;
.source "X8ErrerCodeSpeakFlashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->nextRunBySpeekEnd()V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
