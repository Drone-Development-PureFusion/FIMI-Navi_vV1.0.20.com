.class Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoSubParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->gotoParentItem()V

    .line 129
    :cond_0
    return-void
.end method
