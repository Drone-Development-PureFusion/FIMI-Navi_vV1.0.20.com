.class public Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8GimbalHorizontalTrimController.java"


# instance fields
.field private final MAX_ANGLE:F

.field private final MIN_ANGLE:F

.field private final activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->MAX_ANGLE:F

    .line 23
    const/high16 v0, -0x3ee00000    # -10.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->MIN_ANGLE:F

    .line 32
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;)Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    return-object v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getHorizontalAdjust(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->isShow:Z

    .line 72
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeUi()V

    .line 73
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 38
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->isShow:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->closeUi()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 109
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->getCurrValue()F

    move-result v2

    float-to-double v2, v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 112
    .local v1, "value":F
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;)V

    invoke-virtual {v2, v1, v3}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setHorizontalAdjust(FLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 121
    .end local v1    # "value":F
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->isShow:Z

    .line 54
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_view_horizontal_trim_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->handleView:Landroid/view/View;

    .line 56
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_horizontal_trim_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    .line 57
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->horizontalTrimView:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setEnabled(Z)V

    .line 61
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->initData()V

    .line 62
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 63
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;

    .line 67
    return-void
.end method
