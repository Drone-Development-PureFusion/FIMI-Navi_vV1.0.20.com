.class public Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;
.super Ljava/lang/Object;
.source "X8IMUCheckController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;
    }
.end annotation


# instance fields
.field private checkIMUDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

.field checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

.field checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

.field fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field volatile reqestCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .param p3, "checkIMULisenter"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->reqestCount:I

    .line 35
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 61
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->removeCheckIMUMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->getCheckIMUResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->startCheckIMUStatus()V

    return-void
.end method

.method private getCheckIMUResult()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x4

    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getSensorMaintainSta()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    invoke-virtual {v0, v4, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getSensorMaintainSta()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    invoke-virtual {v0, v5, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getSensorMaintainSta()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    .line 119
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getSensorMaintainSta()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getErrCode()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getErrCode()I

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    const-string v1, ""

    invoke-interface {v0, v4, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->checkFinish(ILjava/lang/String;)V

    .line 127
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    .line 128
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->removeCheckIMUMessage()V

    .line 134
    :goto_1
    return-void

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_error_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUException1:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    .line 124
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getErrCode()I

    move-result v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->int2HexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUMxception2:Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->getErrCode()I

    move-result v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->int2HexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 123
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->checkFinish(ILjava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private removeCheckIMUMessage()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    :cond_0
    return-void
.end method

.method private startCheckIMUStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    iput v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->reqestCount:I

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->openCheckIMU(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->startCheck()V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    return-void
.end method


# virtual methods
.method public showImuDialog()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_check:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_dialog:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$3;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMUDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 96
    return-void
.end method

.method public stopCheckIMUChck()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->removeCheckIMUMessage()V

    .line 148
    return-void
.end method
