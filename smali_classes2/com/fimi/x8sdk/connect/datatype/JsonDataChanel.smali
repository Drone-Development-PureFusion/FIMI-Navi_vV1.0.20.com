.class public Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;
.super Ljava/lang/Object;
.source "JsonDataChanel.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/datatype/IDataChanel;


# static fields
.field public static testString:Ljava/lang/String;


# instance fields
.field retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, ""

    sput-object v0, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->testString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyCamJsonData(ILcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "respJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 72
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/kernel/connect/session/NoticeManager;->onJsonDataCallBack(ILcom/alibaba/fastjson/JSONObject;)V

    .line 73
    return-void
.end method

.method private notifyCamJsonData(Lcom/fimi/kernel/dataparser/JsonMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/fimi/kernel/dataparser/JsonMessage;

    .prologue
    .line 76
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onJsonDataUICallBack(Lcom/fimi/kernel/dataparser/JsonMessage;)V

    .line 77
    return-void
.end method


# virtual methods
.method public forwardData([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 34
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 35
    .local v8, "rtJson":Lcom/alibaba/fastjson/JSONObject;
    const-string v10, "msg_id"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 36
    .local v4, "msg_id":I
    const-string v10, "type"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "camKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;

    if-eqz v10, :cond_0

    .line 39
    iget-object v10, p0, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;

    invoke-interface {v10, v4, v0}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;->removeFromListByCmdID(ILjava/lang/String;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v2

    .line 40
    .local v2, "jsonCmdData":Lcom/fimi/kernel/connect/BaseCommand;
    if-eqz v2, :cond_0

    .line 41
    new-instance v3, Lcom/fimi/kernel/dataparser/JsonMessage;

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getJsonUiCallBackListener()Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    move-result-object v10

    invoke-direct {v3, v4, v8, v10}, Lcom/fimi/kernel/dataparser/JsonMessage;-><init>(ILcom/alibaba/fastjson/JSONObject;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 42
    .local v3, "jsonMsg":Lcom/fimi/kernel/dataparser/JsonMessage;
    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->notifyCamJsonData(Lcom/fimi/kernel/dataparser/JsonMessage;)V

    .line 46
    .end local v2    # "jsonCmdData":Lcom/fimi/kernel/connect/BaseCommand;
    .end local v3    # "jsonMsg":Lcom/fimi/kernel/dataparser/JsonMessage;
    :cond_0
    const/4 v10, 0x7

    if-ne v4, v10, :cond_1

    if-eqz v0, :cond_1

    const-string v10, "temp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 47
    new-instance v3, Lcom/fimi/kernel/dataparser/JsonMessage;

    const/4 v10, 0x0

    invoke-direct {v3, v4, v8, v10}, Lcom/fimi/kernel/dataparser/JsonMessage;-><init>(ILcom/alibaba/fastjson/JSONObject;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 48
    .restart local v3    # "jsonMsg":Lcom/fimi/kernel/dataparser/JsonMessage;
    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/JsonMessage;->getJsonRt()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 49
    .local v7, "rt":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v10, v11}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 51
    .local v6, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    if-eqz v6, :cond_1

    .line 52
    invoke-virtual {v6}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "param":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 54
    invoke-virtual {v6}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "s":Ljava/lang/String;
    sput-object v9, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->testString:Ljava/lang/String;

    .line 62
    .end local v3    # "jsonMsg":Lcom/fimi/kernel/dataparser/JsonMessage;
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v7    # "rt":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 63
    invoke-direct {p0, v4, v8}, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->notifyCamJsonData(ILcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "camKey":Ljava/lang/String;
    .end local v1    # "json":Ljava/lang/String;
    .end local v4    # "msg_id":I
    .end local v8    # "rtJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;)V
    .locals 0
    .param p1, "retransmissionHandle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;

    .line 80
    return-void
.end method
