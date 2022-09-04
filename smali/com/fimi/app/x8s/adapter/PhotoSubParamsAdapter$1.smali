.class Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoSubParamsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I

.field final synthetic val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iput-object p3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$100(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .line 85
    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isRecordingUnclickableItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .line 86
    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isDelayedPhotographyUnclickableItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "paramKey":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v0, "video_resolution"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 116
    .end local v6    # "paramKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v6    # "paramKey":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-interface/range {v0 .. v5}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->checkResolutionDetailParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 114
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$302(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;I)I

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "capture_mode"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    if-eq v0, v2, :cond_5

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-interface/range {v0 .. v5}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->checkResolutionDetailParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 103
    :cond_5
    const-string v0, "record_mode"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    if-eq v0, v2, :cond_7

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->getContentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-interface/range {v0 .. v5}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->checkResolutionDetailParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_1

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$position:I

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$1;->val$subParamsViewHolder:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->checkDetailParam(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_1
.end method
