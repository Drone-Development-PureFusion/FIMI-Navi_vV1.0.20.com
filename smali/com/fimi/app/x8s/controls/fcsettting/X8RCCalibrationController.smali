.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8RCCalibrationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;
    }
.end annotation


# instance fields
.field private backBtn:Landroid/widget/ImageView;

.field private cali_btn:Landroid/widget/Button;

.field private final centerValue:I

.field private checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

.field private context:Landroid/content/Context;

.field private control_layout:Landroid/widget/RelativeLayout;

.field curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private downRoller:Z

.field private droneOkay:Z

.field private errorTip:Landroid/widget/TextView;

.field private final exitCmd:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private final joyCmd:I

.field private lefMidView:Lcom/fimi/app/x8s/widget/MidView;

.field leftClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/widget/MidView$clipType;",
            ">;"
        }
    .end annotation
.end field

.field private leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

.field private leftMidBottom:Landroid/widget/ImageView;

.field private leftMidLeft:Landroid/widget/ImageView;

.field private leftMidResult:I

.field private leftMidRight:Landroid/widget/ImageView;

.field private leftMidTop:Landroid/widget/ImageView;

.field private leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

.field private final midCmd:I

.field private rcConnect:Z

.field private rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field private rc_layout:Landroid/widget/RelativeLayout;

.field rightClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/widget/MidView$clipType;",
            ">;"
        }
    .end annotation
.end field

.field private rightMidBottom:Landroid/widget/ImageView;

.field private rightMidLeft:Landroid/widget/ImageView;

.field private rightMidResult:I

.field private rightMidRight:Landroid/widget/ImageView;

.field private rightMidTop:Landroid/widget/ImageView;

.field private rightMidView:Lcom/fimi/app/x8s/widget/MidView;

.field private final rollerCmd:I

.field private rtBtn:Landroid/widget/Button;

.field private rtImage:Landroid/widget/ImageView;

.field private rtTip:Landroid/widget/TextView;

.field private rt_layout:Landroid/widget/RelativeLayout;

.field private timer:Ljava/util/Timer;

.field private tipTV:Landroid/widget/TextView;

.field private upRoller:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->midCmd:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->joyCmd:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rollerCmd:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->exitCmd:I

    .line 53
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->centerValue:I

    .line 54
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 56
    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 57
    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    .line 468
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    .line 501
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcConnect:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    return-object v0
.end method

.method private breakOutDone()V
    .locals 5

    .prologue
    .line 118
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_exit_calibration:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_rc_exit_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 141
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->closeUi()V

    goto :goto_0
.end method

.method private gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V
    .locals 9
    .param p1, "rcStatus"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .prologue
    const/4 v8, 0x1

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, v1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_rc_unable_bg:I

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :goto_1
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_lead_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    .line 341
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    goto/16 :goto_0

    .line 320
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_rc_roller_bg:I

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_rc_roller_bg:I

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 342
    :cond_4
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_joy_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 354
    :cond_5
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_roller_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/RcRollerView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v7}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 361
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v7}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 362
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 364
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    .line 365
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    goto/16 :goto_0

    .line 366
    :cond_6
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_mid_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    goto/16 :goto_0

    .line 370
    :cond_7
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_9

    .line 371
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtImage:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_success_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_success:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_success_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 379
    :cond_9
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_a

    .line 380
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_failed_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 384
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtImage:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 387
    :cond_a
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_b

    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtImage:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_failed_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 393
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_calibration_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0

    .line 397
    :cond_b
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne p1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private releaseDone()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 532
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->stopTask()V

    .line 533
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    .line 534
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcConnect:Z

    .line 535
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 536
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 538
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 539
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    .line 540
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/MidView;->releaseAll()V

    .line 541
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    .line 543
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->curStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 546
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 547
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 548
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 549
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 550
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 551
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 552
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 553
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 554
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->upRoller:Z

    .line 555
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->downRoller:Z

    .line 556
    iput v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 557
    iput v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 558
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    .line 563
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 565
    return-void
.end method

.method private startCheck()V
    .locals 6

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->stopTask()V

    .line 592
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->timer:Ljava/util/Timer;

    .line 593
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    .line 594
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 595
    return-void
.end method

.method private stopTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;->cancel()Z

    .line 582
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 586
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->timer:Ljava/util/Timer;

    .line 588
    :cond_1
    return-void
.end method


