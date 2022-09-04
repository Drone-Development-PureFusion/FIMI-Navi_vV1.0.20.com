.class Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;
.super Landroid/os/Handler;
.source "X8modifyGimbalSensorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    return-void
.end method
