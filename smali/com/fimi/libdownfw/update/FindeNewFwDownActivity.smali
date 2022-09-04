.class public Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "FindeNewFwDownActivity.java"

# interfaces
.implements Lcom/fimi/libdownfw/ivew/IFirmwareDownView;


# instance fields
.field btnDownAgain:Landroid/widget/Button;

.field btnReturn:Landroid/widget/ImageView;

.field private curFirmware:Ljava/lang/String;

.field currTime:J

.field downDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field downFirmwarePresenter:Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;

.field hasTry:Z

.field hostDownResult:Landroid/widget/ImageView;

.field intent:Landroid/content/Intent;

.field private isFirstDown:Z

.field private mSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field progressBar:Lcom/fimi/widget/RoundProgressBar;

.field private rt_layout:Landroid/widget/LinearLayout;

.field tvDowning:Landroid/widget/TextView;

.field tvProgress:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field tv_downList:Landroid/widget/TextView;

.field tv_fail:Landroid/widget/TextView;

.field tv_succeuss:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->currTime:J

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->isFirstDown:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->curFirmware:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->isFirstDown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->isFirstDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mSelectList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->refreshTvDownFirmwareDetail()V

    return-void
.end method

.method private notifyView()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 96
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->rt_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v3

    sget-object v4, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v3, v4}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v8}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 99
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    sget v4, Lcom/fimi/libdownfw/R$drawable;->host_down_update_sucess:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    sget v4, Lcom/fimi/libdownfw/R$string;->host_down_fwname_finish:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 103
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getdownFail()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "failString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/libdownfw/R$string;->host_down_fwname_failed:I

    invoke-virtual {p0, v5}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getdownSuccess()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "successString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/libdownfw/R$string;->host_down_fwname_success:I

    invoke-virtual {p0, v5}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->rt_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    .end local v0    # "failString":Ljava/lang/String;
    .end local v1    # "successString":Ljava/lang/String;
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v3

    sget-object v4, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v3, v4}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libdownfw/R$string;->host_downed_firmware:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "tempString":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/RoundProgressBar;->setProgress(I)V

    .line 122
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v8}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    sget v4, Lcom/fimi/libdownfw/R$drawable;->host_down_update_fail:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    sget v4, Lcom/fimi/libdownfw/R$string;->host_try_down_fwname_again:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 128
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getdownFail()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "failString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/libdownfw/R$string;->host_down_fwname_failed:I

    invoke-virtual {p0, v5}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getdownSuccess()Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1    # "successString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 135
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/libdownfw/R$string;->host_down_fwname_success:I

    invoke-virtual {p0, v5}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_4
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->rt_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "failString":Ljava/lang/String;
    .end local v1    # "successString":Ljava/lang/String;
    .end local v2    # "tempString":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v3

    sget-object v4, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v3, v4}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 146
    :cond_6
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v3

    sget-object v4, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v3, v4}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 147
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    sget v4, Lcom/fimi/libdownfw/R$drawable;->icon_firmware_down:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v3, v6}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private refreshTvDownFirmwareDetail()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mSelectList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mSelectList:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/fimi/host/HostConstants;->getNeedDownFw(ZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libdownfw/R$string;->host_downing_firmware:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "tempString":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .end local v0    # "tempString":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getUpdateContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method private stopService()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->stopService(Landroid/content/Intent;)Z

    .line 311
    :cond_0
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$1;-><init>(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;-><init>(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v0

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    sput v0, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fimi/network/DownFwService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    const-string v2, "listDownloadFwSelectInfo"

    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mSelectList:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    :cond_0
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 254
    sget v0, Lcom/fimi/libdownfw/R$layout;->activity_find_new_fw:I

    return v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 294
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downDtos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 297
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 301
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getdownFail()Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v1, "failBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 164
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 165
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v3, "1"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getDownResult()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 170
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 173
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getdownSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v1, "successBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 179
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 180
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v3, "0"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getDownResult()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;

    invoke-direct {v0, p0}, Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;-><init>(Lcom/fimi/libdownfw/ivew/IFirmwareDownView;)V

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downFirmwarePresenter:Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;

    .line 56
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_setting_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvTitle:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvProgress:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_downing:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/fimi/libdownfw/R$id;->ibtn_back:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnReturn:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/fimi/libdownfw/R$id;->rpb_down_progress:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/RoundProgressBar;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    .line 61
    sget v0, Lcom/fimi/libdownfw/R$id;->host_down_result:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hostDownResult:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/fimi/libdownfw/R$id;->btn_down_again:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    .line 63
    sget v0, Lcom/fimi/libdownfw/R$id;->rt_layout:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->rt_layout:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_down_fail:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_down_success:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_downing_list:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvTitle:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvProgress:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvProgress:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listDownloadFwSelectInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mSelectList:Ljava/util/List;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->currTime:J

    .line 70
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->refreshTvDownFirmwareDetail()V

    .line 71
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->notifyView()V

    .line 72
    return-void
.end method

.method public isDSNSuceess()Z
    .locals 4

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "ret":Z
    new-instance v0, Lcom/fimi/kernel/utils/DNSLookupThread;

    const-string/jumbo v2, "www.baidu.com"

    invoke-direct {v0, v2}, Lcom/fimi/kernel/utils/DNSLookupThread;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "dnsTh":Lcom/fimi/kernel/utils/DNSLookupThread;
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->start()V

    .line 338
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/utils/DNSLookupThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->getIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    const/4 v1, 0x1

    .line 345
    :cond_0
    return v1

    .line 339
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->downFirmwarePresenter:Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;->removerDownNoticeLisnter()V

    .line 322
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 326
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->finish()V

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fimi/kernel/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onStop()V

    .line 316
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 248
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 249
    return-void
.end method

.method public showDownFwProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 6
    .param p1, "isResult"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progress"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    iput-object p3, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->curFirmware:Ljava/lang/String;

    .line 260
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_4

    .line 261
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 262
    iget-boolean v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hasTry:Z

    if-eqz v1, :cond_0

    .line 263
    iput-boolean v5, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hasTry:Z

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v1, p2}, Lcom/fimi/widget/RoundProgressBar;->setProgress(I)V

    .line 266
    const/16 v1, 0x64

    if-ne p2, v1, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->stopService()V

    .line 268
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 290
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->notifyView()V

    .line 291
    return-void

    .line 270
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libdownfw/R$string;->host_downing_firmware:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->curFirmware:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "tempString":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->isForceUpdate(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    sget v2, Lcom/fimi/libdownfw/R$string;->host_try_down_fwname_stop:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->btnDownAgain:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 282
    .end local v0    # "tempString":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_5

    .line 283
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 284
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->stopService()V

    goto :goto_0

    .line 285
    :cond_5
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_1

    .line 286
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libdownfw/R$string;->host_downing_firmware:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->curFirmware:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "tempString":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