# virtual methods
.method public checkRcConnect(Z)V
    .locals 4
    .param p1, "isConnect"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcConnect:Z

    if-ne v0, p1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcConnect:Z

    .line 506
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->isShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    if-nez v0, :cond_0

    .line 507
    if-nez p1, :cond_3

    .line 508
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    .line 509
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->stopTask()V

    .line 510
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v0, v1, :cond_2

    .line 511
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 512
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_no_connect_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 518
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 519
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->startCheck()V

    .line 520
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 526
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeUi()V

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->isShow:Z

    .line 528
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->releaseDone()V

    .line 529
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->context:Landroid/content/Context;

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 408
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_rc_calibration_layout:I

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    .line 409
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_up:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/RcRollerView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    .line 410
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/RcRollerView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    .line 411
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->mid_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/MidView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    .line 412
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->mid_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/MidView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    .line 413
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 414
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/MidView;->setAlpha(F)V

    .line 415
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_calibration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    .line 416
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_top_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    .line 418
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_bottom_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    .line 419
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_left_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    .line 420
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->left_right_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    .line 421
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->right_top_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    .line 422
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->right_bottom_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    .line 423
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->right_left_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    .line 424
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->right_right_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    .line 425
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->backBtn:Landroid/widget/ImageView;

    .line 426
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    .line 428
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_rc_calibration_result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    .line 429
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_error_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->errorTip:Landroid/widget/TextView;

    .line 430
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_result_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtTip:Landroid/widget/TextView;

    .line 431
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_rt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    .line 432
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rc_calibration_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    .line 434
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->control_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->control_layout:Landroid/widget/RelativeLayout;

    .line 435
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    sget v1, Lcom/fimi/app/x8s/R$id;->img_result:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rtImage:Landroid/widget/ImageView;

    .line 437
    return-void
.end method

