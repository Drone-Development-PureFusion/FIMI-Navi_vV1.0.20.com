.class Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;
.super Ljava/lang/Object;
.source "X8DroneInfoStateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->access$100(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;)Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->val$position:I

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    invoke-interface {v1, v2, v0}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;->onItemClick(ILcom/fimi/app/x8s/entity/X8DroneInfoState;)V

    .line 73
    return-void
.end method
