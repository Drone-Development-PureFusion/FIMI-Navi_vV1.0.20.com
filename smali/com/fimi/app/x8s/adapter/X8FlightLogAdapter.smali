.class public Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8FlightLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxHeaderViewHolder;,
        Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

.field private mIX8FlightlogRenameFile:Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;

.field private playbackDistance:Ljava/lang/String;

.field private playbackTotalTime:Ljava/lang/String;

.field section:Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renameFile"    # Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->mIX8FlightlogRenameFile:Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
    .param p1, "x1"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8FlightLogSection;)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "positionSection"    # I
    .param p3, "position1"    # I
    .param p4, "section"    # Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 146
    invoke-virtual {p4}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 147
    .local v0, "file":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    iput-object p4, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->section:Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    move-object v3, p1

    .line 148
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItmeDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getNameShow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p1

    .line 149
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getShowLen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFlightMileage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 151
    .local v1, "flightMileage":F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_0

    move-object v3, p1

    .line 152
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemMileage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-float v5, v1, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "km"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v3, p1

    .line 161
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/kernel/utils/TimerUtil;->getInstance()Lcom/fimi/kernel/utils/TimerUtil;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFlightDuration()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/fimi/kernel/utils/TimerUtil;->stringForTime(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_upload_success:I

    .line 163
    .local v2, "resId":I
    sget-object v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$3;->$SwitchMap$com$fimi$kernel$fds$FdsUploadState:[I

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/fds/FdsUploadState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 199
    :goto_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isFileLogCollect()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 200
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_2
    check-cast p1, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->rlRootView:Landroid/view/View;

    new-instance v4, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void

    .line 155
    .end local v2    # "resId":I
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    move-object v3, p1

    .line 156
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemMileage:Landroid/widget/TextView;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 158
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    iget-object v3, v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemMileage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFlightMileage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    .restart local v2    # "resId":I
    :pswitch_0
    const/4 v2, 0x0

    move-object v3, p1

    .line 166
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 182
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_playback_syn_end:I

    move-object v3, p1

    .line 183
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v3, p1

    .line 184
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    move-object v3, p1

    .line 185
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$000(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 202
    check-cast v3, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->access$100(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private renameCollectFile(Lcom/fimi/x8sdk/entity/X8FlightLogFile;Z)V
    .locals 7
    .param p1, "x8FlightLogFile"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    .param p2, "isCollect"    # Z

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getPlaybackFile()Ljava/io/File;

    move-result-object v0

    .line 366
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "path":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 368
    sget-object v5, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    sget-object v5, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "index":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v5

    iget-object v5, v5, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .end local v1    # "index":I
    .end local v3    # "stringBuffer":Ljava/lang/StringBuffer;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 385
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->mIX8FlightlogRenameFile:Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;

    if-eqz v5, :cond_0

    .line 386
    invoke-virtual {p1, v4}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->resetPlaybackFile(Ljava/io/File;)V

    .line 387
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setPlaybackFile(Ljava/io/File;Z)Z

    .line 388
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->mIX8FlightlogRenameFile:Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;

    invoke-interface {v5}, Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;->onRenameFileSuccess()V

    .line 390
    :cond_0
    return-void

    .line 374
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_1
    const-string v5, "playback"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 375
    .restart local v1    # "index":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v3    # "stringBuffer":Ljava/lang/StringBuffer;
    add-int/lit8 v5, v1, -0x1

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v6

    iget-object v6, v6, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    goto :goto_0

    .line 381
    .end local v1    # "index":I
    .end local v3    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v5

    iget-object v5, v5, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "section"    # Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 311
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method

.method public ecentBusUI(Lcom/fimi/kernel/base/EventMessage;)V
    .locals 3
    .param p1, "eventMessage"    # Lcom/fimi/kernel/base/EventMessage;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x8_flightlog_event_key"

    if-ne v1, v2, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    .local v0, "isCollect":Z
    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileLogCollectState(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isFileLogCollect()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->renameCollectFile(Lcom/fimi/x8sdk/entity/X8FlightLogFile;Z)V

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->section:Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sort(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->notifyDataSetChanged()V

    .line 82
    .end local v0    # "isCollect":Z
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0    # "isCollect":Z
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileLogCollectState(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->furrentFile:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isFileLogCollect()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->renameCollectFile(Lcom/fimi/x8sdk/entity/X8FlightLogFile;Z)V

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->section:Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sort(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "count":I
    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 249
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 251
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .line 253
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getSectionItemsTotal()I

    move-result v4

    add-int/2addr v0, v4

    .line 254
    goto :goto_0

    .line 256
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 269
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .line 272
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getSectionItemsTotal()I

    move-result v4

    .line 274
    .local v4, "sectionTotal":I
    if-lt p1, v0, :cond_1

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p1, v5, :cond_1

    .line 275
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    if-ne p1, v0, :cond_0

    .line 277
    const/4 v5, 0x0

    .line 279
    :goto_1
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 283
    :cond_1
    add-int/2addr v0, v4

    .line 284
    goto :goto_0

    .line 287
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "Invalid position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getPlaybackDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->playbackDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackTotalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->playbackTotalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInSection(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 295
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .line 296
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getSectionItemsTotal()I

    move-result v4

    .line 298
    .local v4, "sectionTotal":I
    if-lt p1, v0, :cond_1

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p1, v5, :cond_1

    .line 299
    sub-int v6, p1, v0

    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    sub-int v5, v6, v5

    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 302
    :cond_1
    add-int/2addr v0, v4

    .line 303
    goto :goto_0

    .line 306
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "Invalid position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getSection()Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "currentPos":I
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 120
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    .line 123
    .local v3, "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getSectionItemsTotal()I

    move-result v4

    .line 125
    .local v4, "sectionTotal":I
    if-lt p2, v0, :cond_0

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p2, v5, :cond_0

    .line 127
    invoke-virtual {v3}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->isHasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    if-ne p2, v0, :cond_1

    .line 136
    :cond_0
    :goto_1
    add-int/2addr v0, v4

    .line 137
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getPositionInSection(I)I

    move-result v5

    invoke-direct {p0, p1, v5, p2, v3}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8FlightLogSection;)V

    goto :goto_1

    .line 140
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;>;"
    .end local v3    # "section":Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
    .end local v4    # "sectionTotal":I
    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_flight_log_header_layout:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxHeaderViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxHeaderViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/view/View;)V

    .line 113
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_flight_log_item_layout:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .restart local v1    # "view":Landroid/view/View;
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/view/View;)V

    .line 111
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;
    goto :goto_0

    .line 113
    .end local v0    # "holder":Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHeaderBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 219
    return-void
.end method

.method public setPlaybackDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "playbackDistance"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->playbackDistance:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setPlaybackTotalTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "playbackTotalTime"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->playbackTotalTime:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    new-instance v0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$2;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public unregisterEventBus()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 86
    return-void
.end method
