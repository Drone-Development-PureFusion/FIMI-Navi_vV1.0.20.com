.class Lcom/fimi/album/adapter/BaseRecycleAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/adapter/BaseRecycleAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/adapter/BaseRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/fimi/album/adapter/BaseRecycleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/adapter/BaseRecycleAdapter;

    .prologue
    .line 74
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter$1;, "Lcom/fimi/album/adapter/BaseRecycleAdapter$1;"
    iput-object p1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;->this$0:Lcom/fimi/album/adapter/BaseRecycleAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter$1;, "Lcom/fimi/album/adapter/BaseRecycleAdapter$1;"
    iget-object v1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;->this$0:Lcom/fimi/album/adapter/BaseRecycleAdapter;

    invoke-virtual {v1, p1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->isCategoryType(I)Z

    move-result v0

    .line 78
    .local v0, "isCategory":Z
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;->this$0:Lcom/fimi/album/adapter/BaseRecycleAdapter;

    invoke-static {v1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->access$000(Lcom/fimi/album/adapter/BaseRecycleAdapter;)I

    move-result v1

    .line 81
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;->this$0:Lcom/fimi/album/adapter/BaseRecycleAdapter;

    invoke-static {v1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->access$100(Lcom/fimi/album/adapter/BaseRecycleAdapter;)I

    move-result v1

    goto :goto_0
.end method
