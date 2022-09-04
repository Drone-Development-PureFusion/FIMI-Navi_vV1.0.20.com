.class final Lcom/fimi/kernel/utils/FileUtil$2;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/FileUtil;->listFiles2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endwith1:Ljava/lang/String;

.field final synthetic val$endwith2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fimi/kernel/utils/FileUtil$2;->val$endwith2:Ljava/lang/String;

    iput-object p2, p0, Lcom/fimi/kernel/utils/FileUtil$2;->val$endwith1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$2;->val$endwith2:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/kernel/utils/FileUtil$2;->val$endwith1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
