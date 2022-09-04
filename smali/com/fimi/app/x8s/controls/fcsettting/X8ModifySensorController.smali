.class public Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8ModifySensorController.java"


# instance fields
.field private back_btn:Landroid/widget/ImageView;

.field private btnImuCheck:Landroid/widget/Button;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private isCheck:Z

.field private isConnectDrone:Z

.field mHandler:Landroid/os/Handler;

.field mOncheckImuLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field private tvAccelMode:Landroid/widget/TextView;

.field private tvAccelMode2:Landroid/widget/TextView;

.field private tvAccelX:Landroid/widget/TextView;

.field private tvAccelX2:Landroid/widget/TextView;

.field private tvAccelY:Landroid/widget/TextView;

.field private tvAccelY2:Landroid/widget/TextView;

.field private tvAccelZ:Landroid/widget/TextView;

.field private tvAccelZ2:Landroid/widget/TextView;

.field private tvGyroX:Landroid/widget/TextView;

.field private tvGyroX2:Landroid/widget/TextView;

.field private tvGyroY:Landroid/widget/TextView;

.field private tvGyroY2:Landroid/widget/TextView;

.field private tvGyroZ:Landroid/widget/TextView;

.field private tvGyroZ2:Landroid/widget/TextView;

.field private tvGyroxMode:Landroid/widget/TextView;

.field private tvGyroxMode2:Landroid/widget/TextView;

.field private tvMagMode:Landroid/widget/TextView;

.field private tvMagX:Landroid/widget/TextView;

.field private tvMagY:Landroid/widget/TextView;

.field private tvMagZ:Landroid/widget/TextView;

.field private x8IMUCheckController:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

.field private x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

.field private x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 121
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mOncheckImuLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    .line 233
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->isCheck:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->isCheck:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->btnImuCheck:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCheckController:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCheckController:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->updateView()V

    return-void
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->isConnectDrone:Z

    return v0
.end method

.method static synthetic access$902(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->isConnectDrone:Z

    return p1
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->defaultVal()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x2

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCheckController:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCheckController:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->stopCheckIMUChck()V

    .line 321
    :cond_1
    return-void
.end method

.method public defaultVal()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "N/A"

    .line 211
    .local v0, "na":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagMode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->back_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->btnImuCheck:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 65
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_mdify_sensor_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->back_btn:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->magx_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagX:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->magx_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagY:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->magx_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagZ:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->magx_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvMagMode:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro2_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroX2:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro2_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroY2:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro2_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroZ2:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel2_x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelX2:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel2_y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelY2:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel2_z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelZ2:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->gyro2_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvGyroxMode2:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->accel2_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->tvAccelMode2:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_imu_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->btnImuCheck:Landroid/widget/Button;

    .line 94
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 308
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 53
    return-void
.end method

.method public setImuState(ILjava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "erreoCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomCheckingDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->dismiss()V

    .line 166
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 168
    :pswitch_0
    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_dialog_title_two:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_err:I

    .line 169
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$4;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    goto :goto_0

    .line 180
    :pswitch_1
    new-instance v4, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fc_item_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_normal:I

    .line 181
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$5;

    invoke-direct {v10, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    goto :goto_0

    .line 192
    :pswitch_2
    new-instance v4, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fc_item_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_abnormal:I

    .line 193
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;

    invoke-direct {v10, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 57
    return-void
.end method

.method public showItem()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->handleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    return-void
.end method
