.class Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;
.super Ljava/lang/Object;
.source "BlockCanaryInternals.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/BlockCanaryInternals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockLogFileFilter"
.end annotation


# instance fields
.field private TYPE:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-string v0, ".log"

    iput-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;->TYPE:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;->TYPE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
