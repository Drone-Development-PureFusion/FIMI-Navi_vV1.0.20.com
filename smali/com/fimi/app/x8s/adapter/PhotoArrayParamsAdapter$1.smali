.class Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoArrayParamsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->access$000(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->access$100(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->access$200(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;->onItemClickListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
