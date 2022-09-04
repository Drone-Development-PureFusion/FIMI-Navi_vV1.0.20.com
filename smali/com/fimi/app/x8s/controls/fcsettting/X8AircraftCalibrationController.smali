.class public Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;
    }
.end annotation


# instance fields
.field private final FIFTH_DIR_STEP:I

.field private final FOURTH_DIR_STEP:I

.field private final FRIST_DIR_STEP:I

.field private final SECOND_DIR_STEP:I

.field private final SIXTH_DIR_STEP:I

.field private final THRID_DIR_STEP:I

.field private back_btn:Landroid/widget/ImageView;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private indicatorArray:[Z

.field private isCaltAccSixPoint:Z

.field private isResetCalit:Z

.field private isShowCalibrationStart:Z

.field private mBtnFailureCalibration:Landroid/widget/Button;

.field private mBtnStartCalibration:Landroid/widget/Button;

.field private mBtnSuccessCalibration:Landroid/widget/Button;

.field private mCalibrationDisconnectView:Landroid/view/View;

.field private mCalibrationFailureView:Landroid/view/View;

.field private mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

.field private mCalibrationPreView:Landroid/view/View;

.field private mCalibrationStepView:Landroid/view/View;

.field private mCalibrationSuccessedView:Landroid/view/View;

.field private mDisconnectViewStub:Landroid/view/ViewStub;

.field private mFailureViewStub:Landroid/view/ViewStub;

.field private mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field private mHandler:Landroid/os/Handler;

.field private mIvCalibrationStepPicture:Landroid/widget/ImageView;

.field private mPreViewStub:Landroid/view/ViewStub;

.field private mSuccessedViewStub:Landroid/view/ViewStub;

.field private mTvCalibrationDisconnectionDescribe:Landroid/widget/TextView;

.field private mTvCalibrationFailureDescribe:Landroid/widget/TextView;

.field private mTvCalibrationStepDescribe:Landroid/widget/TextView;

.field private mTvCalibrationTitle:Landroid/widget/TextView;

.field private mViewStepStub:Landroid/view/ViewStub;

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field private timeoutCounter:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 63
    const/16 v0, 0x20

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->FRIST_DIR_STEP:I

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->SECOND_DIR_STEP:I

    .line 65
    const/16 v0, 0x10

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->THRID_DIR_STEP:I

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->FOURTH_DIR_STEP:I

    .line 67
    const/16 v0, 0x80

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->FIFTH_DIR_STEP:I

    .line 68
    const/16 v0, 0x40

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->SIXTH_DIR_STEP:I

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    .line 72
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isShowCalibrationStart:Z

    .line 73
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isCaltAccSixPoint:Z

    .line 74
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isResetCalit:Z

    .line 76
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 78
    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 93
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mHandler:Landroid/os/Handler;

    .line 83
    return-void

    .line 71
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isCaltAccSixPoint:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isCaltAccSixPoint:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isSoftInterrupt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->extractCalibrationData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationStatus(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitHorizonalCalibration()V

    return-void
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationSuccessed()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationDisconnect()V

    return-void
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitItem()V

    return-void
.end method

.method static synthetic access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->reStartCalibration()V

    return-void
.end method

.method static synthetic access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->startCalibration()V

    return-void
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isShowCalibrationStart:Z

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isShowCalibrationStart:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isResetCalit:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isResetCalit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    return v0
.end method

.method static synthetic access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    return p1
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method private extractCalibrationData()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$13;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8AircraftCalibrationController$GaliStete:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getSixPointData()V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getHorizonalData()V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->startHorizonalCalibration()V

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->startCalibration()V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->reStartCalibration()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getHorizonalData()V
    .locals 4

    .prologue
    .line 304
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 340
    return-void
.end method

.method private getIdString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSixPointData()V
    .locals 4

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isCaltAccSixPoint:Z

    .line 276
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    .line 278
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 298
    return-void
.end method

.method private handleCalibrationDisconnect()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 620
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationDisconnectionDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_start_calibration_describe2:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    return-void
.end method

.method private handleCalibrationFailure(I)V
    .locals 3
    .param p1, "point"    # I

    .prologue
    const/16 v2, 0x8

    .line 711
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 717
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration1_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :goto_0
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration2_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 721
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration3_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 723
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration4_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 725
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration5_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 727
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 728
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration6_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 729
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration_horizonal_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 732
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration1_failure:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleCalibrationHorizonal()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 701
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration_horizonal:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step6:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 706
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 708
    return-void
.end method

.method private handleCalibrationStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 611
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 617
    return-void
.end method

.method private handleCalibrationStep1()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 640
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration3:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step1:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 645
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    return-void
.end method

.method private handleCalibrationStep2()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 650
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration4:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step2:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 655
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 657
    return-void
.end method

.method private handleCalibrationStep3()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 660
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration5:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step3:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 665
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 667
    return-void
.end method

.method private handleCalibrationStep4()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 671
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration6:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step4:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 678
    return-void
.end method

.method private handleCalibrationStep5()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 681
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration2:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step5:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 686
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 688
    return-void
.end method

.method private handleCalibrationStep6()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 691
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration1:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibrate_drone_step6:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 696
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    return-void
.end method

.method private handleCalibrationSuccessed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 737
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    return-void
.end method

.method private handleInsky()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 630
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationDisconnectionDescribe:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_start_calibration_describe4:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getIdString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 637
    return-void
.end method

.method private isSoftInterrupt()Z
    .locals 3

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_1
    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    .line 770
    const/4 v2, 0x1

    .line 772
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private jumpNextStep()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 776
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep6()V

    .line 778
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    .line 806
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 781
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep5()V

    .line 782
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    .line 785
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep1()V

    .line 787
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    .line 790
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep2()V

    .line 791
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-nez v0, :cond_4

    .line 794
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep3()V

    .line 796
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 799
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep4()V

    .line 800
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0

    .line 803
    :cond_5
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationHorizonal()V

    .line 804
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    goto :goto_0
.end method

.method private quitCalibration()V
    .locals 5

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 417
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 418
    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$7;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 416
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 425
    return-void
.end method

.method private quitHorizonalCalibration()V
    .locals 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 379
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 380
    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$5;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 378
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 385
    return-void
.end method

.method private quitItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->returnBack()V

    .line 593
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->onClose()V

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    aput-boolean v3, v1, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    .line 601
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 602
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isShowCalibrationStart:Z

    .line 603
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isCaltAccSixPoint:Z

    .line 604
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isResetCalit:Z

    .line 605
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 606
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->closeItem()V

    .line 607
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 608
    return-void
.end method

.method private reStartCalibration()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    aput-boolean v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isResetCalit:Z

    .line 436
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    .line 437
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep6()V

    .line 438
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_RESTART_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 439
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 440
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_RESTART:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 441
    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v3

    sget-object v4, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 442
    invoke-virtual {v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 440
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 459
    return-void
.end method

.method private showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V
    .locals 6
    .param p1, "ackGetCaliState"    # Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    .param p2, "i"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSixthPointPercent()I

    move-result v0

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    .line 753
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFifthPointPercent()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v1

    .line 754
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getThridPointPercent()I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v4

    .line 755
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFirstPointPercent()I

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v4

    .line 756
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v4, 0x4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFourthPointPercent()I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v3, v4

    .line 757
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSecondPointPercent()I

    move-result v4

    if-ne v4, v5, :cond_5

    :goto_5
    aput-boolean v1, v0, v3

    .line 758
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    invoke-virtual {v0, v1, p2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    .line 759
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setSelected(I)V

    .line 760
    return-void

    :cond_0
    move v0, v2

    .line 752
    goto :goto_0

    :cond_1
    move v0, v2

    .line 753
    goto :goto_1

    :cond_2
    move v0, v2

    .line 754
    goto :goto_2

    :cond_3
    move v0, v2

    .line 755
    goto :goto_3

    :cond_4
    move v0, v2

    .line 756
    goto :goto_4

    :cond_5
    move v1, v2

    .line 757
    goto :goto_5
.end method

.method private showCalibrationStatus(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V
    .locals 8
    .param p1, "ackGetCaliState"    # Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x64

    .line 153
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 154
    .local v0, "caliStep":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 157
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 158
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    .line 160
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFirstPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSecondPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getThridPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFourthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 262
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFifthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSixthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 263
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isShowCalibrationStart:Z

    .line 264
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    .line 265
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 266
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 268
    :cond_2
    :goto_1
    return-void

    .line 162
    :sswitch_0
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 164
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 165
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 166
    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep1()V

    .line 170
    invoke-direct {p0, p1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 171
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getThridPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 172
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 173
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 180
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 181
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto :goto_1

    .line 184
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep2()V

    .line 185
    invoke-direct {p0, p1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 186
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFirstPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 188
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto/16 :goto_0

    .line 193
    :sswitch_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 194
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 195
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 196
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto :goto_1

    .line 199
    :cond_5
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep3()V

    .line 200
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 201
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFourthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 203
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto/16 :goto_0

    .line 210
    :sswitch_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 211
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 212
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 213
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto/16 :goto_1

    .line 216
    :cond_6
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep4()V

    .line 217
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 218
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSecondPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 220
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto/16 :goto_0

    .line 226
    :sswitch_4
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 227
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 228
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 229
    invoke-direct {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto/16 :goto_1

    .line 232
    :cond_7
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep5()V

    .line 233
    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 234
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getFifthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 235
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 236
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto/16 :goto_0

    .line 243
    :sswitch_5
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 244
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 245
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 246
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationFailure(I)V

    goto/16 :goto_1

    .line 249
    :cond_8
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep6()V

    .line 250
    invoke-direct {p0, p1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->showCalibrationIndicator(Lcom/fimi/x8sdk/dataparser/AckGetCaliState;I)V

    .line 251
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getSixthPointPercent()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 252
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 253
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->jumpNextStep()V

    goto/16 :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_0
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method private startCalibration()V
    .locals 6

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->indicatorArray:[Z

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setStepStatus([ZI)V

    .line 350
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStep6()V

    .line 351
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitHorizonalCalibration()V

    .line 352
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 353
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 354
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 355
    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v3

    sget-object v4, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 356
    invoke-virtual {v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$4;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 354
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 374
    return-void
.end method

.method private startHorizonalCalibration()V
    .locals 5

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 389
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->timeoutCounter:I

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 391
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 392
    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 390
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 409
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->back_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnStartCalibration:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnFailureCalibration:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$11;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnSuccessCalibration:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 463
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_mdify_calibration_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_calibration_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->back_btn:Landroid/widget/ImageView;

    .line 465
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_calibration_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationTitle:Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->vs_aircraft_calibration_pre:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mPreViewStub:Landroid/view/ViewStub;

    .line 468
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mPreViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    .line 469
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationPreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->vs_aircraft_calibration_disconnect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mDisconnectViewStub:Landroid/view/ViewStub;

    .line 472
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mDisconnectViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationDisconnectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->vs_aircraft_calibration_step:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mViewStepStub:Landroid/view/ViewStub;

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mViewStepStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationStepView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->vs_aircraft_calibration_failure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mFailureViewStub:Landroid/view/ViewStub;

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mFailureViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationFailureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->vs_aircraft_calibration_successed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mSuccessedViewStub:Landroid/view/ViewStub;

    .line 484
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mSuccessedViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    .line 485
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationSuccessedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_start_calibration_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnStartCalibration:Landroid/widget/Button;

    .line 488
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_failure_calibration_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnFailureCalibration:Landroid/widget/Button;

    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->btn_success_calibration_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mBtnSuccessCalibration:Landroid/widget/Button;

    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->iv_calibration_step_picture:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mIvCalibrationStepPicture:Landroid/widget/ImageView;

    .line 491
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_calibration_step1_describe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationStepDescribe:Landroid/widget/TextView;

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->view_aircrft_Calibration_Indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mCalibrationIndicator:Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    .line 493
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_calibration_failure_describe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationFailureDescribe:Landroid/widget/TextView;

    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_calibration_disconnection_describe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mTvCalibrationDisconnectionDescribe:Landroid/widget/TextView;

    .line 496
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 562
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 563
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isInSky:Z

    if-nez v0, :cond_1

    .line 564
    if-nez p1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationDisconnect()V

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleCalibrationStart()V

    goto :goto_0

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleInsky()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 556
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitCalibration()V

    .line 557
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitItem()V

    .line 558
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->fcManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 91
    return-void
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 87
    return-void
.end method

.method public showItem()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 583
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->handleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getDroneState()V

    .line 585
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->isConect:Z

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->onDroneConnected(Z)V

    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 587
    return-void
.end method
