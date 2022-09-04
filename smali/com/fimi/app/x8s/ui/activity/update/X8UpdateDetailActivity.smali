.class public Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8UpdateDetailActivity.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;


# instance fields
.field btnStartUpdate:Landroid/widget/Button;

.field contentAdapter:Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

.field imgLogo:Landroid/widget/ImageView;

.field imgUpdateFirmware:Landroid/widget/ImageView;

.field private isCanUpdate:Z

.field listviewUpdateContent:Landroid/widget/ListView;

.field tvReason:Landroid/widget/TextView;

.field upfirewareDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field x8IvUpdateDetailReturn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->readyGoThenKill(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public doTrans()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->x8IvUpdateDetailReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_activity_update_detail:I

    return v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 49
    sget v0, Lcom/fimi/app/x8s/R$id;->img_update_firmware:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgLogo:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgLogo:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_update_wait:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_reason:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->tvReason:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/fimi/app/x8s/R$id;->img_update_firmware:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_update_detail_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->x8IvUpdateDetailReturn:Landroid/widget/ImageView;

    .line 54
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->getUpfireDtos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->upfirewareDtos:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->upfirewareDtos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->tvReason:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_ready:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :goto_0
    sget v0, Lcom/fimi/app/x8s/R$id;->listview_update_content:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->listviewUpdateContent:Landroid/widget/ListView;

    .line 62
    new-instance v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->upfirewareDtos:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->contentAdapter:Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->listviewUpdateContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->contentAdapter:Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_start_update:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->btnStartUpdate:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->btnStartUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$1;

    const/16 v2, 0x320

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->tvReason:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->setOnIUpdateCheckAction(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;)V

    .line 79
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->queryCurSystemStatus()V

    .line 80
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 45
    return-void
.end method

.method public showIsUpdate(ZI)V
    .locals 4
    .param p1, "isUpdate"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 106
    if-nez p1, :cond_9

    .line 107
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->isCanUpdate:Z

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->btnStartUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_insky:I

    if-ne p2, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_6:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->tvReason:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_1
    return-void

    .line 111
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_a12ununited:I

    if-ne p2, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_7:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 113
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_error_code_update_3:I

    if-eq p2, v1, :cond_3

    sget v1, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_3:I

    if-ne p2, v1, :cond_4

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 115
    :cond_4
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_5:I

    if-ne p2, v1, :cond_5

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 117
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_lowpower:I

    if-eq p2, v1, :cond_6

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_error_code_update_22:I

    if-ne p2, v1, :cond_7

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_5:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_connect:I

    if-ne p2, v1, :cond_8

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8s_update_error_7:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_err_updating:I

    if-ne p2, v1, :cond_0

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "updating_key"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-class v1, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->readyGoThenKill(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 131
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_9
    iput-boolean v3, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->isCanUpdate:Z

    .line 132
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->tvReason:Landroid/widget/TextView;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_update_ready:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->btnStartUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->imgUpdateFirmware:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->fimisdk_update_wait:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
