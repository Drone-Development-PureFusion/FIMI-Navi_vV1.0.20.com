.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

.field final synthetic val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$000(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
