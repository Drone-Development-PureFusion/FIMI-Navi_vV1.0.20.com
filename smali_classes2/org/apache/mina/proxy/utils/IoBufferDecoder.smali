.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
    }
.end annotation


# instance fields
.field private ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 126
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "delimiter"    # [B

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 117
    return-void
.end method


# virtual methods
.method public decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 14
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const/4 v13, 0x1

    .line 186
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getContentLength()I

    move-result v1

    .line 187
    .local v1, "contentLength":I
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 189
    .local v2, "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    .line 192
    .local v7, "oldLimit":I
    const/4 v11, -0x1

    if-le v1, v11, :cond_2

    .line 193
    if-nez v2, :cond_0

    .line 194
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 198
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-ge v11, v1, :cond_1

    .line 199
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v10

    .line 200
    .local v10, "readBytes":I
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 201
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 202
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    sub-int v12, v1, v10

    invoke-virtual {v11, v12}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 203
    const/4 v11, 0x0

    move-object v3, v2

    .line 262
    .end local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v10    # "readBytes":I
    .local v3, "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    return-object v11

    .line 207
    .end local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    add-int v6, v11, v1

    .line 208
    .local v6, "newLimit":I
    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 209
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 210
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 211
    invoke-virtual {p1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 212
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    move-object v3, v2

    .end local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    move-object v11, v2

    .line 214
    goto :goto_0

    .line 218
    .end local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v6    # "newLimit":I
    .restart local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    .line 219
    .local v8, "oldPos":I
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getMatchCount()I

    move-result v5

    .line 220
    .local v5, "matchCount":I
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 222
    .local v4, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 223
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    .line 224
    .local v0, "b":B
    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    if-ne v11, v0, :cond_5

    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v11

    if-ne v5, v11, :cond_3

    .line 228
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v9

    .line 229
    .local v9, "pos":I
    invoke-virtual {p1, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 231
    invoke-virtual {p1, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 233
    if-nez v2, :cond_4

    .line 234
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    invoke-static {v11}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 237
    :cond_4
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 238
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 240
    invoke-virtual {p1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    move-object v3, v2

    .end local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    move-object v11, v2

    .line 243
    goto :goto_0

    .line 246
    .end local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v9    # "pos":I
    .restart local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p1, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 247
    const/4 v5, 0x0

    goto :goto_1

    .line 252
    .end local v0    # "b":B
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-lez v11, :cond_7

    .line 253
    invoke-virtual {p1, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 254
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 255
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v11

    invoke-virtual {p1, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 259
    :cond_7
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11, v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 260
    iget-object v11, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v11, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    move-object v3, v2

    .end local v2    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v3    # "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    move-object v11, v2

    .line 262
    goto/16 :goto_0
.end method

.method public setContentLength(IZ)V
    .locals 3
    .param p1, "contentLength"    # I
    .param p2, "resetMatchCount"    # Z

    .prologue
    .line 138
    if-gtz p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 143
    if-eqz p2, :cond_1

    .line 144
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 146
    :cond_1
    return-void
.end method

.method public setDelimiter([BZ)V
    .locals 3
    .param p1, "delim"    # [B
    .param p2, "resetMatchCount"    # Z

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null delimiter not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    array-length v1, p1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 166
    .local v0, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 167
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 169
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 170
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 171
    if-eqz p2, :cond_1

    .line 172
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 174
    :cond_1
    return-void
.end method
