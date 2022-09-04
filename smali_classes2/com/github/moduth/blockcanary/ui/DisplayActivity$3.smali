.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->renderBlockList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeStart:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$202(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$400(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 241
    return-void
.end method
