.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

.field final synthetic val$blockInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->val$blockInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->inFlight:Ljava/util/List;

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->access$600(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->access$600(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->val$blockInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$302(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/util/List;)Ljava/util/List;

    .line 448
    const-string v0, "DisplayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load block entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->val$blockInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->access$600(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$400(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 451
    :cond_0
    return-void
.end method
