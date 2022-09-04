.class public Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;
.implements Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;


# static fields
.field private static MIN:I


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field private imgSuroundBg:Landroid/widget/ImageView;

.field private imgVcToggle:Landroid/widget/ImageView;

.field private isChangRadius:Z

.field private isDraw:Z

.field private isGetPoint:Z

.field private isGetSpeed:Z

.field protected isNextShow:Z

.field private isSetCircle:Z

.field private lastLat:D

.field private lastLog:D

.field private lat:D

.field private lat1:D

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

.field private log:D

.field private log1:D

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mTvRadius:Landroid/widget/TextView;

.field private mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field private mX8AiSurroundToPointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

.field private nextRootView:Landroid/view/View;

.field private r:F

.field private radius:F

.field private speed:I

.field private timeSend:I

.field private tvP2PTip:Landroid/widget/TextView;

.field private tvPoint:Landroid/widget/TextView;

.field private tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private vRadiusBg:Landroid/view/View;

.field private vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput v0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->MIN:I

    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiSuroundState;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 52
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 57
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    .line 66
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->width:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->timeSend:I

    .line 361
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 83
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 84
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Lcom/fimi/app/x8s/enums/X8AiSuroundState;)Lcom/fimi/app/x8s/enums/X8AiSuroundState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeNextUiFromNext(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lat:D

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->log:D

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetPoint:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetSpeed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->flagSmall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lat1:D

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->log1:D

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    return v0
.end method

.method static synthetic access$2302(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    return p1
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->MIN:I

    return v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    return v0
.end method

.method static synthetic access$2602(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLat:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLog:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isSetCircle:Z

    return p1
.end method

.method private closeNextUiFromNext(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeNextUi(Z)V

    .line 429
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_surround_mext:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 432
    return-void
.end method

.method private closeSurround()V
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeUi()V

    .line 436
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;->onSurroundBackClick()V

    .line 439
    :cond_0
    return-void
.end method

.method private setTakeOffPoint()V
    .locals 14

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v1, 0x8

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isSetCircle:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openNextUi()V

    .line 345
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v6

    .line 318
    .local v6, "log":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v8

    .line 319
    .local v8, "lat":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v5

    .line 320
    .local v5, "alt":F
    cmpl-float v0, v5, v2

    if-ltz v0, :cond_1

    .line 327
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-wide v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLog:D

    iget-wide v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLat:D

    new-instance v12, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;

    invoke-direct {v12, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    move v10, v5

    invoke-virtual/range {v0 .. v12}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundCiclePoint(DDFDDFILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v1, Lcom/fimi/app/x8s/R$string;->height_tip:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v2, v3, v11}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 324
    .local v13, "tip":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0, v13, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 393
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->onTaskComplete(Z)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIconByNextUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 709
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    return-void
.end method

.method public closeNextUi(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 269
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isNextShow:Z

    .line 270
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 271
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 273
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isShow:Z

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->clearSurroundMarker()V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->resetMapEvent()V

    .line 243
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcClose()V

    .line 244
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 245
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public getCurrentDistance()F
    .locals 10

    .prologue
    .line 348
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v6

    .line 349
    .local v6, "currentLng":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v8

    .line 350
    .local v8, "currentLat":D
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLog:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLat:D

    invoke-virtual/range {v1 .. v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->getSurroundRadius(DDDD)F

    move-result v0

    .line 351
    .local v0, "r":F
    return v0
.end method

.method public getPoint()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiSurroundCiclePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 472
    return-void
.end method

.method public getSpeed()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$10;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$10;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiSurroundSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 608
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 94
    return-void
.end method

.method public onChangeGoLocation(FFFFII)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 565
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/high16 v8, 0x43fa0000    # 500.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 130
    .local v0, "id":I
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v4, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v3, v4, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->showExitDialog()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeSurround()V

    goto :goto_0

    .line 136
    :cond_2
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_set_dot:I

    if-ne v0, v3, :cond_7

    .line 137
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v4, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v3, v4, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setCirclePoint()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v4, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v3, v4, :cond_6

    .line 140
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    .line 141
    invoke-static {v8, v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius_tip2:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v3, v2, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 144
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_4
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    .line 145
    invoke-static {v7, v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius_tip1:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v3, v2, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setTakeOffPoint()V

    goto :goto_0

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v4, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v3, v4, :cond_0

    .line 153
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v4, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v3, v4, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openNextUi()V

    .line 155
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_7
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_main_ai_ai_surround_next_blank:I

    if-ne v0, v3, :cond_8

    .line 158
    invoke-direct {p0, v6}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeNextUiFromNext(Z)V

    goto :goto_0

    .line 159
    :cond_8
    sget v3, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    if-ne v0, v3, :cond_a

    .line 160
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_9

    .line 161
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcOpen()V

    goto/16 :goto_0

    .line 163
    :cond_9
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcClose()V

    goto/16 :goto_0

    .line 165
    :cond_a
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 167
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 169
    :cond_b
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 512
    if-nez p1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->sysAiVcCtrlMode()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v0, v1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->sendExiteCmd()V

    .line 508
    :cond_0
    return-void
.end method

.method public onSendSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$11;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$11;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, p1, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 621
    return-void
.end method

.method public onTaskComplete(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeSurround()V

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;->onSurroundComplete(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onTouchActionUp()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public onTracking()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 587
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeSurround()V

    .line 406
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;->onSurroundComplete(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public openNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeIconByNextUi()V

    .line 251
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSurroundToPointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;F)V

    .line 252
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSurroundToPointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSurroundToPointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v1, v2, v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    .line 255
    :cond_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isNextShow:Z

    if-nez v1, :cond_1

    .line 256
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isNextShow:Z

    .line 257
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->width:I

    .line 259
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 260
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 264
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public openUi()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 179
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isShow:Z

    .line 180
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_surround_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_set_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_p2p_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvP2PTip:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_ai_radius:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mTvRadius:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_suround_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_x8_ai_surround_radius:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 193
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 194
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_select_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_surround_speed:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    .line 197
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    const/16 v2, 0x64

    sget v3, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->MIN:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setMaxMin(III)V

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setOnSendSpeedListener(Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;)V

    .line 200
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->flagSmall:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_surround_next_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->nextRootView:Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_ai_surround_next_blank:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->blank:Landroid/view/View;

    .line 205
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

    invoke-direct {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSurroundToPointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;

    .line 206
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->initActions()V

    .line 207
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 209
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v1, v2, :cond_1

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mTvRadius:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v1, v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcOpen()V

    .line 229
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openVcToggle()V

    .line 230
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;->onSurroundRunning()V

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 233
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    .line 225
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    goto :goto_0
.end method

.method public openVcToggle()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public sendExiteCmd()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 425
    return-void
.end method

.method public setAiVcClose()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 560
    return-void
.end method

.method public setAiVcNotityFc()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 534
    return-void
.end method

.method public setAiVcOpen()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 547
    return-void
.end method

.method public setCirclePoint()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLog:D

    .line 297
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLat:D

    .line 298
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v0

    .line 299
    .local v0, "alt":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvPoint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_surround_set_takeoff_point:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_select_point2:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mTvRadius:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4, v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 304
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLat:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lastLog:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundMark(DD)V

    .line 305
    return-void
.end method

.method public setDeviceRadius()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->getCurrentDistance()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    .line 356
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->radius:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 357
    .local v0, "r":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mTvRadius:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    int-to-float v4, v0

    invoke-static {v4, v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 292
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 569
    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcNotityFc()V

    .line 572
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    .line 90
    return-void
.end method

.method public setSpeed(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 590
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    .line 591
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setSpeed2(I)V

    .line 592
    return-void
.end method

.method public setSpeedMax(I)V
    .locals 3
    .param p1, "speedMax"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    sget v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->MIN:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setMaxMin(III)V

    .line 636
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_surround_to_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_surround_eixte:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 123
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 125
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 10
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/4 v9, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v8, 0x1

    .line 643
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v1, v2, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setDeviceRadius()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v1, v2, :cond_4

    .line 647
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetPoint:Z

    if-nez v1, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->getPoint()V

    .line 650
    :cond_2
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetSpeed:Z

    if-nez v1, :cond_3

    .line 651
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->getSpeed()V

    .line 653
    :cond_3
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetPoint:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetSpeed:Z

    if-eqz v1, :cond_0

    .line 654
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    .line 655
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lat:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->log:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundMark(DD)V

    .line 656
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lat:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->log:D

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    invoke-virtual/range {v1 .. v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundCircle(DDF)V

    .line 657
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v1, v9}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setVisibility(I)V

    goto :goto_0

    .line 661
    :cond_4
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isDraw:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetPoint:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isGetSpeed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v1, v2, :cond_0

    .line 662
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAiSurroundState()Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    move-result-object v7

    .line 663
    .local v7, "runState":Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    if-eqz v7, :cond_0

    .line 664
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getStates()I

    move-result v1

    if-eqz v1, :cond_5

    .line 665
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isChangRadius:Z

    .line 666
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getSpeed()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    .line 667
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getRadius()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    goto/16 :goto_0

    .line 671
    :cond_5
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isChangRadius:Z

    if-eqz v1, :cond_0

    .line 673
    iput-boolean v9, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isChangRadius:Z

    .line 674
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getSpeed()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    .line 675
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getRadius()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    .line 676
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->lat:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->log:D

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    invoke-virtual/range {v1 .. v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->reSetAiSurroundCircle(DDF)V

    .line 677
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->r:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 678
    .local v0, "max":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_6

    .line 679
    const/16 v0, 0x64

    .line 681
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    sget v2, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->MIN:I

    invoke-virtual {v1, v0, v2, v8}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setMaxMin(III)V

    .line 684
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 685
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    if-lez v1, :cond_8

    .line 686
    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    .line 691
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setSpeed2(I)V

    goto/16 :goto_0

    .line 688
    :cond_8
    neg-int v1, v0

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->speed:I

    goto :goto_1
.end method

.method public switchMapVideo(Z)V
    .locals 4
    .param p1, "sightFlag"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->handleView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v3, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v0, v3, :cond_3

    .line 480
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v3, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v0, v3, :cond_0

    .line 486
    if-eqz p1, :cond_4

    .line 487
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 480
    goto :goto_1

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchUnityEvent()V
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->vSpeed:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->switchUnity()V

    .line 627
    :cond_0
    return-void
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->mX8AiSuroundState:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    if-ne v0, v1, :cond_1

    .line 717
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->timeSend:I

    if-nez v0, :cond_2

    .line 718
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->timeSend:I

    .line 719
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$12;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_INTEREST_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 725
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 719
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->timeSend:I

    goto :goto_0
.end method

.method public taskExit()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->onTaskComplete(Z)V

    .line 413
    return-void
.end method
