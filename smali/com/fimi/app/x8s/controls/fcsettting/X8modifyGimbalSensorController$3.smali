.class Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;
.super Ljava/lang/Object;
.source "X8modifyGimbalSensorController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->updateView()V
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
    .line 154
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 8
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 157
    iget-boolean v2, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-nez v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->defaultVal()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 162
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;

    .line 163
    .local v0, "gimbalSensorInfo":Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroZ()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroY()S

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 167
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroX()S

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroZ()S

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 168
    .local v1, "gyroMode":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getAccelerationX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getAccelerationY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getAccelerationZ()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getAccelMagnitude()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroVarianceX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroVarianceY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getGyroVarianceZ()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getTemp()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor1IU()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor1IV()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor1HallX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor1HallY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor2IU()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor2IV()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor2HallX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor2HallY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor3IU()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor3IV()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor3HallX()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->getMotor3HallY()S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
