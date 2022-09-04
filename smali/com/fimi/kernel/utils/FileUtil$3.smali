.class final Lcom/fimi/kernel/utils/FileUtil$3;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/FileUtil;->sortList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$asc:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/fimi/kernel/utils/FileUtil$3;->val$asc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v10, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 217
    .local v0, "diff":J
    iget-boolean v5, p0, Lcom/fimi/kernel/utils/FileUtil$3;->val$asc:Z

    if-eqz v5, :cond_3

    .line 218
    cmp-long v5, v0, v10

    if-lez v5, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v2

    .line 220
    :cond_1
    cmp-long v2, v0, v10

    if-nez v2, :cond_2

    move v2, v3

    .line 221
    goto :goto_0

    :cond_2
    move v2, v4

    .line 223
    goto :goto_0

    .line 226
    :cond_3
    cmp-long v5, v0, v10

    if-lez v5, :cond_4

    move v2, v4

    .line 227
    goto :goto_0

    .line 228
    :cond_4
    cmp-long v4, v0, v10

    if-nez v4, :cond_0

    move v2, v3

    .line 229
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 198
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/utils/FileUtil$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
