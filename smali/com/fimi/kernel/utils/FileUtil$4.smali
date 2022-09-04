.class final Lcom/fimi/kernel/utils/FileUtil$4;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/FileUtil;->listDirs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endwith1:Ljava/lang/String;

.field final synthetic val$endwith2:Ljava/lang/String;

.field final synthetic val$p:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$endwith1:Ljava/lang/String;

    iput-object p2, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$p:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$endwith2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x17

    .line 589
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 591
    .local v3, "ret":Z
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$endwith1:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 593
    .local v1, "len":I
    if-eq v1, v6, :cond_0

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_1

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$p:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 595
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 596
    if-ne v1, v6, :cond_2

    .line 597
    const/4 v3, 0x1

    .line 606
    .end local v1    # "len":I
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return v3

    .line 599
    .restart local v1    # "len":I
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    iget-object v4, p0, Lcom/fimi/kernel/utils/FileUtil$4;->val$endwith2:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    const/4 v3, 0x1

    goto :goto_0
.end method
