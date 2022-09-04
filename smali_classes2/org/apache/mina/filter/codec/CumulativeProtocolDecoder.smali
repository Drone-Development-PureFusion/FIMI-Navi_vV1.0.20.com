.class public abstract Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;
.source "CumulativeProtocolDecoder.java"


# instance fields
.field private final BUFFER:Lorg/apache/mina/core/session/AttributeKey;

.field private transportMetadataFragmentation:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "buffer"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    .line 115
    return-void
.end method

.method private removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method private storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 242
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 244
    .local v0, "remainingBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 245
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 247
    iget-object v1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v6, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    if-eqz v6, :cond_2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v6

    if-nez v6, :cond_2

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const/4 v5, 0x1

    .line 140
    .local v5, "usingSessionBuffer":Z
    iget-object v6, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v6}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 143
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v1, :cond_6

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "appended":Z
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    const/4 v0, 0x1

    .line 158
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 180
    .end local v0    # "appended":Z
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 181
    .local v4, "oldPos":I
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v2

    .line 182
    .local v2, "decoded":Z
    if-eqz v2, :cond_8

    .line 183
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 184
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    .end local v2    # "decoded":Z
    .end local v4    # "oldPos":I
    .restart local v0    # "appended":Z
    :cond_5
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 164
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 165
    .local v3, "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 166
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 167
    invoke-virtual {v3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 169
    move-object v1, v3

    .line 172
    iget-object v6, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v6, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 175
    .end local v0    # "appended":Z
    .end local v3    # "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_6
    move-object v1, p2

    .line 176
    const/4 v5, 0x0

    goto :goto_2

    .line 187
    .restart local v2    # "decoded":Z
    .restart local v4    # "oldPos":I
    :cond_7
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_4

    .line 198
    :cond_8
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 199
    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 200
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 202
    :cond_9
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 205
    :cond_a
    if-eqz v5, :cond_1

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    goto/16 :goto_0

    .line 150
    .end local v2    # "decoded":Z
    .end local v4    # "oldPos":I
    .restart local v0    # "appended":Z
    :catch_0
    move-exception v6

    goto :goto_1

    .line 153
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    .line 235
    return-void
.end method

.method protected abstract doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setTransportMetadataFragmentation(Z)V
    .locals 0
    .param p1, "transportMetadataFragmentation"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    .line 258
    return-void
.end method
