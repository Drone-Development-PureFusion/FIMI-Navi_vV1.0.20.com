.class public Lcom/fimi/kernel/dataparser/JsonMessage;
.super Ljava/lang/Object;
.source "JsonMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private jsonRt:Lcom/alibaba/fastjson/JSONObject;

.field private msg_id:I

.field private uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# direct methods
.method public constructor <init>(ILcom/alibaba/fastjson/JSONObject;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->msg_id:I

    .line 17
    iput-object p2, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->jsonRt:Lcom/alibaba/fastjson/JSONObject;

    .line 18
    iput-object p3, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .line 19
    return-void
.end method


# virtual methods
.method public getJsonRt()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->jsonRt:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->msg_id:I

    return v0
.end method

.method public getUiCallBackListener()Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    return-object v0
.end method

.method public setJsonRt(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "jsonRt"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->jsonRt:Lcom/alibaba/fastjson/JSONObject;

    .line 35
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->msg_id:I

    .line 27
    return-void
.end method

.method public setUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 0
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonMessage{msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->msg_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jsonRt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->jsonRt:Lcom/alibaba/fastjson/JSONObject;

    .line 49
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiCallBackListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/JsonMessage;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
