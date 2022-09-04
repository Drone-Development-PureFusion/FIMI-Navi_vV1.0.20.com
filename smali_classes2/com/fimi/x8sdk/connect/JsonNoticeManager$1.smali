.class Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;
.super Landroid/os/Handler;
.source "JsonNoticeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/connect/JsonNoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/connect/JsonNoticeManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/connect/JsonNoticeManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;->this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 119
    :cond_0
    return-void

    .line 73
    :pswitch_0
    iget-object v5, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;->this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    iget-object v5, v5, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    iget-object v5, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;->this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    iget-object v5, v5, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .line 75
    .local v1, "listener":Lcom/fimi/x8sdk/listener/JsonCallBackListener;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 76
    .local v4, "rtJson":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "msg_id"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 99
    :sswitch_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 100
    .local v3, "msg9ParamJson2":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v6

    if-ltz v6, :cond_3

    .line 101
    invoke-interface {v1, v3}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onSuccess(Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;)V

    .line 102
    invoke-interface {v1, v4}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onJSONSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 79
    .end local v3    # "msg9ParamJson2":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :sswitch_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 80
    .local v2, "msg9ParamJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v6

    if-ltz v6, :cond_1

    .line 81
    invoke-interface {v1, v2}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onSuccess(Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;)V

    .line 82
    invoke-interface {v1, v4}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onJSONSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v7

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onFail(IILjava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v2    # "msg9ParamJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :sswitch_2
    const-string v6, "rval"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 92
    invoke-interface {v1, v4}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onJSONSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;

    .line 95
    .local v0, "failAck":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getRval()I

    move-result v6

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getMsg_id()I

    move-result v7

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onFail(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "failAck":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    .restart local v3    # "msg9ParamJson2":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_3
    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v6

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v7

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->onFail(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "listener":Lcom/fimi/x8sdk/listener/JsonCallBackListener;
    .end local v3    # "msg9ParamJson2":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v4    # "rtJson":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_1
    iget-object v5, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;->this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    iget-object v5, v5, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;->this$0:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    iget-object v5, v5, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .line 114
    .restart local v1    # "listener":Lcom/fimi/x8sdk/listener/JsonCallBackListener;
    invoke-interface {v1}, Lcom/fimi/x8sdk/listener/JsonCallBackListener;->outTime()V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_1
        0x101 -> :sswitch_2
    .end sparse-switch
.end method
