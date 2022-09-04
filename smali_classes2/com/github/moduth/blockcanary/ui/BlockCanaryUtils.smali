.class final Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;
.super Ljava/lang/Object;
.source "BlockCanaryUtils.java"


# static fields
.field private static final CONCERN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->WHITE_LIST:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->WHITE_LIST:Ljava/util/List;

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideWhiteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->concernPackages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->concernPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_0
    sget-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    invoke-static {}, Lcom/github/moduth/blockcanary/internal/ProcessUtils;->myProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "stackLine"    # Ljava/lang/String;

    .prologue
    .line 84
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 85
    .local v0, "index1":I
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 86
    .local v1, "index2":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 87
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 89
    .end local p0    # "stackLine":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static concernStackString(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Ljava/lang/String;
    .locals 8
    .param p0, "blockInfo"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    const/4 v6, 0x0

    .line 32
    const-string v3, ""

    .line 33
    .local v3, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "stackEntry":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "lines":[Ljava/lang/String;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v2, v5

    .line 37
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->concernStackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "keyStackString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 45
    .end local v0    # "keyStackString":Ljava/lang/String;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v4    # "stackEntry":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 36
    .restart local v0    # "keyStackString":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lines":[Ljava/lang/String;
    .restart local v4    # "stackEntry":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "keyStackString":Ljava/lang/String;
    .end local v1    # "line":Ljava/lang/String;
    :cond_2
    aget-object v5, v2, v6

    invoke-static {v5}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v2    # "lines":[Ljava/lang/String;
    .end local v4    # "stackEntry":Ljava/lang/String;
    :cond_3
    move-object v0, v3

    .line 45
    goto :goto_1
.end method

.method private static concernStackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v1, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "concernPackage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {p0}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v0    # "concernPackage":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConcernPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->CONCERN_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static isBlockInfoValid(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Z
    .locals 8
    .param p0, "blockInfo"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeStart:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 50
    .local v0, "isValid":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeCost:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    move v0, v1

    .line 51
    :goto_1
    return v0

    .end local v0    # "isValid":Z
    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    .restart local v0    # "isValid":Z
    :cond_1
    move v0, v2

    .line 50
    goto :goto_1
.end method

.method public static isInWhiteList(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Z
    .locals 10
    .param p0, "info"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v5, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "stackEntry":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "lines":[Ljava/lang/String;
    array-length v7, v1

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v1, v5

    .line 59
    .local v0, "line":Ljava/lang/String;
    sget-object v8, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->WHITE_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "whiteListEntry":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 61
    const/4 v4, 0x1

    .line 67
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "stackEntry":Ljava/lang/String;
    .end local v3    # "whiteListEntry":Ljava/lang/String;
    :cond_2
    return v4

    .line 58
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "lines":[Ljava/lang/String;
    .restart local v2    # "stackEntry":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
