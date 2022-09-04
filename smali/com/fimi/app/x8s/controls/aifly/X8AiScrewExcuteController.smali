.class public Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;
    }
.end annotation


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private currentLat:D

.field private currentLog:D

.field private cw:Z

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private distance:I

.field private flagSmall:Landroid/view/View;

.field private height:F

.field private imgBack:Landroid/widget/ImageView;

.field private imgSuroundBg:Landroid/widget/ImageView;

.field private isDraw:Z

.field private isGetDistance:Z

.field private isGetPoint:Z

.field private isGetSpeed:Z

.field private isNextShow:Z

.field protected isShow:Z

.field private lastLat:D

.field private lastLog:D

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mTvRadius:Landroid/widget/TextView;

.field private mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

.field private nextRootView:Landroid/view/View;

.field private prex:Ljava/lang/String;

.field private r:I

.field private radius:F

.field private state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

.field private timeSend:I

.field private tvP2PTip:Landroid/widget/TextView;

.field private tvPoint:Landroid/widget/TextView;

.field private tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private vRadiusBg:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 47
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->width:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->timeSend:I

    .line 86
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 254
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 102
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 103
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->vRadiusBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLat:D

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLat:D

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLog:D

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLog:D

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->r:I

    return p1
.end method

.method static synthetic access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetPoint:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetDistance:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->distance:I

    return p1
.end method

