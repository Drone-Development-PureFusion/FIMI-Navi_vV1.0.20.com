.class Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;
.super Ljava/util/TimerTask;
.source "X8RCMatchCodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$1;)V

    iput-object v1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->checkRcMactchProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 142
    :cond_1
    return-void
.end method
