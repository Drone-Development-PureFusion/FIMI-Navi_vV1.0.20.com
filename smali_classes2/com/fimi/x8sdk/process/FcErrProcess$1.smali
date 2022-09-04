.class Lcom/fimi/x8sdk/process/FcErrProcess$1;
.super Landroid/os/Handler;
.source "FcErrProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/process/FcErrProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/process/FcErrProcess;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/process/FcErrProcess;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/process/FcErrProcess;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fimi/x8sdk/process/FcErrProcess$1;->this$0:Lcom/fimi/x8sdk/process/FcErrProcess;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    return-void

    .line 89
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/x8sdk/process/FcErrProcess$1;->this$0:Lcom/fimi/x8sdk/process/FcErrProcess;

    iget-object v1, v1, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/fimi/x8sdk/process/FcErrProcess$1;->this$0:Lcom/fimi/x8sdk/process/FcErrProcess;

    iget-object v1, v1, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .line 91
    .local v0, "listener":Lcom/fimi/x8sdk/listener/ErrcodeListener;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/ErrcodeListener;->showErrCode(Ljava/util/List;)V

    goto :goto_0

    .line 96
    .end local v0    # "listener":Lcom/fimi/x8sdk/listener/ErrcodeListener;
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/x8sdk/process/FcErrProcess$1;->this$0:Lcom/fimi/x8sdk/process/FcErrProcess;

    iget-object v1, v1, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/fimi/x8sdk/process/FcErrProcess$1;->this$0:Lcom/fimi/x8sdk/process/FcErrProcess;

    iget-object v1, v1, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .line 98
    .restart local v0    # "listener":Lcom/fimi/x8sdk/listener/ErrcodeListener;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/fimi/x8sdk/listener/ErrcodeListener;->showVcErrCode(I)V

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
