.class public Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;
.implements Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private goHeight:I

.field private goWidth:I

.field private imgBack:Landroid/widget/ImageView;

.field private imgGo:Landroid/widget/ImageView;

.field private imgSmall:Landroid/widget/ImageView;

.field private isGetMode:Z

.field private isGetSpeed:Z

.field private isShowGo:Z

.field private isSwitchMode:Z

.field private isTou:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

.field private mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

.field private timeSend:I

.field private tvTitle:Landroid/widget/TextView;

.field private type:I

.field private vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

.field private vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiFollowState;I)V
    .locals 2
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .param p4, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 46
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 47
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    .line 62
    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->timeSend:I

    .line 67
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 68
    iput p4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    .line 69
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetSpeed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Lcom/fimi/app/x8s/enums/X8AiFollowState;)Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isSwitchMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isSwitchMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    return-object v0
.end method

.method private closeFollow()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->closeUi()V

    .line 418
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;->onAiFollowExcuteBackClick()V

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 391
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->onTaskComplete(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setAiVcCloseByTaskModeChange()V

    .line 393
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 173
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 174
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public doFollow()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setFollowExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 323
    return-void
.end method

.method public getFollowMode()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiFollowModle(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 372
    return-void
.end method

.method public getFollowSpeed()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiFollowSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 388
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_go:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->tvTitle:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/fimi/app/x8s/R$id;->v_mode_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    .line 94
    sget v0, Lcom/fimi/app/x8s/R$id;->v_lock_mode_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    .line 95
    sget v0, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 97
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_normal_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->setListener(Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView$OnModeSelectListner;)V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setOnSendSpeedListener(Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView$OnSendSpeedListener;)V

    .line 106
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_parallel_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_lockup_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 79
    return-void
.end method

.method public onChangeGoLocation(FFFFII)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 213
    iget-boolean v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    if-nez v4, :cond_0

    sub-float v4, p2, p1

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 215
    :cond_0
    cmpl-float v4, p1, p2

    if-nez v4, :cond_1

    cmpl-float v4, p3, p4

    if-nez v4, :cond_1

    cmpl-float v4, p3, p2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goWidth:I

    if-nez v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goWidth:I

    .line 222
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    .line 224
    :cond_3
    new-instance v2, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .local v2, "lp":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 226
    .local v1, "l":I
    const/4 v3, 0x0

    .line 227
    .local v3, "t":I
    const/4 v0, 0x0

    .line 228
    .local v0, "inside":Z
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goWidth:I

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_4

    .line 229
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goWidth:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v1, v4

    .line 237
    :goto_1
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    int-to-float v4, v4

    cmpg-float v4, p4, v4

    if-gtz v4, :cond_6

    .line 238
    const/4 v3, 0x0

    .line 248
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v5, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-eq v4, v5, :cond_1

    .line 252
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_4
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goWidth:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    int-to-double v6, p5

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    .line 231
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_1

    .line 234
    :cond_5
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 235
    const/4 v0, 0x1

    goto :goto_1

    .line 239
    :cond_6
    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    int-to-double v6, p6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_7

    .line 240
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    sub-int v3, p6, v4

    goto :goto_2

    .line 242
    :cond_7
    if-eqz v0, :cond_8

    .line 243
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    float-to-int v3, v4

    goto :goto_2

    .line 245
    :cond_8
    sub-float v4, p4, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, p3

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->goHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 184
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_go:I

    if-ne v0, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->onGoClick()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->showExitDialog()V

    goto :goto_0

    .line 188
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->tvTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->tvTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectTaskComplete()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 425
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->closeFollow()V

    .line 426
    const-string v1, ""

    .line 427
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 428
    .local v0, "res":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    invoke-interface {v2, v1, v5}, Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;->onComplete(Ljava/lang/String;Z)V

    .line 442
    :cond_0
    return-void

    .line 430
    :pswitch_0
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_normal:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    goto :goto_0

    .line 433
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_parallel:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_lockup:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 523
    if-nez p1, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->onDisconnectTaskComplete()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-ne v0, v1, :cond_5

    .line 528
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetMode:Z

    if-nez v0, :cond_4

    .line 529
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getFollowMode()V

    .line 535
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetSpeed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetMode:Z

    if-eqz v0, :cond_3

    .line 536
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setVisibility(I)V

    .line 543
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetSpeed:Z

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getFollowSpeed()V

    goto :goto_0

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->setVisibility(I)V

    goto :goto_1

    .line 541
    :cond_5
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->sysAiVcCtrlMode()V

    goto :goto_2
.end method

.method public onGoClick()V
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setModle(I)V

    .line 303
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onModeSelect(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 555
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeSelect success  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isSwitchMode:Z

    .line 557
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setModle(I)V

    .line 559
    return-void
.end method

.method public onRight()V
    .locals 0

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->sendExiteCmd()V

    .line 471
    return-void
.end method

.method public onSendSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setFollowSpeed(I)V

    .line 564
    return-void
.end method

.method public onTaskComplete(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 397
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->closeFollow()V

    .line 398
    const-string v1, ""

    .line 399
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 400
    .local v0, "res":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    packed-switch v2, :pswitch_data_0

    .line 411
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    invoke-interface {v2, v1, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;->onComplete(Ljava/lang/String;Z)V

    .line 414
    :cond_0
    return-void

    .line 402
    :pswitch_0
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_normal:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    goto :goto_0

    .line 405
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_parallel:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 406
    goto :goto_0

    .line 408
    :pswitch_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_done:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_lockup:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchActionDown()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isTou:Z

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public onTouchActionUp()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isTou:Z

    .line 207
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setAiVcNotityFc()V

    .line 208
    return-void
.end method

.method public onTracking()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShow:Z

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isTou:Z

    if-eqz v0, :cond_0

    .line 288
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgGo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public openUi()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 138
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShow:Z

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_follow_excute_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->handleView:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgSmall:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->flagSmall:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->initViewStubViews(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->initActions()V

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-ne v1, v2, :cond_2

    .line 148
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findIndexByMode(I)V

    .line 151
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setTitle()V

    .line 152
    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->OEPNVIEW:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 153
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isGetMode:Z

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 160
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->openUi()V

    .line 162
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-ne v1, v2, :cond_1

    .line 163
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setTou(Z)V

    .line 166
    :cond_1
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 167
    return-void

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;->onAiFollowRunning()V

    .line 156
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShowGo:Z

    goto :goto_0
.end method

.method public sendExiteCmd()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 492
    return-void
.end method

.method public setAiVcCloseByTaskModeChange()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 502
    return-void
.end method

.method public setAiVcNotityFc()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 277
    return-void
.end method

.method public setFollowExit(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setFollowExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 518
    return-void
.end method

.method public setFollowSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$9;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;I)V

    invoke-virtual {v0, p1, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiFollowSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 579
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public setModle(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;I)V

    invoke-virtual {v0, p1, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiFollowModle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 352
    return-void
.end method

.method public setTitle()V
    .locals 4

    .prologue
    .line 109
    const-string v1, ""

    .line 110
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 111
    .local v0, "res":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vModeImtes:Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8AiFollowModeItemView;->findIndexByMode(I)V

    .line 126
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->imgSmall:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    return-void

    .line 113
    :pswitch_0
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_normal:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_normal1_small:I

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_parallel:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_parallel1_small:I

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_lockup:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_lockup1_small:I

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setX8AiFollowExcuteListener(Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    .line 75
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 445
    const-string v1, ""

    .line 446
    .local v1, "t":Ljava/lang/String;
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_exit_msg:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "m":Ljava/lang/String;
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->type:I

    packed-switch v2, :pswitch_data_0

    .line 458
    :goto_0
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 459
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 461
    return-void

    .line 449
    :pswitch_0
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_normal:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    goto :goto_0

    .line 452
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_parallel:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    goto :goto_0

    .line 455
    :pswitch_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_lockup:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public switchUnityEvent()V
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->vSpeedContainer:Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->switchUnity()V

    .line 586
    :cond_0
    return-void
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->mX8AiFollowState:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-eq v0, v1, :cond_0

    .line 595
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->timeSend:I

    if-nez v0, :cond_1

    .line 596
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->timeSend:I

    .line 597
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$10;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$10;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FOLLOW:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 603
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 597
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->timeSend:I

    goto :goto_0
.end method

.method public taskExit()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->onTaskComplete(Z)V

    .line 475
    return-void
.end method
