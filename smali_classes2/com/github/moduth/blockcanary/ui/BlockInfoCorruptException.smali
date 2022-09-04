.class public Lcom/github/moduth/blockcanary/ui/BlockInfoCorruptException;
.super Ljava/lang/Exception;
.source "BlockInfoCorruptException.java"


# direct methods
.method public constructor <init>(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 5
    .param p1, "blockInfo"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 12
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "BlockInfo (%s) is corrupt."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 12
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/moduth/blockcanary/ui/BlockInfoCorruptException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
