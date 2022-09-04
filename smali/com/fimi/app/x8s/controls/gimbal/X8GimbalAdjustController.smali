.class public Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;
.super Ljava/lang/Object;
.source "X8GimbalAdjustController.java"


# instance fields
.field btnCalibrate:Landroid/widget/Button;

.field btnGet:Landroid/widget/Button;

.field btnSave:Landroid/widget/Button;

.field listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

.field mContext:Landroid/content/Context;

.field mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

.field relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

.field rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/X8GimbalManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 32
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_get:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnGet:Landroid/widget/Button;

    .line 33
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnSave:Landroid/widget/Button;

    .line 34
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_pitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getTvGimbalModel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Pitch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_roll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getTvGimbalModel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Roll"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_yaw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getTvGimbalModel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Yaw"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mContext:Landroid/content/Context;

    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_calibrate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnCalibrate:Landroid/widget/Button;

    .line 42
    invoke-static {}, Lcom/fimi/kernel/Constants;->isFactoryApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_gc_calibrate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->initClickAction()V

    .line 46
    return-void
.end method

.method private initClickAction()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnCalibrate:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnSave:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->btnGet:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$4;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnSub()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$5;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$6;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnSub()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$7;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$8;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getBtnSub()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method


# virtual methods
.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .line 51
    return-void
.end method

.method public setmX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "mX8GimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 207
    return-void
.end method
