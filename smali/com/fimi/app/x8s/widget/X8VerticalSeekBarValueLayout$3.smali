.class Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;
.super Ljava/lang/Object;
.source "X8VerticalSeekBarValueLayout.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->sendJsonCmdSetFocuse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 153
    .local v0, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;->val$s:Ljava/lang/String;

    invoke-static {v1}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->setFocusSetting(Ljava/lang/String;)V

    .line 163
    .end local v0    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :goto_0
    return-void

    .line 156
    .restart local v0    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getFocuse()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setProgress(I)V

    goto :goto_0

    .line 160
    .end local v0    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$3;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getFocuse()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setProgress(I)V

    goto :goto_0
.end method
