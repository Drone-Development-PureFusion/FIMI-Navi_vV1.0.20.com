.class Lcom/fimi/kernel/connect/session/NoticeManager$1;
.super Landroid/os/Handler;
.source "NoticeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/session/NoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/session/NoticeManager;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/session/NoticeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/session/NoticeManager;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/fimi/kernel/connect/session/NoticeManager$1;->this$0:Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager$1;->this$0:Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/NoticeManager;->access$000(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/interfaces/IDataCallBack;

    .line 225
    .local v0, "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/fimi/kernel/dataparser/ILinkMessage;

    invoke-interface {v0, v4, v5, v2}, Lcom/fimi/kernel/connect/interfaces/IDataCallBack;->onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    goto :goto_1

    .line 229
    .end local v0    # "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    :pswitch_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager$1;->this$0:Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/NoticeManager;->access$000(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/interfaces/IDataCallBack;

    .line 230
    .restart local v0    # "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/fimi/kernel/connect/BaseCommand;

    invoke-interface {v0, v4, v5, v2}, Lcom/fimi/kernel/connect/interfaces/IDataCallBack;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_2

    .line 235
    .end local v0    # "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/kernel/dataparser/JsonMessage;

    .line 236
    .local v1, "obj":Lcom/fimi/kernel/dataparser/JsonMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getUiCallBackListener()Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getUiCallBackListener()Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getJsonRt()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getMsg_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;->onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    .end local v1    # "obj":Lcom/fimi/kernel/dataparser/JsonMessage;
    :pswitch_3
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager$1;->this$0:Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/NoticeManager;->access$100(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager$1;->this$0:Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/NoticeManager;->access$100(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/session/JsonListener;

    .line 243
    .local v0, "l":Lcom/fimi/kernel/connect/session/JsonListener;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v4, v2}, Lcom/fimi/kernel/connect/session/JsonListener;->onProcess(ILcom/alibaba/fastjson/JSONObject;)V

    goto :goto_3

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
