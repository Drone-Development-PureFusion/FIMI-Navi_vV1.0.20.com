.class public Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8CloudCalibrationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
    }
.end annotation


# instance fields
.field private btnStart:Landroid/widget/Button;

.field private calibrationBar:Landroid/widget/ProgressBar;

.field private final calibrationError:I

.field checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;

.field private checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

.field private checkTip:Landroid/widget/TextView;

.field private checkView:Landroid/view/View;

.field private cloudView:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private final endDone:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private final finishDone:I

.field private gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field private idealView:Landroid/view/View;

.field private imgAnimation:Landroid/widget/ImageView;

.field private imgResult:Landroid/widget/ImageView;

.field private imgReturn:Landroid/widget/ImageView;

.field private ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private rtBtn:Landroid/widget/Button;

.field private rtView:Landroid/view/View;

.field private final startDone:I

.field private timer:Ljava/util/Timer;

.field private tvRt:Landroid/widget/TextView;

.field private tvRtTip:Landroid/widget/TextView;

.field private tv_progress:Landroid/widget/TextView;

.field private tv_subTip:Landroid/widget/TextView;

.field private tv_tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->startDone:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->endDone:I

    .line 63
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 261
    const/16 v0, 0x8

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->finishDone:I

    .line 262
    const/16 v0, 0x9

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->calibrationError:I

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->startCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showCalibrateFailed(Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showCalibrateProgress(Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V

    return-void
.end method

.method private breakOutDone()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_1

    .line 93
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_break_out_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_break_out_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 122
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->closeUi()V

    goto :goto_0
.end method

.method private cancelCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->cancel()Z

    .line 375
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 379
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->timer:Ljava/util/Timer;

    .line 381
    :cond_1
    return-void
.end method

.method private setCheckTip(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "text"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method private showCalibrateFailed(Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V
    .locals 4
    .param p1, "caliState"    # Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgResult:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isTempeOverErr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_18:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_failed_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling123()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_13:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling4()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling5()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling10()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_4
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling11()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_17:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 345
    :cond_5
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling6()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 347
    :cond_6
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling7()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 349
    :cond_7
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling8()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_11:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 351
    :cond_8
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling9()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showCalibrateProgress(Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V
    .locals 7
    .param p1, "caliState"    # Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->getProgress()I

    move-result v0

    .line 301
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->calibrationBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 303
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_progress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_calibration_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 305
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isTempeOverErr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_3:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling123()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_4:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling4()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_5:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling5()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_6:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling10()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_7:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0

    .line 315
    :cond_5
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->isNeedLeveling11()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 316
    sget v1, Lcom/fimi/app/x8s/R$color;->x8_error_code_type1:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_8:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0

    .line 318
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$color;->white_100:I

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_2:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setCheckTip(II)V

    goto :goto_0
.end method

.method private showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 425
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne p1, v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 427
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne p1, v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_unable_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 435
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-eq p1, v0, :cond_0

    .line 443
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne p1, v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgResult:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_success_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_result_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_success_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 450
    :cond_3
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne p1, v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 455
    :cond_4
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgResult:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_failed_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private startCheck()V
    .locals 6

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cancelCheck()V

    .line 367
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->timer:Ljava/util/Timer;

    .line 368
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 370
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeUi()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->isShow:Z

    .line 417
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 418
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    .line 419
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cancelCheck()V

    .line 420
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 146
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_camera_item_cloud_calibration:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    .line 147
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->cloud_v:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    .line 148
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgReturn:Landroid/widget/ImageView;

    .line 149
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_start_calibration:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_tip1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_subTip:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_animation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgAnimation:Landroid/widget/ImageView;

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgAnimation:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_animation:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgAnimation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 155
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_cloud_calibration_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->idealView:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_calibration_progress_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkView:Landroid/view/View;

    .line 158
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_cloud_calibration_result:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtView:Landroid/view/View;

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->calibration_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->calibrationBar:Landroid/widget/ProgressBar;

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_progress:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_check_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_rt_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtBtn:Landroid/widget/Button;

    .line 163
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rtBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_result_tip2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRtTip:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_result_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tvRt:Landroid/widget/TextView;

    .line 166
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_result:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->imgResult:Landroid/widget/ImageView;

    .line 167
    return-void
.end method

.method public isCalibrationing()Z
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x1

    .line 481
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v1, v2, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->breakOutDone()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_start_calibration:I

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->startCalibration()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rt_confirm:I

    if-ne v0, v1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v1, v2, :cond_2

    .line 74
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v1, v2, :cond_3

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 79
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->closeUi()V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v1, v2, :cond_0

    .line 82
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    goto :goto_0

    .line 86
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->breakOutDone()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->breakOutDone()V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 197
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->isShow:Z

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_3:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_unable_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 208
    :cond_2
    if-nez p1, :cond_5

    .line 209
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cancelCheck()V

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_4

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_unable_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_0

    .line 219
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    goto/16 :goto_0

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_6

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_normal:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_0

    .line 237
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->showStatusView(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    goto/16 :goto_0
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->openUi()V

    .line 386
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->isShow:Z

    .line 387
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->getDroneState()V

    .line 388
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->isConect:Z

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_normal:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_unable_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 406
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkTip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 49
    return-void
.end method

.method public setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "ix8CalibrationListener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 53
    return-void
.end method

.method public startCalibration()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->gimbalStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method public unMountError(Z)V
    .locals 3
    .param p1, "unMount"    # Z

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->unMountError(Z)V

    .line 183
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->isShow:Z

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_error_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->cloudView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_cloud_no_exits_icon:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
