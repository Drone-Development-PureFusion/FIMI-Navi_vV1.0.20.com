.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$1;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/github/moduth/blockcanary/ui/BlockInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$1;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)I
    .locals 4
    .param p1, "lhs"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    .param p2, "rhs"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 437
    iget-object v0, p2, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 434
    check-cast p1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    check-cast p2, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-virtual {p0, p1, p2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$1;->compare(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)I

    move-result v0

    return v0
.end method
