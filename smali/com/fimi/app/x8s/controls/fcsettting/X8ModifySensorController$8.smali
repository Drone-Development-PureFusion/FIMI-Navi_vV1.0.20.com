.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;
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
    .line 255
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

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

    .line 258
    move-object v2, p2

    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;

    .line 259
    .local v2, "imuInfo":Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;
    if-nez v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroX()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroY()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroZ()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelX()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelY()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelZ()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagX()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagY()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagZ()S

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroY()S

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroX()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getGyroZ()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 270
    .local v1, "gyroMode":I
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelX()S

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelY()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getAccelZ()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 271
    .local v0, "accelMode":I
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagX()S

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagY()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->getMagZ()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 272
    .local v3, "magMode":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    int-to-float v5, v1

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    int-to-float v5, v0

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;

    move-result-object v4

    int-to-float v5, v3

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
