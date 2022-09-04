.class public abstract Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
.super Ljava/lang/Object;
.source "ShortIntegerDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 3
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 42
    .local v0, "highByte":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    packed-switch v1, :pswitch_data_0

    .line 53
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    .line 56
    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    .line 50
    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p0

    .line 58
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
    :cond_0
    return-object p0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v1, "Unexpected end of session while waiting for a short integer."

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
