.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->renderBlockDetail(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

.field final synthetic val$adapter:Lcom/github/moduth/blockcanary/ui/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/DetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;->val$adapter:Lcom/github/moduth/blockcanary/ui/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 287
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;->val$adapter:Lcom/github/moduth/blockcanary/ui/DetailAdapter;

    invoke-virtual {v0, p3}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->toggleRow(I)V

    .line 288
    return-void
.end method
