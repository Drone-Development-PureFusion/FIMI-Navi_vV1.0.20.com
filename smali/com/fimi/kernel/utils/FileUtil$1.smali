.class final Lcom/fimi/kernel/utils/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/FileUtil;->listFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$extension:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$content:Ljava/lang/String;

    iput-object p2, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$extension:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$content:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$1;->val$extension:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
