.class public Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ErrorGeneratingFilter.java"


# instance fields
.field private changeByteProbability:I

.field private duplicatePduProbability:I

.field private insertByteProbability:I

.field private final logger:Lorg/slf4j/Logger;

.field private manipulateReads:Z

.field private manipulateWrites:Z

.field private maxInsertByte:I

.field private removeByteProbability:I

.field private removePduProbability:I

.field private resendPduLasterProbability:I

.field private rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 56
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    .line 58
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    .line 60
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    .line 62
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    .line 64
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    .line 66
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    .line 70
    iput-boolean v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    .line 72
    iput-boolean v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 76
    const-class v0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 127
    iget v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 128
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 133
    .local v3, "pos":I
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    iget v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 135
    .local v0, "count":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 136
    .local v2, "newBuff":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 137
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 139
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_1
    :goto_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2

    .line 142
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 146
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 150
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "newBuff":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "pos":I
    :goto_3
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 9
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const/16 v8, 0x3e8

    .line 154
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_3

    iget v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    iget-object v6, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 155
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 159
    .local v3, "pos":I
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 160
    .local v0, "count":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 161
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 163
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 164
    .local v2, "newBuff":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 165
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    :goto_1
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_2

    .line 169
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 172
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->rewind()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 173
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 174
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 175
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 178
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "newBuff":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "pos":I
    :cond_3
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_5

    iget v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    iget-object v6, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 179
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 183
    .restart local v0    # "count":I
    new-array v4, v0, [B

    .line 184
    .local v4, "values":[B
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 185
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 186
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 187
    .restart local v3    # "pos":I
    aget-byte v5, v4, v1

    invoke-virtual {p2, v3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 189
    .end local v3    # "pos":I
    :cond_4
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Modified "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 192
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "values":[B
    :cond_5
    return-void
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v2}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 84
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v2}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    .line 87
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .end local p3    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    .local v1, "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    move-object p3, v1

    .line 105
    .end local v0    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    .restart local p3    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 106
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    iget-object v3, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 92
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 95
    :cond_2
    iget v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    iget-object v3, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 100
    :cond_3
    iget v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    iget-object v3, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_0
.end method

.method public getChangeByteProbability()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    return v0
.end method

.method public getDuplicatePduProbability()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    return v0
.end method

.method public getInsertByteProbability()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    return v0
.end method

.method public getMaxInsertByte()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    return v0
.end method

.method public getRemoveByteProbability()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    return v0
.end method

.method public getRemovePduProbability()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    return v0
.end method

.method public getResendPduLasterProbability()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    return v0
.end method

.method public isManipulateReads()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    return v0
.end method

.method public isManipulateWrites()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    if-eqz v1, :cond_0

    .line 111
    instance-of v1, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    move-object v1, p3

    .line 113
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    move-object v1, p3

    .line 114
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 115
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v0, :cond_0

    .line 116
    move-object p3, v0

    .line 123
    .end local v0    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p3    # "message":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public setChangeByteProbability(I)V
    .locals 0
    .param p1, "changeByteProbability"    # I

    .prologue
    .line 205
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    .line 206
    return-void
.end method

.method public setDuplicatePduProbability(I)V
    .locals 0
    .param p1, "duplicatePduProbability"    # I

    .prologue
    .line 217
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    .line 218
    return-void
.end method

.method public setInsertByteProbability(I)V
    .locals 0
    .param p1, "insertByteProbability"    # I

    .prologue
    .line 231
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    .line 232
    return-void
.end method

.method public setManipulateReads(Z)V
    .locals 0
    .param p1, "manipulateReads"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    .line 245
    return-void
.end method

.method public setManipulateWrites(Z)V
    .locals 0
    .param p1, "manipulateWrites"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    .line 258
    return-void
.end method

.method public setMaxInsertByte(I)V
    .locals 0
    .param p1, "maxInsertByte"    # I

    .prologue
    .line 309
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    .line 310
    return-void
.end method

.method public setRemoveByteProbability(I)V
    .locals 0
    .param p1, "removeByteProbability"    # I

    .prologue
    .line 272
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    .line 273
    return-void
.end method

.method public setRemovePduProbability(I)V
    .locals 0
    .param p1, "removePduProbability"    # I

    .prologue
    .line 284
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    .line 285
    return-void
.end method

.method public setResendPduLasterProbability(I)V
    .locals 0
    .param p1, "resendPduLasterProbability"    # I

    .prologue
    .line 296
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    .line 297
    return-void
.end method
