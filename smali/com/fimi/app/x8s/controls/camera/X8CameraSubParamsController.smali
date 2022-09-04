.class public Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraSubParamsController.java"

# interfaces
.implements Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;
    }
.end annotation


# instance fields
.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private canScroller:Z

.field private contrast:Ljava/lang/String;

.field private curParam:Ljava/lang/String;

.field private holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

.field index:I

.field private isForbid:Z

.field key:Ljava/lang/String;

.field private layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

.field private mContext:Landroid/content/Context;

.field private mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field optionName:Ljava/lang/String;

.field private paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

.field private paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

.field private paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private saturation:Ljava/lang/String;

.field private subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 54
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->canScroller:Z

    .line 362
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->isForbid:Z

    .line 70
    new-instance v0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->setParamListener(Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V

    .line 72
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->setOrientation(I)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    const v3, 0x106000d

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public checkDetailParam(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 137
    check-cast p4, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .end local p4    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .line 138
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_awb_hand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "awb"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_sharpness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "photo_size"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "photo_format"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_metering:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "metering_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "digital_effect"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_0

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "system_type"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_0

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string/jumbo v1, "video_quality"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_0

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 163
    iput p3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->index:I

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "capture_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_0

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iput p3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->index:I

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "record_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_0
.end method

.method public checkResolutionDetailParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    check-cast p5, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .end local p5    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iput-object p5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .line 177
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->isForbid:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_camera_array_sub_layout:I

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object p3, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->addParamContent(Landroid/content/Context;Lcom/fimi/x8sdk/controller/CameraManager;I[Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->notifyDataSetChanged()V

    .line 216
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "capture_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_camera_array_sub_layout:I

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->addParamContent(Landroid/content/Context;Lcom/fimi/x8sdk/controller/CameraManager;I[Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "capture_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_camera_array_sub_layout:I

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->addParamContent(Landroid/content/Context;Lcom/fimi/x8sdk/controller/CameraManager;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "record_mode"

    invoke-virtual {v0, p2, v1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->holder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_camera_array_sub_layout:I

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->addParamContent(Landroid/content/Context;Lcom/fimi/x8sdk/controller/CameraManager;I[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public gotoParentItem()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->viewHolderRemoveAllViews()V

    .line 222
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "paramKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "camera_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->saturation:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->contrast:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/viewHolder/CameraParamListener;->itemReturnBack(Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    .end local v0    # "paramKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v0    # "paramKey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/viewHolder/CameraParamListener;->itemReturnBack(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    .line 121
    sget v0, Lcom/fimi/app/x8s/R$id;->item_param_view_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->handleView:Landroid/view/View;

    .line 122
    sget v0, Lcom/fimi/app/x8s/R$id;->item_param_Recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 123
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 6
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 236
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    .line 237
    .local v2, "rval":I
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 322
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v2    # "rval":I
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .restart local v2    # "rval":I
    :pswitch_0
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "paramType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ltz v2, :cond_2

    .line 243
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_size(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v3}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->updateResOrSize()V

    .line 316
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_format"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz v2, :cond_3

    .line 248
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_format(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contrast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ltz v2, :cond_4

    .line 250
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "contrast"

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->contrast:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setContrast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_4
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "saturation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ltz v2, :cond_5

    .line 256
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "saturation"

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->saturation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSaturation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "awb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-ltz v2, :cond_7

    .line 262
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->awbSetting(Ljava/lang/String;)V

    .line 265
    :cond_6
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAwb(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_7
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video_quality"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ltz v2, :cond_8

    .line 267
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_quality(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 268
    :cond_8
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video_resolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-ltz v2, :cond_9

    .line 269
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_resolution(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v3}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->updateResOrSize()V

    goto/16 :goto_1

    .line 273
    :cond_9
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ae_bias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-ltz v2, :cond_a

    .line 274
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    :cond_a
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shutter_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ltz v2, :cond_b

    .line 276
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setShutter_time(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_b
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "metering_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-ltz v2, :cond_c

    .line 278
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setMetering_mode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 279
    :cond_c
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "digital_effect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-ltz v2, :cond_e

    .line 280
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v3, :cond_d

    .line 281
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->colorSetting(Ljava/lang/String;)V

    .line 283
    :cond_d
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setDigital_effect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    :cond_e
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sharpness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-ltz v2, :cond_f

    .line 285
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSharpness(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_f
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "system_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-ltz v2, :cond_10

    .line 287
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSystem_type(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string/jumbo v4, "video_resolution"

    new-instance v5, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)V

    invoke-virtual {v3, v4, v5}, Lcom/fimi/x8sdk/controller/CameraManager;->getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 304
    :cond_10
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iso"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v2, :cond_1

    .line 305
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setIso(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->isForbid:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->isForbid:Z

    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->forbid(Z)V

    .line 371
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 115
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 61
    return-void
.end method

.method public setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V
    .locals 0
    .param p1, "mainSetListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 360
    return-void
.end method

.method public setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V
    .locals 0
    .param p1, "paramListener"    # Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    .line 57
    return-void
.end method

.method public setRecyclerScroller(Z)V
    .locals 1
    .param p1, "scroller"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->layoutManager:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->setScrollEnable(Z)V

    .line 332
    :cond_0
    return-void
.end method

.method public setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V
    .locals 1
    .param p1, "subParam"    # Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 66
    return-void
.end method

.method public styleParam(Ljava/lang/String;I)V
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # I

    .prologue
    .line 336
    const-string v0, "contrast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->contrast:Ljava/lang/String;

    .line 341
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 342
    return-void

    .line 338
    :cond_1
    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->saturation:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateAddContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->paramsAdapter:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->subParam:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 349
    const-string/jumbo v0, "video_resolution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->updateResOrSize()V

    .line 354
    :cond_0
    return-void
.end method
