.class Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;
.super Ljava/lang/Object;
.source "X8CameraEVShutterISOController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setCameraDeControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 190
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    .line 191
    .local v2, "rval":I
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 217
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v2    # "rval":I
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .restart local v2    # "rval":I
    :pswitch_0
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "paramType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "de_control"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v2, :cond_0

    .line 197
    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v3, v4, :cond_3

    .line 198
    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    if-nez v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v3, v5}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V

    .line 210
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 211
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$300(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setDe_control(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    if-ne v3, v5, :cond_1

    .line 201
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v3, v6}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V

    goto :goto_1

    .line 203
    :cond_3
    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v3, v4, :cond_4

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v3, v4, :cond_1

    .line 204
    :cond_4
    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    if-nez v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v3, v5}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$200(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V

    goto :goto_1

    .line 206
    :cond_5
    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->val$index:I

    if-ne v3, v5, :cond_1

    .line 207
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v3, v6}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$200(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;Z)V

    goto :goto_1

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
