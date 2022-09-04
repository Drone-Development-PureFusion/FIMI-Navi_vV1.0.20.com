.class public Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8modifyGimbalSensorController.java"


# instance fields
.field private back_btn:Landroid/widget/ImageView;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mAccelerationK:Landroid/widget/TextView;

.field private mAccelerationX:Landroid/widget/TextView;

.field private mAccelerationY:Landroid/widget/TextView;

.field private mAccelerationZ:Landroid/widget/TextView;

.field private mEleMachinery1K:Landroid/widget/TextView;

.field private mEleMachinery1X:Landroid/widget/TextView;

.field private mEleMachinery1Y:Landroid/widget/TextView;

.field private mEleMachinery1Z:Landroid/widget/TextView;

.field private mEleMachinery2K:Landroid/widget/TextView;

.field private mEleMachinery2X:Landroid/widget/TextView;

.field private mEleMachinery2Y:Landroid/widget/TextView;

.field private mEleMachinery2Z:Landroid/widget/TextView;

.field private mEleMachinery3K:Landroid/widget/TextView;

.field private mEleMachinery3X:Landroid/widget/TextView;

.field private mEleMachinery3Y:Landroid/widget/TextView;

.field private mEleMachinery3Z:Landroid/widget/TextView;

.field private mGyroK:Landroid/widget/TextView;

.field private mGyroVarianceK:Landroid/widget/TextView;

.field private mGyroVarianceX:Landroid/widget/TextView;

.field private mGyroVarianceY:Landroid/widget/TextView;

.field private mGyroVarianceZ:Landroid/widget/TextView;

.field private mGyroX:Landroid/widget/TextView;

.field private mGyroY:Landroid/widget/TextView;

.field private mGyroZ:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 137
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationK:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceK:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1X:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2X:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->updateView()V

    return-void
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3X:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroK:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationZ:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->defaultVal()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getGimbalSensorInfo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "N/A"

    .line 104
    .local v0, "na":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroK:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationK:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceK:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1X:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2X:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3X:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->back_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 55
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_mdify_gimbal_sensor_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->back_btn:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroX:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroY:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroZ:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroK:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_acceleration_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationX:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_acceleration_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationY:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_acceleration_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationZ:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_acceleration_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mAccelerationK:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_variance_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceX:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_variance_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceY:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_variance_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceZ:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_gyro_variance_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mGyroVarianceK:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery1_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1X:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery1_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Y:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery1_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1Z:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery1_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery1K:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery2_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2X:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery2_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Y:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery2_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2Z:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery2_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery2K:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery3_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3X:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery3_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Y:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery3_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3Z:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gimbal_electric_machinery3_k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mEleMachinery3K:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 215
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 47
    return-void
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 51
    return-void
.end method

.method public setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "x8GimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 39
    return-void
.end method

.method public showItem()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 207
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->handleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    return-void
.end method
