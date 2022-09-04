.class public Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;
.super Ljava/lang/Object;
.source "X8GimbalViewManager.java"


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private ix8GimbalXYZAdjustListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

.field private mIX8GimbalHorizontalTrimListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

.field private mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

.field private mainShowView:Landroid/view/View;

.field private x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "mainShowView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mIX8GimbalHorizontalTrimListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    .line 55
    new-instance v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->ix8GimbalXYZAdjustListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    .line 27
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mainShowView:Landroid/view/View;

    .line 28
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    return-object v0
.end method


# virtual methods
.method public closeGimbalXYZAdjustUI()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->removeAlls()V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->closeUi()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .line 92
    return-void
.end method

.method public closeHorizontalTrimUi()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->removeAlls()V

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->closeUi()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    .line 84
    return-void
.end method

.method public initHorizontalTrim()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mainShowView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mIX8GimbalHorizontalTrimListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;)V

    .line 35
    return-void
.end method

.method public initXYZAdjust()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mainShowView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->ix8GimbalXYZAdjustListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V

    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 42
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->onDroneConnected(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->onDroneConnected(Z)V

    .line 100
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->removeAlls()V

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->closeUi()V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getX8MainFcAllSettingControler()Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showTopByGimbalHorizontalTrim()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    .line 116
    :cond_2
    return-void
.end method

.method public openGimbalXYZAdjustUI()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->initXYZAdjust()V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->x8GimbalXYZAdjustController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->openUi()V

    .line 76
    :cond_0
    return-void
.end method

.method public openHorizontalTrimUi()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->initHorizontalTrim()V

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mX8GimbalHorizontalTrimController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->openUi()V

    .line 69
    :cond_0
    return-void
.end method

.method public removeAlls()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->mainShowView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    return-void
.end method
