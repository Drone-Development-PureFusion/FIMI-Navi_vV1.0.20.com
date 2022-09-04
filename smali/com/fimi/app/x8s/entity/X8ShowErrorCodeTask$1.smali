.class Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;
.super Landroid/os/Handler;
.source "X8ShowErrorCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->access$002(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;Z)Z

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->access$200(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$1;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->access$100(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->nextRun(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
