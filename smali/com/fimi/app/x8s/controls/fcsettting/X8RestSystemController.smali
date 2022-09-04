.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;
.super Ljava/lang/Object;
.source "X8RestSystemController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;
    }
.end annotation


# instance fields
.field fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

.field restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

.field x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/x8sdk/controller/X8GimbalManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .param p3, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .param p4, "restSystemListener"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 45
    new-instance v0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    .line 46
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->resetALLSystem()V

    return-void
.end method

.method private resetALLSystem()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->init()V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;->onStart()V

    .line 80
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->resetAppParams()V

    .line 81
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restRCSystemParams()V

    .line 82
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restFcSystemParams()V

    .line 83
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->resetGimablSystem()V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void
.end method

.method private resetAppParams()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowReturn(Z)V

    .line 111
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowLanding(Z)V

    .line 112
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restFiveKey()V

    .line 113
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_STYLE:Ljava/lang/String;

    sget v2, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 114
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    sget v1, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapStyle(I)V

    .line 115
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_UNITY_OPTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 116
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setShowmMtric(Z)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->setAppResult(Z)V

    .line 118
    return-void
.end method

.method private resetGimablSystem()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->resetGCParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 145
    return-void
.end method

.method private restFcSystemParams()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 160
    return-void
.end method

.method private restFiveKey()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 126
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 127
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 129
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method private restRCSystemParams()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->isAppResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->isFcResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->isRcResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_rest_paramters_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 172
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/controller/AllSettingManager;->getInstance()Lcom/fimi/x8sdk/controller/AllSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/AllSettingManager;->getAllSetting()V

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;->onFinish()V

    .line 174
    return v3

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_rest_paramters_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showRestParamDialog()V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_general_version_rest_paramters:I

    .line 58
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_general_rest_paramters_content:I

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_general_rest:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 75
    return-void
.end method
