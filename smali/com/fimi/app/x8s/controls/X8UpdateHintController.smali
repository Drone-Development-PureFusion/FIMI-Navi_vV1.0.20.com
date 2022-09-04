.class public Lcom/fimi/app/x8s/controls/X8UpdateHintController;
.super Ljava/lang/Object;
.source "X8UpdateHintController.java"


# instance fields
.field private context:Landroid/app/Activity;

.field private dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController$4;-><init>(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    .line 29
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public queryCurSystemStatus()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->setOnIUpdateCheckAction(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;)V

    .line 110
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->queryCurSystemStatus()V

    .line 111
    return-void
.end method

.method public setPresenterLockMotor()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getTakeOffCap()I

    move-result v0

    const/16 v1, -0xe

    if-ne v0, v1, :cond_0

    .line 116
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->setPresenterLockMotor(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public showUpdateDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 36
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->getUpfireDtos()Ljava/util/List;

    move-result-object v7

    .line 39
    .local v7, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_update_check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 41
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->isForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    :cond_2
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_update_fw_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_update_tip:I

    .line 46
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v5, Lcom/fimi/app/x8s/R$string;->fimi_sdk_update_now:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v6, Lcom/fimi/app/x8s/R$string;->fimi_sdk_update_return:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/fimi/app/x8s/controls/X8UpdateHintController$1;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController$1;-><init>(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8UpdateHintController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController$2;-><init>(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_update_fw_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_update_tip:I

    .line 74
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v5, Lcom/fimi/app/x8s/R$string;->fimi_sdk_update_ignore:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    sget v6, Lcom/fimi/app/x8s/R$string;->fimi_sdk_update_now:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;-><init>(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->dialogManagerUpdate:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto/16 :goto_0
.end method
