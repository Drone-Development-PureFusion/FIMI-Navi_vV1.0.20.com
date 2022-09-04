.class public Lorg/apache/mina/core/file/DefaultFileRegion;
.super Ljava/lang/Object;
.source "DefaultFileRegion.java"

# interfaces
.implements Lorg/apache/mina/core/file/FileRegion;


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final originalPosition:J

.field private position:J

.field private remainingBytes:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "remainingBytes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position may not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    cmp-long v0, p4, v2

    if-gez v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remainingBytes may not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iput-object p1, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    .line 59
    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    .line 60
    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    .line 61
    iput-wide p4, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    .line 62
    return-void
.end method


# virtual methods
.method public getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public getRemainingBytes()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    return-wide v0
.end method

.method public getWrittenBytes()J
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    iget-wide v2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public update(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    .line 82
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    .line 83
    return-void
.end method
