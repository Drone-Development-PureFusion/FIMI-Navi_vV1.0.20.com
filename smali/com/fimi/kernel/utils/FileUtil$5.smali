.class final Lcom/fimi/kernel/utils/FileUtil$5;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;[Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$suffix:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/fimi/kernel/utils/FileUtil$5;->val$suffix:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/fimi/kernel/utils/FileUtil$5;->val$suffix:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 634
    .local v0, "endwith":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    const/4 v1, 0x1

    .line 639
    .end local v0    # "endwith":Ljava/lang/String;
    :cond_0
    return v1

    .line 633
    .restart local v0    # "endwith":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
