.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$7;
.super Ljava/lang/Object;
.source "X8AiLinesExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendRecordMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 1
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    .line 376
    return-void
.end method