.method static synthetic access$1802(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetSpeed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->cw:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->flagSmall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    return-wide p1
.end method

.method private closeScrewing()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeUi()V

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;->onAiScrewBackClick()V

    .line 363
    :cond_0
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeScrewing()V

    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;->onAiScrewComplete(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method private sendCircleCmd()V
    .locals 13

    .prologue
    .line 467
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLog:D

    .line 468
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLat:D

    .line 470
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getLastLng()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getLastLat()D

    move-result-wide v3

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    iget-wide v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLog:D

    iget-wide v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLat:D

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    const/4 v11, 0x2

    new-instance v12, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;

    invoke-direct {v12, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual/range {v0 .. v12}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundCiclePoint(DDFDDFILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 481
    return-void
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 328
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->onTaskComplete(Z)V

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIconByNextUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 561
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    return-void
.end method

.method public closeNextUi(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 281
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isNextShow:Z

    .line 282
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 283
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 285
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isShow:Z

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->clearSurroundMarker()V

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->resetMapEvent()V

    .line 218
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 219
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public drawScrew(ZII)V
    .locals 12
    .param p1, "b"    # Z
    .param p2, "radius"    # I
    .param p3, "max"    # I

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isDraw:Z

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onLocationEvnent()V

    .line 463
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    iget-wide v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLat:D

    iget-wide v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->currentLog:D

    move v1, p1

    move v10, p2

    move v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->addPolylinescircle(ZDDDDII)V

    .line 464
    return-void
.end method

.method public getCurrentDistance()F
    .locals 10

    .prologue
    .line 454
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v6

    .line 455
    .local v6, "currentLng":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v8

    .line 456
    .local v8, "currentLat":D
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    invoke-virtual/range {v1 .. v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->getSurroundRadius(DDDD)F

    move-result v0

    .line 457
    .local v0, "r":F
    return v0
.end method

.method public getLastLat()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    return-wide v0
.end method

.method public getLastLng()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    return-wide v0
.end method

.method public getMaxDistance()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getScrewPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 539
    return-void
.end method

.method public getParmeter()V
    .locals 3

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isDraw:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v0, v1, :cond_3

    .line 493
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetPoint:Z

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getPoint()V

    .line 496
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetDistance:Z

    if-nez v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getMaxDistance()V

    .line 499
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetSpeed:Z

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getSpeed()V

    .line 502
    :cond_2
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetPoint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetDistance:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isGetSpeed:Z

    if-eqz v0, :cond_3

    .line 503
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->cw:Z

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->r:I

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->distance:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->drawScrew(ZII)V

    .line 506
    :cond_3
    return-void
.end method

.method public getPoint()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiSurroundCiclePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 525
    return-void
.end method

.method public getSpeed()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiSurroundSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 558
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 113
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v10, 0x43480000    # 200.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    .local v0, "id":I
    sget v4, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v4, :cond_2

    .line 137
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-eq v4, v5, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeScrewing()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->showExitDialog()V

    goto :goto_0

    .line 142
    :cond_2
    sget v4, Lcom/fimi/app/x8s/R$id;->img_ai_set_dot:I

    if-ne v0, v4, :cond_8

    .line 143
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v4, v5, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->setCirclePoint()V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v4, v5, :cond_7

    .line 147
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->radius:F

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_4

    .line 148
    invoke-static {v10, v7, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius_tip2:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "t":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v4, v2, v7}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 151
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->radius:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_5

    .line 152
    invoke-static {v9, v7, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_radius_tip1:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .restart local v2    # "t":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v4, v2, v7}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_5
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_6

    .line 156
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->height_tip:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8, v7, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "tip":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v4, v3, v7}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 159
    .end local v3    # "tip":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->sendCircleCmd()V

    goto :goto_0

    .line 161
    :cond_7
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v4, v5, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->openNextUi()V

    goto/16 :goto_0

    .line 164
    :cond_8
    sget v4, Lcom/fimi/app/x8s/R$id;->main_ai_ai_screw_next_blank:I

    if-ne v0, v4, :cond_9

    .line 165
    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeNextUi(Z)V

    .line 166
    sget-object v4, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    goto/16 :goto_0

    .line 167
    :cond_9
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    .line 169
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    :cond_a
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 333
    if-nez p1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->sysAiVcCtrlMode()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->sendExiteCmd()V

    .line 98
    :cond_0
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeScrewing()V

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;->onAiScrewComplete(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public openNextUi()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeIconByNextUi()V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->radius:F

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;FF)V

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isNextShow:Z

    if-nez v0, :cond_1

    .line 230
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isNextShow:Z

    .line 231
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->width:I

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->width:I

    int-to-float v3, v3

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 234
    .local v6, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    .end local v6    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public openUi()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x8

    .line 178
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isShow:Z

    .line 179
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 180
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_screw_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_suround_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    .line 182
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_p2p_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvP2PTip:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_set_dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_x8_ai_surround_radius:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->vRadiusBg:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_ai_radius:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mTvRadius:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 188
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_surround_select_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->flagSmall:Landroid/view/View;

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-eq v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mTvRadius:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_screw_hight_distance:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->prex:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_screw_next_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->main_ai_ai_screw_next_blank:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->blank:Landroid/view/View;

    .line 200
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    invoke-direct {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;->onAiScrewRunning()V

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 210
    return-void
.end method

.method public sendExiteCmd()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setScrewExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 380
    return-void
.end method

.method public setCirclePoint()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 435
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    .line 436
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    .line 437
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvPoint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_surround_set_takeoff_point:I

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_screw_tip5:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "prex1":Ljava/lang/String;
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4, v8, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "str1":Ljava/lang/String;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4, v8, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "str2":Ljava/lang/String;
    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4, v8, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "str3":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 448
    sget-object v4, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 449
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v4

    iget-wide v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLat:D

    iget-wide v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->lastLog:D

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundMark(DD)V

    .line 450
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .param p2, "mFcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 303
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 304
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    .line 108
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 314
    const-string v1, ""

    .line 315
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 316
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_screw_exte:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 319
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 320
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 10
    .param p1, "state1"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 397
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    if-eqz v5, :cond_2

    .line 398
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->nextRootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 399
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mX8AiScrewNextModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;

    invoke-virtual {v5, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 401
    :cond_0
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v8, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v5, v8, :cond_3

    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v9, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-ne v8, v9, :cond_4

    move v8, v6

    :goto_1
    or-int/2addr v5, v8

    if-eqz v5, :cond_2

    .line 402
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v5

    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    .line 404
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->height:F

    .line 406
    .local v3, "intH":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getCurrentDistance()F

    move-result v5

    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->radius:F

    .line 408
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->radius:F

    .line 410
    .local v2, "intD":F
    const-string v1, ""

    .line 411
    .local v1, "h":Ljava/lang/String;
    const-string v0, ""

    .line 412
    .local v0, "d":Ljava/lang/String;
    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_5

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'#ffffffff\'>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v6, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</font>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    :goto_2
    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'#ffffffff\'>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v6, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</font>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_3
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->vRadiusBg:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->prex:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v7

    aput-object v0, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->mTvRadius:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "h":Ljava/lang/String;
    .end local v2    # "intD":F
    .end local v3    # "intH":F
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getParmeter()V

    .line 432
    return-void

    :cond_3
    move v5, v7

    .line 401
    goto/16 :goto_0

    :cond_4
    move v8, v7

    goto/16 :goto_1

    .line 415
    .restart local v0    # "d":Ljava/lang/String;
    .restart local v1    # "h":Ljava/lang/String;
    .restart local v2    # "intD":F
    .restart local v3    # "intH":F
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'#F22121\'>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v6, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</font>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 420
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'#F22121\'>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v6, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</font>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public switchMapVideo(Z)V
    .locals 3
    .param p1, "sightFlag"    # Z

    .prologue
    const/16 v0, 0x8

    .line 384
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->handleView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->isShow:Z

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-eq v1, v2, :cond_3

    .line 388
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 390
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->imgSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->state:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    if-eq v0, v1, :cond_0

    .line 567
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->timeSend:I

    if-nez v0, :cond_1

    .line 568
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->timeSend:I

    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SPIRAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 575
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->timeSend:I

    goto :goto_0
.end method

.method public taskExit()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->onTaskComplete(Z)V

    .line 324
    return-void
.end method
