.class Lcom/fimi/kernel/fds/FdsManager$1;
.super Landroid/os/Handler;
.source "FdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/fds/FdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/fds/FdsManager;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/fds/FdsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/fds/FdsManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-static {v0}, Lcom/fimi/kernel/fds/FdsManager;->access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 130
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-static {v0}, Lcom/fimi/kernel/fds/FdsManager;->access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/kernel/fds/IFdsFileModel;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/fimi/kernel/fds/IFdsUiListener;->onProgress(Lcom/fimi/kernel/fds/IFdsFileModel;I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-static {v0}, Lcom/fimi/kernel/fds/FdsManager;->access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v0}, Lcom/fimi/kernel/fds/IFdsUiListener;->onSuccess(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-static {v0}, Lcom/fimi/kernel/fds/FdsManager;->access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v0}, Lcom/fimi/kernel/fds/IFdsUiListener;->onFailure(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager$1;->this$0:Lcom/fimi/kernel/fds/FdsManager;

    invoke-static {v0}, Lcom/fimi/kernel/fds/FdsManager;->access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v0}, Lcom/fimi/kernel/fds/IFdsUiListener;->onStop(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
