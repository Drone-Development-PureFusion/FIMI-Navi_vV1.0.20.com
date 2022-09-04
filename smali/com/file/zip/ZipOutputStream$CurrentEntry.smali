.class final Lcom/file/zip/ZipOutputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private causedUseOfZip64:Z

.field private dataStart:J

.field private final entry:Lcom/file/zip/ZipEntry;

.field private hasWritten:Z

.field private localDataStart:J


# direct methods
.method private constructor <init>(Lcom/file/zip/ZipEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/file/zip/ZipEntry;

    .prologue
    const-wide/16 v0, 0x0

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1560
    iput-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    .line 1564
    iput-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    .line 1569
    iput-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    .line 1550
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->entry:Lcom/file/zip/ZipEntry;

    .line 1551
    return-void
.end method

.method synthetic constructor <init>(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipOutputStream$CurrentEntry;)V
    .locals 0

    .prologue
    .line 1549
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;-><init>(Lcom/file/zip/ZipEntry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->hasWritten:Z

    return v0
.end method

.method static synthetic access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->entry:Lcom/file/zip/ZipEntry;

    return-object v0
.end method

.method static synthetic access$10(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V
    .locals 1

    .prologue
    .line 1564
    iput-wide p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    return-void
.end method

.method static synthetic access$11(Lcom/file/zip/ZipOutputStream$CurrentEntry;Z)V
    .locals 0

    .prologue
    .line 1573
    iput-boolean p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return-void
.end method

.method static synthetic access$2(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J
    .locals 2

    .prologue
    .line 1564
    iget-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J
    .locals 2

    .prologue
    .line 1569
    iget-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J
    .locals 2

    .prologue
    .line 1560
    iget-wide v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Z
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return v0
.end method

.method static synthetic access$7(Lcom/file/zip/ZipOutputStream$CurrentEntry;Z)V
    .locals 0

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->hasWritten:Z

    return-void
.end method

.method static synthetic access$8(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V
    .locals 1

    .prologue
    .line 1569
    iput-wide p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    return-void
.end method

.method static synthetic access$9(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V
    .locals 1

    .prologue
    .line 1560
    iput-wide p1, p0, Lcom/file/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    return-void
.end method
