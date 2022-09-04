.class public Lcom/fimi/album/biz/SuffixUtils;
.super Ljava/lang/Object;
.source "SuffixUtils.java"


# static fields
.field private static mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;


# instance fields
.field public fileFormatJpg:Ljava/lang/String;

.field public fileFormatMp4:Ljava/lang/String;

.field public fileFormatRlv:Ljava/lang/String;

.field public fileFormatThm:Ljava/lang/String;

.field photoStrings:[Ljava/lang/String;

.field private photoSuffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field videoStrings:[Ljava/lang/String;

.field private videoSuffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoThumSuffixList:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ".RLV"

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatRlv:Ljava/lang/String;

    .line 19
    const-string v0, ".JPG"

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    .line 20
    const-string v0, ".MP4"

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatMp4:Ljava/lang/String;

    .line 21
    const-string v0, ".THM"

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->videoStrings:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".jpg"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, ".png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PNG"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->photoStrings:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->videoSuffixList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->photoSuffixList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->videoThumSuffixList:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->videoSuffixList:Ljava/util/List;

    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->videoStrings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v0, p0, Lcom/fimi/album/biz/SuffixUtils;->photoSuffixList:Ljava/util/List;

    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->photoStrings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    return-void
.end method

.method public static obtain()Lcom/fimi/album/biz/SuffixUtils;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/fimi/album/biz/SuffixUtils;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/fimi/album/biz/SuffixUtils;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/fimi/album/biz/SuffixUtils;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/fimi/album/biz/SuffixUtils;

    invoke-direct {v0}, Lcom/fimi/album/biz/SuffixUtils;-><init>()V

    sput-object v0, Lcom/fimi/album/biz/SuffixUtils;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/fimi/album/biz/SuffixUtils;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public judgeFileType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePathSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->videoSuffixList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->photoSuffixList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public judgePhotho(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePathSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 97
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->photoSuffixList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public judgeVideo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePathSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v1, p0, Lcom/fimi/album/biz/SuffixUtils;->videoSuffixList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method
