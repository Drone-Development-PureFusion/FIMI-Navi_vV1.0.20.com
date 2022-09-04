.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8FcItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final RC_LOST_ACTION_HOVER:I

.field public final RC_LOST_ACTION_LAND:I

.field public final RC_LOST_ACTION_RETURN:I

.field private btnCompassCalibration:Landroid/widget/Button;

.field coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

.field dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private fcExpSetting:Landroid/widget/ImageView;

.field fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private fcSensitivitySetting:Landroid/widget/ImageView;

.field flyHeightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

.field heightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

.field private iBtnReturnDrone:Landroid/widget/ImageButton;

.field private iBtnReturnPerson:Landroid/widget/ImageButton;

.field private imgMagneticField:Landroid/widget/ImageView;

.field private isRequest:Z

.field limitConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

.field private limitDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

.field private llFeelingSetting:Landroid/widget/LinearLayout;

.field private mConext:Landroid/content/Context;

.field mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private reGetLostActionTime:I

.field private rlFcItem:Landroid/view/View;

.field speedConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

.field private stubFcItem:Landroid/view/ViewStub;

.field private swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

.field private swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

.field private swbFollowReturn:Lcom/fimi/widget/SwitchButton;

.field private swbNoviceMode:Lcom/fimi/widget/SwitchButton;

.field private swbSportMode:Lcom/fimi/widget/SwitchButton;

.field private thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvAutoSetHome:Landroid/widget/TextView;

