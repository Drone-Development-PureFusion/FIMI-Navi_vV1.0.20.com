.class Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "X8sPanelRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .prologue
    .line 104
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;"
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-static {v1, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->access$100(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-static {v1, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;I)Z

    move-result v0

    .line 111
    .local v0, "isCategory":Z
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->access$300(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I

    move-result v1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->access$400(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I

    move-result v1

    goto :goto_0
.end method
