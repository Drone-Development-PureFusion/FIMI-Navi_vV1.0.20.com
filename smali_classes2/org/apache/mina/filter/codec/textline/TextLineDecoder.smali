.class public Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
.super Ljava/lang/Object;
.source "TextLineDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    }
.end annotation


# instance fields
.field private final CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

.field private bufferLength:I

.field private final charset:Ljava/nio/charset/Charset;

.field private delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field private maxLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 94
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "delimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "context"

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    .line 54
    const/16 v1, 0x400

    iput v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 57
    const/16 v1, 0x80

    iput v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset parameter shuld not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "delimiter parameter should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    .line 125
    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 128
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_2

    .line 129
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 132
    .local v0, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 138
    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 140
    .end local v0    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    return-void

    .line 133
    .restart local v0    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1
    .param p1, "delimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .prologue
    .line 84
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method private decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 18
    .param p1, "ctx"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p4, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v8

    .line 247
    .local v8, "matchCount":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    .line 248
    .local v11, "oldPos":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v10

    .line 250
    .local v10, "oldLimit":I
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 251
    invoke-virtual/range {p3 .. p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    .line 252
    .local v3, "b":B
    const/4 v9, 0x0

    .line 254
    .local v9, "matched":Z
    packed-switch v3, :pswitch_data_0

    .line 268
    :pswitch_0
    const/4 v8, 0x0

    .line 271
    :goto_1
    if-eqz v9, :cond_0

    .line 273
    invoke-virtual/range {p3 .. p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v13

    .line 274
    .local v13, "pos":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 275
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 279
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 280
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 282
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v15

    if-nez v15, :cond_1

    .line 283
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 284
    .local v4, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 285
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-virtual {v4, v15}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v15

    new-array v6, v15, [B

    .line 289
    .local v6, "data":[B
    invoke-virtual {v4, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 290
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    .line 292
    .local v7, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 293
    .local v5, "buffer":Ljava/nio/CharBuffer;
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 294
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v14, v2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 304
    move v11, v13

    .line 305
    const/4 v8, 0x0

    goto :goto_0

    .line 258
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "buffer":Ljava/nio/CharBuffer;
    .end local v6    # "data":[B
    .end local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v13    # "pos":I
    .end local v14    # "str":Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v8, v8, 0x1

    .line 259
    goto :goto_1

    .line 263
    :pswitch_2
    add-int/lit8 v8, v8, 0x1

    .line 264
    const/4 v9, 0x1

    .line 265
    goto :goto_1

    .line 296
    .restart local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v13    # "pos":I
    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v15

    .line 299
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v12

    .line 300
    .local v12, "overflowPosition":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 301
    new-instance v15, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Line is too long: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 310
    .end local v3    # "b":B
    .end local v9    # "matched":Z
    .end local v12    # "overflowPosition":I
    .end local v13    # "pos":I
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 311
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 314
    return-void

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 10
    .param p1, "ctx"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p4, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v2

    .line 324
    .local v2, "matchCount":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 325
    .local v4, "oldPos":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    .line 327
    .local v3, "oldLimit":I
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 328
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    .line 330
    .local v0, "b":B
    iget-object v7, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v7

    if-ne v7, v0, :cond_2

    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 333
    iget-object v7, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 335
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 336
    .local v6, "pos":I
    invoke-virtual {p3, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 337
    invoke-virtual {p3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 339
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 341
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 342
    invoke-virtual {p3, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 344
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v7

    if-nez v7, :cond_1

    .line 345
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 346
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 347
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 350
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v7, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 360
    move v4, v6

    .line 361
    const/4 v2, 0x0

    .line 362
    goto :goto_0

    .line 352
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v7

    .line 355
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v5

    .line 356
    .local v5, "overflowPosition":I
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 357
    new-instance v7, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Line is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 365
    .end local v5    # "overflowPosition":I
    .end local v6    # "pos":I
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p3, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 366
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 371
    .end local v0    # "b":B
    :cond_3
    invoke-virtual {p3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 372
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 374
    invoke-virtual {p1, v2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 375
    return-void
.end method

.method private getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 211
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    .line 213
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    .end local v0    # "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;-><init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;ILorg/apache/mina/filter/codec/textline/TextLineDecoder$1;)V

    .line 215
    .restart local v0    # "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    move-result-object v0

    .line 197
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    goto :goto_0
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    .line 234
    .local v0, "ctx":Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method public setBufferLength(I)V
    .locals 3
    .param p1, "bufferLength"    # I

    .prologue
    .line 175
    if-gtz p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be a positive value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    .line 181
    return-void
.end method

.method public setMaxLineLength(I)V
    .locals 3
    .param p1, "maxLineLength"    # I

    .prologue
    .line 161
    if-gtz p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxLineLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be a positive value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 166
    return-void
.end method

.method protected writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    .prologue
    .line 387
    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    .line 388
    return-void
.end method
