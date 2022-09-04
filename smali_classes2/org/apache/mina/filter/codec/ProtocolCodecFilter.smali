.class public Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProtocolCodecFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;
    }
.end annotation


# static fields
.field private static final DECODER:Lorg/apache/mina/core/session/AttributeKey;

.field private static final DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ENCODER:Lorg/apache/mina/core/session/AttributeKey;

.field private static final ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 54
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    .line 56
    new-array v0, v1, [B

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 58
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    const-string v2, "encoder"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    .line 60
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    const-string v2, "decoder"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    .line 62
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    const-string v2, "decoderOut"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    .line 64
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    const-string v2, "encoderOut"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/ProtocolEncoder;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/ProtocolDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/ProtocolEncoder;>;"
    .local p2, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/ProtocolDecoder;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "encoderClass"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "decoderClass"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_1
    const-class v3, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoderClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_2
    const-class v3, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoderClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_3
    :try_start_0
    sget-object v3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    sget-object v3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .local v2, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    .local v0, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;

    invoke-direct {v3, p0, v2, v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v3, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 171
    return-void

    .line 136
    .end local v0    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .end local v2    # "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "encoderClass doesn\'t have a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 142
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "decoderClass doesn\'t have a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "encoderClass cannot be initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :catch_3
    move-exception v1

    .line 158
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "decoderClass cannot be initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 2
    .param p1, "encoder"    # Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .param p2, "decoder"    # Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 109
    return-void
.end method

.method static synthetic access$000()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method private disposeCodec(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V

    .line 455
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V

    .line 458
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V

    .line 459
    return-void
.end method

.method private disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 485
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 486
    .local v0, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dispose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 529
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    return-void
.end method

.method private disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 467
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    .line 468
    .local v1, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    if-nez v1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 473
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dispose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 502
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    .line 504
    .local v0, "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;

    .end local v0    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    invoke-direct {v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;-><init>()V

    .line 507
    .restart local v0    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_0
    return-object v0
.end method

.method private getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 514
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    .line 516
    .local v0, "out":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;

    .end local v0    # "out":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 519
    .restart local v0    # "out":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 13
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    invoke-interface/range {p3 .. p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v8

    .line 283
    .local v8, "message":Ljava/lang/Object;
    instance-of v10, v8, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v10, :cond_0

    instance-of v10, v8, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v10, :cond_1

    .line 284
    :cond_0
    invoke-interface/range {p1 .. p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 335
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v10, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v10, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;

    move-result-object v6

    .line 291
    .local v6, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    move-object/from16 v0, p3

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    move-result-object v7

    .line 293
    .local v7, "encoderOut":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    if-nez v6, :cond_2

    .line 294
    new-instance v10, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The encoder is null for the session "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 299
    :cond_2
    :try_start_0
    invoke-interface {v6, p2, v8, v7}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    .line 302
    check-cast v7, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    .end local v7    # "encoderOut":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    invoke-virtual {v7}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v1

    .line 305
    .local v1, "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 306
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 308
    .local v4, "encodedMessage":Ljava/lang/Object;
    if-nez v4, :cond_5

    .line 322
    .end local v4    # "encodedMessage":Ljava/lang/Object;
    :cond_4
    new-instance v10, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p1, p2, v10}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/lang/Exception;
    instance-of v10, v3, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    if-eqz v10, :cond_7

    move-object v9, v3

    .line 328
    check-cast v9, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    .line 333
    .local v9, "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    :goto_2
    throw v9

    .line 313
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    .restart local v1    # "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v4    # "encodedMessage":Ljava/lang/Object;
    :cond_5
    :try_start_1
    instance-of v10, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v10, :cond_6

    move-object v0, v4

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 314
    :cond_6
    invoke-interface/range {p3 .. p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v2

    .line 315
    .local v2, "destination":Ljava/net/SocketAddress;
    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    const/4 v10, 0x0

    invoke-direct {v5, v4, v10, v2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 317
    .local v5, "encodedWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {p1, p2, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 330
    .end local v1    # "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "destination":Ljava/net/SocketAddress;
    .end local v4    # "encodedMessage":Ljava/lang/Object;
    .end local v5    # "encodedWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v9, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    invoke-direct {v9, v3}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/Throwable;)V

    .restart local v9    # "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    goto :goto_2
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 180
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 12
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v7, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Processing a MESSAGE_RECEIVED for session {}"

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    instance-of v7, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v7, :cond_1

    .line 214
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 218
    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 219
    .local v4, "in":Lorg/apache/mina/core/buffer/IoBuffer;
    iget-object v7, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v7, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v1

    .line 220
    .local v1, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v2

    .line 226
    .local v2, "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 227
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v5

    .line 229
    .local v5, "oldPos":I
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :try_start_1
    invoke-interface {v1, p2, v4, v2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 232
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/Exception;
    instance-of v7, v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v7, :cond_4

    move-object v6, v3

    .line 238
    check-cast v6, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .line 242
    .local v6, "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :goto_2
    invoke-virtual {v6}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->getHexdump()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 244
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 245
    .local v0, "curPos":I
    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 246
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 250
    .end local v0    # "curPos":I
    :cond_3
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 251
    invoke-interface {p1, p2, v6}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 256
    instance-of v7, v3, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto :goto_0

    .line 232
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v6, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v6, v3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    goto :goto_2
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    instance-of v1, p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    instance-of v1, p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 270
    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    .line 271
    .local v0, "wrappedRequest":Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;
    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 273
    .end local v0    # "wrappedRequest":Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;
    :cond_1
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 195
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v5, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v5, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v1

    .line 341
    .local v1, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v2

    .line 344
    .local v2, "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :try_start_0
    invoke-interface {v1, p2, v2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 356
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 360
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 361
    return-void

    .line 345
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v5, v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v5, :cond_0

    .line 348
    move-object v0, v3

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    move-object v4, v0

    .line 352
    .local v4, "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :catchall_0
    move-exception v5

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 356
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    throw v5

    .line 350
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    new-instance v4, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v4, v3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    goto :goto_0
.end method
