.class public Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;
.super Ljava/lang/Object;
.source "TextLineCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    .line 59
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "encodingDelimiter"    # Ljava/lang/String;
    .param p3, "decodingDelimiter"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    .line 75
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-direct {v0, p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "encodingDelimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;
    .param p3, "decodingDelimiter"    # Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    .line 91
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-direct {v0, p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    .line 92
    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    return-object v0
.end method

.method public getDecoderMaxLineLength()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getMaxLineLength()I

    move-result v0

    return v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    return-object v0
.end method

.method public getEncoderMaxLineLength()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->getMaxLineLength()I

    move-result v0

    return v0
.end method

.method public setDecoderMaxLineLength(I)V
    .locals 1
    .param p1, "maxLineLength"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->setMaxLineLength(I)V

    .line 158
    return-void
.end method

.method public setEncoderMaxLineLength(I)V
    .locals 1
    .param p1, "maxLineLength"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->setMaxLineLength(I)V

    .line 132
    return-void
.end method