.field private vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private x8FcResetParams:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->RC_LOST_ACTION_RETURN:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->RC_LOST_ACTION_HOVER:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->RC_LOST_ACTION_LAND:I

    .line 110
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->speedConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .line 126
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->limitConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .line 146
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->heightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .line 163
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->flyHeightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # B
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setNoviceMode(BZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setSportMode(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isInSky:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->openSetFlyDistance(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->handNewMode(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setFlyDistance(F)V

    return-void
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostAction()V

    return-void
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initParams()V

    return-void
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->requestNewHand()V

    return-void
.end method

.method static synthetic access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->restFcSystemParams()V

    return-void
.end method

.method static synthetic access$2900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;III)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setFailsafe(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->closeSetFlyDistance(F)V

    return-void
.end method

.method static synthetic access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostActionTime:I

    return v0
.end method

.method static synthetic access$3108(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostActionTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostActionTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isInSky:Z

    return v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mConext:Landroid/content/Context;

    return-object v0
.end method

.method private closeSetFlyDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$45;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$45;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 1515
    return-void
.end method

.method private handNewMode(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 506
    :goto_0
    :pswitch_0
    return-void

    .line 452
    :pswitch_1
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setNewHand(Z)V

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 456
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 463
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 465
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 466
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 468
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    .line 472
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1e

    .line 473
    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 477
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 479
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonByNew()V

    .line 482
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    goto/16 :goto_0

    .line 485
    :pswitch_2
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setNewHand(Z)V

    .line 486
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 488
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 491
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 495
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 496
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    .line 500
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetView()V

    .line 501
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    goto/16 :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initParams()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 861
    iput v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostActionTime:I

    .line 862
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$23;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$23;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 883
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$24;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$24;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getReturnHomeHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 896
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 915
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$26;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$26;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 931
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$27;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$27;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 954
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$28;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$28;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 965
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 977
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFollowReturn()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 978
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$30;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$30;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 993
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$31;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$31;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1002
    return-void

    :cond_0
    move v0, v1

    .line 977
    goto :goto_0
.end method

.method private openSetFlyDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$46;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$46;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 1529
    return-void
.end method

.method private reGetLostAction()V
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1608
    return-void
.end method

.method private requestNewHand()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1228
    return-void
.end method

.method private restFcSystemParams()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1137
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowReturn(Z)V

    .line 1138
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowLanding(Z)V

    .line 1139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$32;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1158
    return-void
.end method

.method private setFailsafe(III)V
    .locals 2
    .param p1, "last"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;

    invoke-direct {v1, p0, p3, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;II)V

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 1478
    return-void
.end method

.method private setFlyDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$3;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 144
    return-void
.end method

.method private setNoviceMode(BZ)V
    .locals 2
    .param p1, "type"    # B
    .param p2, "isSportMode"    # Z

    .prologue
    .line 589
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;BZ)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 612
    return-void
.end method

.method private setSportMode(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "isPilotModePrimary"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 442
    return-void
.end method


# virtual methods
.method public changeMotorPattern(ZIZ)V
    .locals 4
    .param p1, "isMotorPattern"    # Z
    .param p2, "type"    # I
    .param p3, "isPilotModePrimary"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    if-nez p2, :cond_2

    .line 539
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    if-eqz p1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 544
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 545
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 547
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    if-nez p3, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetView()V

    .line 551
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 553
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 562
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    if-eqz p1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 567
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 568
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 570
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 572
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 576
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 578
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public closeItem()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isShow:Z

    .line 1011
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reuqestUiValue()V

    .line 1012
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->requestNewHand()V

    goto :goto_0
.end method

.method public defaultVal()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setViewEnable(Z)V

    .line 675
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->btnCompassCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$10;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$11;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$13;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 318
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$14;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$14;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$15;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$15;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$16;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->tvAutoSetHome:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 381
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$19;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    goto/16 :goto_0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 189
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_fc_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->stubFcItem:Landroid/view/ViewStub;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mConext:Landroid/content/Context;

    .line 191
    return-void
.end method

.method public noHandNewMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 509
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setNewHand(Z)V

    .line 510
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 512
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 513
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 519
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 520
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    .line 524
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isSportMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetViewBySport()V

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 533
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetView()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1120
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_compass_calibration:I

    if-ne v0, v1, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;->onCalibrationItemClick()V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->fc_rocker_exp_setting:I

    if-ne v0, v1, :cond_2

    .line 1123
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;->onFcExpSettingClick()V

    goto :goto_0

    .line 1124
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->fc_rocker_sensitivity_setting:I

    if-ne v0, v1, :cond_3

    .line 1125
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;->onFcSensitivitySettingClick()V

    goto :goto_0

    .line 1126
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_auto_set_home:I

    if-ne v0, v1, :cond_4

    .line 1127
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showDialog()V

    goto :goto_0

    .line 1128
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_fc_btn_rest_params:I

    if-ne v0, v1, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showRestParamDialog()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 8
    .param p1, "b"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 689
    iget-boolean v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isShow:Z

    if-nez v6, :cond_0

    .line 743
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 693
    if-eqz p1, :cond_7

    .line 694
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reuqestUiValue()V

    .line 695
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 696
    :cond_1
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 697
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnableByMode(Z)V

    .line 706
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 707
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isRequest:Z

    .line 709
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 710
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 712
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getDroneState()V

    .line 713
    iget-boolean v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isInSky:Z

    if-eqz v6, :cond_8

    .line 714
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 715
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 716
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 717
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 726
    :goto_2
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    if-eqz v6, :cond_5

    .line 727
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getTaskMode()I

    move-result v0

    .line 728
    .local v0, "currentMode":I
    sget-object v6, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v6

    if-ne v0, v6, :cond_9

    .line 729
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 739
    .end local v0    # "currentMode":I
    :cond_5
    :goto_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v1

    .line 740
    .local v1, "isOngroud":Z
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8FcResetParams:Landroid/widget/Button;

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 741
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8FcResetParams:Landroid/widget/Button;

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    move v2, v4

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0

    .line 699
    .end local v1    # "isOngroud":Z
    :cond_6
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 700
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnableByMode(Z)V

    goto/16 :goto_1

    .line 703
    :cond_7
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->defaultVal()V

    goto/16 :goto_1

    .line 719
    :cond_8
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 720
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 721
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 722
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 731
    .restart local v0    # "currentMode":I
    :cond_9
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v6}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v6

    if-nez v6, :cond_a

    .line 732
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    goto :goto_3

    .line 734
    :cond_a
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v6, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    goto :goto_3

    .end local v0    # "currentMode":I
    .restart local v1    # "isOngroud":Z
    :cond_b
    move v2, v3

    .line 740
    goto :goto_4

    :cond_c
    move v2, v5

    .line 741
    goto :goto_5
.end method

.method public onSetHomeEvent(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 621
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isGPSMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_general_return_gps_failed:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->hasHomeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getHeight()F

    move-result v1

    .line 630
    .local v1, "h":F
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAccuracy()F

    move-result v7

    .line 631
    .local v7, "accuracy":F
    const-wide/16 v2, 0x0

    .line 632
    .local v2, "lat":D
    const-wide/16 v4, 0x0

    .line 633
    .local v4, "lng":D
    if-nez p1, :cond_2

    .line 634
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 635
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    .line 646
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v8, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;

    invoke-direct {v8, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V

    move v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/x8sdk/controller/FcManager;->setHomePoint(FDDIFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getManLatLng()[D

    move-result-object v9

    .line 638
    .local v9, "latLng":[D
    if-nez v9, :cond_3

    .line 639
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_general_return_person_failed:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 642
    :cond_3
    aget-wide v2, v9, v8

    .line 643
    const/4 v0, 0x1

    aget-wide v4, v9, v0

    goto :goto_1
.end method

.method public resetSpeedLimit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1366
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getGpsSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 1369
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 1370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 1371
    return-void
.end method

.method public resetView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1342
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1345
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyHeight()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1348
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getGpsSpeed()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getGpsSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1353
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1354
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v0

    const v1, 0x459c4000    # 5000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 1355
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonState(Z)V

    .line 1356
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setNoLimit()V

    .line 1361
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonVisibility()V

    .line 1363
    :cond_3
    return-void

    .line 1358
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonState(Z)V

    .line 1359
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(FZ)V

    goto :goto_0
.end method

.method public resetViewBySport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1374
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1377
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyHeight()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 1381
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1382
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 1383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->onOtherSelect()V

    .line 1384
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 1387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1388
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 1389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 1390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 1391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnableClick(Z)V

    .line 1393
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImgMenuVisiable(I)V

    .line 1394
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setVisibility(I)V

    .line 1396
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->viewEnabled(Landroid/view/View;Z)V

    .line 1397
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 1398
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v0

    const v1, 0x459c4000    # 5000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonState(Z)V

    .line 1400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setNoLimit()V

    .line 1405
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonVisibility()V

    .line 1407
    :cond_2
    return-void

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonState(Z)V

    .line 1403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(FZ)V

    goto :goto_0
.end method

.method public reuqestUiValue()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 848
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isRequest:Z

    if-eqz v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isRequest:Z

    .line 852
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getDroneState()V

    .line 853
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setViewEnable(Z)V

    .line 854
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initParams()V

    .line 856
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->requestNewHand()V

    goto :goto_0
.end method

.method public sendAccurateLandingCmd(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1536
    if-nez p1, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$47;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$47;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->openAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1560
    :goto_0
    return-void

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$48;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$48;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->closeAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method public sendFlyHeight(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 1419
    return-void
.end method

.method public setCoverListener(Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V
    .locals 0
    .param p1, "coverListener"    # Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .line 1188
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 181
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 685
    return-void
.end method

.method public setLimitDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 1483
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    .line 1183
    return-void
.end method

.method public setMagneticField(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1100
    packed-switch p1, :pswitch_data_0

    .line 1114
    :goto_0
    return-void

    .line 1102
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1105
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1108
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1111
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 0
    .param p1, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 681
    return-void
.end method

.method public setViewEnable(Z)V
    .locals 8
    .param p1, "b"    # Z

    .prologue
    const v7, 0x459c4000    # 5000.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 1036
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1037
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 1038
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1039
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 1040
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1041
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnableByMode(Z)V

    .line 1047
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1048
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 1049
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1050
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->btnCompassCalibration:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1051
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1052
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 1053
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1054
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 1055
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1056
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setEnabled(Z)V

    .line 1059
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1060
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1061
    if-eqz p1, :cond_5

    .line 1062
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1063
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1064
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->btnCompassCalibration:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 1066
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1067
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1068
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1069
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setMagneticField(I)V

    .line 1071
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v3

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v0, v2

    .line 1072
    .local v0, "v":Z
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, v1, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setValueVisibily(IZ)V

    .line 1073
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isGpsOrVpu()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1074
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1075
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1097
    :goto_2
    return-void

    .line 1043
    .end local v0    # "v":Z
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 1044
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v3, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1071
    goto :goto_1

    .line 1077
    .restart local v0    # "v":Z
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v2, v1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 1078
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    goto :goto_2

    .line 1081
    .end local v0    # "v":Z
    :cond_5
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1082
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1083
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->btnCompassCalibration:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 1084
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 1085
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1086
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1087
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setMagneticField(I)V

    .line 1088
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1089
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v3, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 1091
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFlyDistance()F

    move-result v3

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_6

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v0, v2

    .line 1092
    .restart local v0    # "v":Z
    :goto_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setValueVisibily(IZ)V

    .line 1093
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonVisibility()V

    goto :goto_2

    .end local v0    # "v":Z
    :cond_7
    move v0, v1

    .line 1091
    goto :goto_3
.end method

.method public showChangeHomeDialog(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1253
    if-nez p1, :cond_1

    .line 1254
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_drone_msg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1256
    .local v1, "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$36;

    invoke-direct {v4, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$36;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1267
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 1268
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1286
    .end local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .end local v1    # "m":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 1270
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1271
    .restart local v2    # "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_phone_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1272
    .restart local v1    # "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;

    invoke-direct {v4, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$37;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1283
    .restart local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 1284
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 5

    .prologue
    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    if-nez v0, :cond_0

    .line 1238
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_auto_set_home_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_auto_set_home_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .end local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$35;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$35;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    .line 1248
    .end local v1    # "m":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    .restart local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    :cond_0
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 1249
    return-void
.end method

.method public showDistanceDialog()V
    .locals 5

    .prologue
    .line 1487
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_distance_limit:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1488
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_fly_distance_limit_msg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "hint":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$44;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$44;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1501
    .local v0, "dialog1":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1502
    return-void
.end method

.method public showFailsafeDialog(III)V
    .locals 5
    .param p1, "last"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I

    .prologue
    .line 1442
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, "title":Ljava/lang/String;
    const-string v1, ""

    .line 1444
    .local v1, "hint":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 1445
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_hover:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1451
    :goto_0
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;III)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1462
    .local v0, "dialog1":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 1463
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1464
    return-void

    .line 1446
    .end local v0    # "dialog1":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1447
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_leading:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1449
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_back:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public showFlyHeightDialog(F)V
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 1422
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_height_limit:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_fly_height_limit_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, "hint":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;

    invoke-direct {v4, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1436
    .local v0, "dialog1":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1438
    return-void
.end method

.method public showFollowDialog(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1313
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_follow_return_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_follow_return_msg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "hint":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 1336
    .local v0, "dialog1":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1338
    return-void
.end method

.method public showItem()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 746
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->stubFcItem:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_fc_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    .line 749
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_speed_limit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 750
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchUnityWithSpeedLimit()V

    .line 751
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->speedConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 753
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_distance_limit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 754
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchUnityWithSpeedLimit()V

    .line 755
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->limitConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 756
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbDistanceLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setSwitchButtonVisibility(I)V

    .line 760
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_novice_mode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    .line 761
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_sport_mode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    .line 763
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->ll_feeling_setting:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->llFeelingSetting:Landroid/widget/LinearLayout;

    .line 765
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_return_height_limit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 767
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->heightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 769
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_height_limit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 771
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->flyHeightConfirmListener:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 772
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_magnetic_field:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    .line 773
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_compass_calibration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->btnCompassCalibration:Landroid/widget/Button;

    .line 774
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_device_light:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbLightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 775
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->th_disconnect_measure:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->thDisconnectMeasure:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 777
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_accurate_landing:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    .line 779
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->fc_rocker_exp_setting:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcExpSetting:Landroid/widget/ImageView;

    .line 780
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->fc_rocker_sensitivity_setting:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcSensitivitySetting:Landroid/widget/ImageView;

    .line 782
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_return_drone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    .line 784
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_return_person:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    .line 786
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcExpSetting:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcSensitivitySetting:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_auto_set_home:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->tvAutoSetHome:Landroid/widget/TextView;

    .line 789
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_auto_set_home:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAutoSetHome:Lcom/fimi/widget/SwitchButton;

    .line 790
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_set_follow_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbFollowReturn:Lcom/fimi/widget/SwitchButton;

    .line 791
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_fc_btn_rest_params:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8FcResetParams:Landroid/widget/Button;

    .line 792
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8FcResetParams:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initActions()V

    .line 796
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isShow:Z

    .line 798
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->switchUnity()V

    .line 799
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rlFcItem:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 800
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getDroneState()V

    .line 801
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v1, :cond_6

    .line 802
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 803
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 806
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbNoviceMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 808
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->handNewMode(I)V

    .line 809
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 818
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v1, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isGpsOrVpu()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 820
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 821
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v6}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 828
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOpenAccurateLanding()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 833
    :goto_2
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isInSky:Z

    if-eqz v1, :cond_7

    .line 834
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 835
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 836
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 837
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 845
    :goto_3
    return-void

    .line 811
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isSportMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 812
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetViewBySport()V

    .line 813
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbSportMode:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    goto :goto_0

    .line 815
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetView()V

    goto :goto_0

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 825
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->swbAccurateLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v5}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    goto :goto_1

    .line 830
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 831
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setViewEnable(Z)V

    goto :goto_2

    .line 839
    :cond_7
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 840
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnDrone:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 841
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 842
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->iBtnReturnPerson:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3
.end method

.method public showModeSeniorDialog()V
    .locals 5

    .prologue
    .line 1291
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 1292
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_open_motor_pattern_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_open_motor_pattern_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "hint":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$38;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 1307
    .end local v0    # "hint":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1309
    return-void
.end method

.method public showNewHandDialog()V
    .locals 5

    .prologue
    .line 1563
    const/4 v0, 0x0

    .line 1564
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    if-nez v0, :cond_0

    .line 1565
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_novice_mode_disable:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1566
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_item_novice_mode_disable_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .end local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$49;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$49;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    .line 1575
    .end local v1    # "m":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    .restart local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    :cond_0
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 1576
    return-void
.end method

.method public showRestParamDialog()V
    .locals 6

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    .line 1166
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_reset_params:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    .line 1167
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_reset_params_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_general_rest:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$33;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$33;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 1179
    return-void
.end method

.method public showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V
    .locals 3
    .param p1, "signalState"    # Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getDroneState()V

    .line 1018
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->isConect:Z

    if-eqz v1, :cond_3

    .line 1019
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->getMagnetic()I

    move-result v0

    .line 1021
    .local v0, "magnetic":I
    if-ltz v0, :cond_1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1032
    .end local v0    # "magnetic":I
    :cond_0
    :goto_0
    return-void

    .line 1023
    .restart local v0    # "magnetic":I
    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/16 v1, 0x28

    if-gt v0, v1, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1026
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1030
    .end local v0    # "magnetic":I
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->imgMagneticField:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method public switchUnity()V
    .locals 1

    .prologue
    .line 1199
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbSpeedLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchUnityWithSpeedLimit()V

    .line 1201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbRTHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchUnityWithDistanceLimit()V

    .line 1202
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->vsbFlyHeightLimit:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->switchUnityWithDistanceLimit()V

    .line 1207
    :cond_0
    return-void
.end method

.method public viewEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcSensitivitySetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1580
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->fcExpSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1581
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1582
    return-void

    .line 1581
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method
