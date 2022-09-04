.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;
.super Ljava/lang/Object;
.source "X8ModifySensorController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 12
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 280
    move-object v2, p2

    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;

    .line 281
    .local v2, "imuInfo":Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;
    if-nez v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroX()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroY()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroZ()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelX()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelY()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelZ()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroY()S

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroX()S

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroZ()S

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 289
    .local v1, "gyroMode":I
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelX()S

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelY()S

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelZ()S

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 290
    .local v0, "accelMode":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$3000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    int-to-float v4, v1

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v3

    int-to-float v4, v0

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
