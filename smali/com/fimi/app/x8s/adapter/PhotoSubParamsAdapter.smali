.class public Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PhotoSubParamsAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isEnable:Z

.field private option_index:I

.field private paramListener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

.field private subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

.field subParamsViewHolderTwo:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->option_index:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->isEnable:Z

    .line 27
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->paramListener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->isEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->option_index:I

    return p1
.end method


# virtual methods
.method public forbid(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->isEnable:Z

    .line 150
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 142
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    instance-of v3, p1, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 59
    check-cast v2, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .line 60
    .local v2, "subParamsViewHolder":Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subParamsViewHolderTwo:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .line 61
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    iget-boolean v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->isEnable:Z

    iget v5, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->option_index:I

    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->initItemData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;IZI)V

    .line 62
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 64
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "optionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-virtual {v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->initViewStub()V

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_sharpness:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->initSharpViewStub()V

    .line 81
    .end local v0    # "optionName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .end local v2    # "subParamsViewHolder":Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
    :cond_3
    :goto_1
    return-void

    .line 72
    .restart local v2    # "subParamsViewHolder":Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
    :cond_4
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .restart local v0    # "optionName":Ljava/lang/String;
    const-string v3, "panorama_capture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 119
    .end local v0    # "optionName":Ljava/lang/String;
    .end local v2    # "subParamsViewHolder":Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
    :cond_5
    instance-of v3, p1, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 120
    check-cast v1, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;

    .line 121
    .local v1, "paramsViewHolder":Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;
    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;->initView(Ljava/lang/String;)V

    .line 122
    if-nez p2, :cond_3

    .line 123
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->item_back_btn:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;-><init>(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_iso_recycler_item_title:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "subView":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;

    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v1, v0}, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    .restart local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v1

    .line 42
    .end local v0    # "subView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_photo_sub_param_list_item:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .restart local v0    # "subView":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->paramListener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    invoke-direct {v1, v0, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V

    .restart local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0
.end method

.method public setParamListener(Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V
    .locals 0
    .param p1, "paramListener"    # Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->paramListener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .line 33
    return-void
.end method

.method public updateData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V
    .locals 0
    .param p1, "entity"    # Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .line 52
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->notifyDataSetChanged()V

    .line 54
    :cond_0
    return-void
.end method

.method public viewHolderRemoveAllViews()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subParamsViewHolderTwo:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subParamsViewHolderTwo:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->subParamsViewHolderTwo:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 159
    :cond_0
    return-void
.end method