.method public isCalibrationing()Z
    .locals 3

    .prologue
    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v1, v2, :cond_1

    .line 604
    :cond_0
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    .line 606
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->breakOutDone()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_calibration:I

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->breakOutDone()V

    goto :goto_0

    .line 94
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rt:I

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v1, v2, :cond_4

    .line 96
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 98
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->closeUi()V

    .line 107
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v1, v2, :cond_0

    .line 108
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->cali_btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v1, v2, :cond_3

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 104
    :cond_5
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_1
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 10
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 150
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;

    .line 151
    .local v0, "caliState":Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getMsgId()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getStatus()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v7, v8, :cond_1

    .line 153
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 154
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    .line 292
    .end local v0    # "caliState":Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v0    # "caliState":Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getProgress()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 158
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 159
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 195
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getCmdStatus()S

    move-result v1

    .line 196
    .local v1, "cmdStatus":I
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v7, v8, :cond_16

    .line 197
    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 198
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_3

    .line 199
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 200
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->top:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidTop:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 204
    :cond_3
    and-int/lit8 v7, v1, 0x2

    shr-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 205
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_4

    .line 206
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 207
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->left:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidLeft:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 211
    :cond_4
    and-int/lit16 v7, v1, 0x80

    shr-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 212
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_5

    .line 213
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 214
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->right:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidRight:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 218
    :cond_5
    and-int/lit8 v7, v1, 0x40

    shr-int/lit8 v7, v7, 0x6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 219
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_6

    .line 220
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    .line 221
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidBottom:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 225
    :cond_6
    and-int/lit8 v7, v1, 0x4

    shr-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 226
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_7

    .line 227
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 228
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->top:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidTop:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 232
    :cond_7
    and-int/lit8 v7, v1, 0x8

    shr-int/lit8 v7, v7, 0x3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 233
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_8

    .line 234
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 235
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->left:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidLeft:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 239
    :cond_8
    and-int/lit16 v7, v1, 0x200

    shr-int/lit8 v7, v7, 0x9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 240
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_9

    .line 241
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 242
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->right:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidRight:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 246
    :cond_9
    and-int/lit16 v7, v1, 0x100

    shr-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 247
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isSelected()Z

    move-result v7

    if-nez v7, :cond_a

    .line 248
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    .line 249
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    sget-object v8, Lcom/fimi/app/x8s/widget/MidView$clipType;->bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidBottom:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 253
    :cond_a
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftClips:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 254
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightClips:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/MidView;->setType(Ljava/util/ArrayList;)V

    .line 255
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftMidResult:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 256
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/MidView;->joyFinish()V

    .line 258
    :cond_b
    iget v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidResult:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    .line 259
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/MidView;->joyFinish()V

    .line 269
    :cond_c
    :goto_2
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v7, v8, :cond_d

    .line 270
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc1()S

    move-result v3

    .line 271
    .local v3, "rc1":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc0()S

    move-result v2

    .line 272
    .local v2, "rc0":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc2()S

    move-result v4

    .line 273
    .local v4, "rc2":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc3()S

    move-result v5

    .line 274
    .local v5, "rc3":I
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/fimi/app/x8s/widget/MidView;->setFxFy(FF)V

    .line 275
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    int-to-float v8, v5

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/fimi/app/x8s/widget/MidView;->setFxFy(FF)V

    .line 276
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc4()S

    move-result v6

    .line 277
    .local v6, "rc4":I
    const/16 v7, 0x200

    if-le v6, v7, :cond_18

    .line 278
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    add-int/lit16 v8, v6, -0x200

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/RcRollerView;->upRollerValue(I)V

    .line 286
    .end local v2    # "rc0":I
    .end local v3    # "rc1":I
    .end local v4    # "rc2":I
    .end local v5    # "rc3":I
    .end local v6    # "rc4":I
    :cond_d
    :goto_3
    iget-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    if-nez v7, :cond_0

    .line 287
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "cmdStatus":I
    :cond_e
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    goto/16 :goto_1

    .line 163
    :cond_f
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getProgress()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    .line 164
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 165
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto/16 :goto_1

    .line 167
    :cond_10
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 168
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc1()S

    move-result v3

    .line 169
    .restart local v3    # "rc1":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc0()S

    move-result v2

    .line 170
    .restart local v2    # "rc0":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc2()S

    move-result v4

    .line 171
    .restart local v4    # "rc2":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc3()S

    move-result v5

    .line 172
    .restart local v5    # "rc3":I
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->lefMidView:Lcom/fimi/app/x8s/widget/MidView;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/fimi/app/x8s/widget/MidView;->setFxFy(FF)V

    .line 173
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rightMidView:Lcom/fimi/app/x8s/widget/MidView;

    int-to-float v8, v5

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/fimi/app/x8s/widget/MidView;->setFxFy(FF)V

    goto/16 :goto_1

    .line 175
    .end local v2    # "rc0":I
    .end local v3    # "rc1":I
    .end local v4    # "rc2":I
    .end local v5    # "rc3":I
    :cond_11
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getProgress()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 176
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getStatus()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_12

    .line 177
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-eq v7, v8, :cond_2

    .line 178
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    goto/16 :goto_1

    .line 181
    :cond_12
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 182
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->getRc4()S

    move-result v6

    .line 183
    .restart local v6    # "rc4":I
    const/16 v7, 0x200

    if-le v6, v7, :cond_13

    iget-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->upRoller:Z

    if-nez v7, :cond_13

    .line 184
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    add-int/lit16 v8, v6, -0x200

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/RcRollerView;->upRollerValue(I)V

    goto/16 :goto_1

    .line 185
    :cond_13
    const/16 v7, 0x200

    if-ge v6, v7, :cond_14

    iget-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->downRoller:Z

    if-nez v7, :cond_14

    .line 186
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    rsub-int v8, v6, 0x200

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/RcRollerView;->upRollerValue(I)V

    goto/16 :goto_1

    .line 188
    :cond_14
    iget-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->upRoller:Z

    if-nez v7, :cond_15

    .line 189
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    .line 190
    :cond_15
    iget-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->downRoller:Z

    if-nez v7, :cond_2

    .line 191
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    goto/16 :goto_1

    .line 261
    .end local v6    # "rc4":I
    .restart local v1    # "cmdStatus":I
    :cond_16
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v8, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v7, v8, :cond_c

    .line 262
    and-int/lit8 v7, v1, 0x10

    shr-int/lit8 v7, v7, 0x4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    .line 263
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->upRoller:Z

    .line 265
    :cond_17
    and-int/lit16 v7, v1, 0x400

    shr-int/lit8 v7, v7, 0xa

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 266
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->downRoller:Z

    goto/16 :goto_2

    .line 279
    .restart local v2    # "rc0":I
    .restart local v3    # "rc1":I
    .restart local v4    # "rc2":I
    .restart local v5    # "rc3":I
    .restart local v6    # "rc4":I
    :cond_18
    const/16 v7, 0x200

    if-ge v6, v7, :cond_19

    .line 280
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    rsub-int v8, v6, 0x200

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/widget/RcRollerView;->upRollerValue(I)V

    goto/16 :goto_3

    .line 282
    :cond_19
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftDownRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    .line 283
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->leftUpRoller:Lcom/fimi/app/x8s/widget/RcRollerView;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/widget/RcRollerView;->clean()V

    goto/16 :goto_3
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 472
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 473
    if-eqz p1, :cond_1

    .line 474
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_plane_inSky:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    if-eq v0, p1, :cond_2

    .line 481
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    .line 483
    :cond_2
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_plane_connect:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 487
    :cond_3
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcConnect:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, v1, :cond_4

    .line 489
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->startCheck()V

    .line 490
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, v1, :cond_5

    .line 492
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, v1, :cond_6

    .line 494
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 495
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    if-ne v0, v1, :cond_0

    .line 496
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 450
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->openUi()V

    .line 451
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->isShow:Z

    .line 452
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    .line 453
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->droneOkay:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_plane_connect:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rc_layout:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rt_layout:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->rcStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->tipTV:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_no_connect_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->gotoModel(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;)V

    goto :goto_0
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 73
    return-void
.end method

.method public setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "ix8CalibrationListener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 77
    return-void
.end method
