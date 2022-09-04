.class Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoParamsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$itemEntity:Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->val$itemEntity:Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    iput-object p3, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->val$itemEntity:Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->val$itemEntity:Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-interface {v0, v1, v2, v3}, Lcom/fimi/app/x8s/viewHolder/CameraParamListener;->gotoSubItem(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 62
    :cond_0
    return-void
.end method
