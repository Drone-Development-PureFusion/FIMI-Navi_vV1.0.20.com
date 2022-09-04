.class public Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraParamsController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# instance fields
.field private context:Landroid/content/Context;

.field curStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field private isConnected:Z

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mContext:Landroid/content/Context;

.field private paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->isConnected:Z

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$array;->x8_photo_params_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "keyArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->initKeyArray([Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    .line 80
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$color;->white_10:I

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    return-void
.end method

.method private initKeyArray([Ljava/lang/String;)V
    .locals 6
    .param p1, "keyArray"    # [Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_b

    array-length v2, p1

    if-lez v2, :cond_b

    .line 91
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_b

    aget-object v1, p1, v2

    .line 92
    .local v1, "key":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;-><init>()V

    .line 93
    .local v0, "entity":Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const-string v4, "record_mode"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickName(Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "system_type"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    const-string/jumbo v4, "video_resolution"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    const-string/jumbo v4, "video_quality"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_record_auto:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    const-string v4, "capture_mode"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_5
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    const-string v4, "photo_size"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_6
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    const-string v4, "photo_format"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :cond_7
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 110
    const-string v4, "awb"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    :cond_8
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_metering:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 112
    const-string v4, "metering_mode"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :cond_9
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 114
    const-string v4, "digital_effect"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :cond_a
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    const-string v4, "camera_style"

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
    .end local v0    # "entity":Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    .end local v1    # "key":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private matchNickKey(Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;)V
    .locals 4
    .param p1, "itemEntity"    # Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "paramKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "paramValue":Ljava/lang/String;
    const-string v2, "awb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 163
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_auto:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v2, "incandescent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_incandescent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string v2, "d4000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_d4000:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    const-string v2, "sunny"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_sunny:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_4
    const-string v2, "cloudy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_cloudy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_5
    const-string v2, "shadw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_awb_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_6
    const-string v2, "metering_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 177
    const-string v2, "spot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_meter_spot:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_7
    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_meter_center:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_8
    const-string v2, "average"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_meter_average:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_9
    const-string v2, "digital_effect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    .line 185
    const-string v2, "General"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_general:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string v2, "Vivid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 188
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_vivid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_b
    const-string v2, "art"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 190
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_art:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_c
    const-string v2, "black/white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 192
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_black_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_d
    const-string v2, "film"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_film:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_e
    const-string v2, "sepia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_sepia:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_f
    const-string v2, "F-LOG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 198
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_flog:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_10
    const-string v2, "punk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_colours_punk:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_11
    const-string/jumbo v2, "video_quality"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    .line 203
    const-string v2, "sfine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 204
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_record_quality_sfine:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_12
    const-string v2, "fine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 206
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_record_quality_fine:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_13
    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_record_quality_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_14
    const-string v2, "capture_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 211
    const-string v2, "normal_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 212
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_photo_signal_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_15
    const-string/jumbo v2, "timelapse_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_photo_delay_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_16
    const-string v2, "panorama_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_photo_panorama_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_17
    const-string v2, "record_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 219
    const-string v2, "normal_record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 220
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_record_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_18
    const-string/jumbo v2, "timelapase_record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_record_cut_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setNickParam(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    .line 127
    sget v0, Lcom/fimi/app/x8s/R$id;->param_default_view_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->handleView:Landroid/view/View;

    .line 128
    sget v0, Lcom/fimi/app/x8s/R$id;->param_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 129
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 151
    .local v0, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    .line 157
    .end local v0    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 231
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->curStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v0, v1, :cond_0

    .line 232
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->curStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->curStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->notifyDataSetChanged()V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->isConnected:Z

    if-eq v0, p1, :cond_1

    .line 238
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->isConnected:Z

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->setEnable(Z)V

    .line 241
    :cond_1
    return-void
.end method

.method public openUi()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->updateData(Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V
    .locals 1
    .param p1, "paramListener"    # Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V

    .line 49
    return-void
.end method

.method public updateMode(Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;Ljava/util/Map;)V
    .locals 5
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 53
    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne p1, v3, :cond_3

    .line 54
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$array;->x8_photo_params_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "photoArray":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->initKeyArray([Ljava/lang/String;)V

    .line 60
    .end local v1    # "photoArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 61
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    .line 62
    .local v0, "item":Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    if-eqz v0, :cond_1

    .line 63
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->matchNickKey(Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;)V

    goto :goto_1

    .line 56
    .end local v0    # "item":Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    :cond_3
    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne p1, v3, :cond_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$array;->x8_record_params_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "recordArray":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->initKeyArray([Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v2    # "recordArray":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->paramList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->updateData(Ljava/util/List;)V

    .line 71
    return-void
.end method
