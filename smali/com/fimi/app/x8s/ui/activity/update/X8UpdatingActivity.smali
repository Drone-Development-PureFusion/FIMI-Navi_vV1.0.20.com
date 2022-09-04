.class public Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8UpdatingActivity.java"


# instance fields
.field private btnReconnect:Landroid/widget/Button;

.field private downRoundProgress:Lcom/fimi/widget/DownRoundProgress;

.field private imgUpdateResult:Landroid/widget/ImageView;

.field private isUpdating:Z

.field private tvUpdateWarnming:Landroid/widget/TextView;

.field private tvUpdating:Landroid/widget/TextView;

.field private updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

.field private x8TvUpdateFailureHint:Landroid/widget/TextView;

.field private x8sTvUpdatingProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->btnReconnect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdateWarnming:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->x8sTvUpdatingProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->imgUpdateResult:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Lcom/fimi/widget/DownRoundProgress;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->downRoundProgress:Lcom/fimi/widget/DownRoundProgress;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdating:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateResult(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v10, "sucessSb":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v7, "failedSb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 151
    .local v8, "hasFailed":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 152
    .local v0, "dto":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    const-string v1, "0"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getUpdateResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u3001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v2

    .line 156
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSoftwareVer()S

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 155
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 158
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getUpdateResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u3001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    .end local v0    # "dto":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 167
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_success1:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 173
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_failed:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v9, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v8, 0x1

    .line 181
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_6
    if-eqz v8, :cond_7

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->imgUpdateResult:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_4:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->x8TvUpdateFailureHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_1
    if-eqz v8, :cond_8

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdating:Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->downRoundProgress:Lcom/fimi/widget/DownRoundProgress;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/fimi/widget/DownRoundProgress;->setProgress(I)V

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/base/EventMessage;

    const-string/jumbo v3, "x8_update_event_key"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/base/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 204
    return-void

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->imgUpdateResult:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_updating_success:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->x8TvUpdateFailureHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_8
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdating:Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->btnReconnect:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/UpdateManager;->setOnUpdateProgress(Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;)V

    .line 144
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 222
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_activity_updating:I

    return v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v1, "updating_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->isUpdating:Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->initView()V

    .line 61
    new-instance v1, Lcom/fimi/x8sdk/controller/UpdateManager;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/UpdateManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

    .line 62
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->isUpdating:Z

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->toFwInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/UpdateManager;->firmwareBuildPack(Ljava/util/List;)V

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/UpdateManager;->queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method initView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    sget v0, Lcom/fimi/app/x8s/R$id;->rpb_update_progress:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/DownRoundProgress;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->downRoundProgress:Lcom/fimi/widget/DownRoundProgress;

    .line 73
    sget v0, Lcom/fimi/app/x8s/R$id;->img_update_result:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->imgUpdateResult:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_updating:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdating:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_update_failure_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->x8TvUpdateFailureHint:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_update_warnming:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdateWarnming:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/fimi/app/x8s/R$id;->x8s_tv_updating_progress:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->x8sTvUpdatingProgress:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_reconnect:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->btnReconnect:Landroid/widget/Button;

    .line 79
    sput-boolean v4, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 80
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdateWarnming:Landroid/widget/TextView;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->tvUpdating:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 217
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->updateManager:Lcom/fimi/x8sdk/controller/UpdateManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/UpdateManager;->removeNoticeList()V

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 211
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleFcAckVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 212
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 52
    return-void
.end method
