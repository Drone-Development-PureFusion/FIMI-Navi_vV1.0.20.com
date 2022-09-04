.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$202(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->val$blockInfo:Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$400(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 309
    :cond_0
    return-void
.end method
