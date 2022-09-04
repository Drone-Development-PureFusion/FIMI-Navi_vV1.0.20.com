.class final Lcom/file/zip/ZipFile$OffsetEntry;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetEntry"
.end annotation


# instance fields
.field private dataOffset:J

.field private headerOffset:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide v0, p0, Lcom/file/zip/ZipFile$OffsetEntry;->headerOffset:J

    .line 97
    iput-wide v0, p0, Lcom/file/zip/ZipFile$OffsetEntry;->dataOffset:J

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/file/zip/ZipFile$OffsetEntry;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/file/zip/ZipFile$OffsetEntry;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/file/zip/ZipFile$OffsetEntry;)J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/file/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/file/zip/ZipFile$OffsetEntry;)J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/file/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/file/zip/ZipFile$OffsetEntry;J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/file/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-void
.end method

.method static synthetic access$4(Lcom/file/zip/ZipFile$OffsetEntry;J)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/file/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-void
.end method
