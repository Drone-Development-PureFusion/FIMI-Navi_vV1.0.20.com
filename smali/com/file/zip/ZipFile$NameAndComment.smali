.class final Lcom/file/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .param p1, "name"    # [B
    .param p2, "comment"    # [B

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p1, p0, Lcom/file/zip/ZipFile$NameAndComment;->name:[B

    .line 946
    iput-object p2, p0, Lcom/file/zip/ZipFile$NameAndComment;->comment:[B

    .line 947
    return-void
.end method

.method synthetic constructor <init>([B[BLcom/file/zip/ZipFile$NameAndComment;)V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0, p1, p2}, Lcom/file/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$1(Lcom/file/zip/ZipFile$NameAndComment;)[B
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/file/zip/ZipFile$NameAndComment;->name:[B

    return-object v0
.end method

.method static synthetic access$2(Lcom/file/zip/ZipFile$NameAndComment;)[B
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/file/zip/ZipFile$NameAndComment;->comment:[B

    return-object v0
.end method
