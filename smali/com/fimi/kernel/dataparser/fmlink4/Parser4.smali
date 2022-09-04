.class public Lcom/fimi/kernel/dataparser/fmlink4/Parser4;
.super Ljava/lang/Object;
.source "Parser4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
    }
.end annotation


# static fields
.field static messageReceived:Z


# instance fields
.field private crcFrame:I

.field private crcHeader:I

.field private destId:B

.field private encryptType:B

.field private index:I

.field private len:I

.field private m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

.field private reserve1:B

.field private reserve2:B

.field private reserve3:B

.field private seq:S

.field private srcId:B

.field state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field private type:B

.field typeAndRes1Encry:B

.field private ver:B

.field verAndLen:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->UnUnit:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->ver:B

    return-void
.end method

.method private clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->len:I

    .line 183
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->type:B

    .line 184
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve1:B

    .line 185
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->encryptType:B

    .line 186
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->srcId:B

    .line 187
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->destId:B

    .line 188
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve2:B

    .line 189
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve3:B

    .line 190
    iput-short v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->seq:S

    .line 191
    iput v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcHeader:I

    .line 192
    iput v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    .line 193
    iput-short v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    .line 194
    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->typeAndRes1Encry:B

    .line 195
    return-void
.end method


# virtual methods
.method public unPacket(I)Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    .locals 6
    .param p1, "buf"    # I

    .prologue
    const/4 v5, 0x0

    .line 46
    sput-boolean v5, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->messageReceived:Z

    .line 49
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$1;->$SwitchMap$com$fimi$kernel$dataparser$fmlink4$Parser4$State:[I

    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->messageReceived:Z

    if-eqz v3, :cond_5

    .line 175
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .line 177
    :goto_1
    return-object v3

    .line 54
    :pswitch_0
    sget-byte v3, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->startFlag:B

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p1, :cond_0

    .line 55
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Ver:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 56
    new-instance v3, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-boolean v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->messageReceived:Z

    if-eqz v3, :cond_1

    .line 61
    sput-boolean v5, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->messageReceived:Z

    .line 62
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->clearData()V

    .line 65
    and-int/lit16 v3, p1, 0xff

    int-to-short v3, v3

    iput-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    .line 66
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    and-int/lit8 v3, v3, 0x1f

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->ver:B

    .line 67
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->ver:B

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 68
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->ver:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setVer(B)V

    .line 72
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Len:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto :goto_0

    .line 76
    :pswitch_2
    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-short v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    .line 77
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->verAndLen:S

    shr-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0x1ff

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->len:I

    .line 78
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->len:I

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setLen(I)V

    .line 79
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->TypeAndRes1Encry:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 80
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getDataLen()I

    move-result v3

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->index:I

    goto :goto_0

    .line 83
    :pswitch_3
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->typeAndRes1Encry:B

    .line 84
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->typeAndRes1Encry:B

    and-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->type:B

    .line 85
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->typeAndRes1Encry:B

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve1:B

    .line 86
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->typeAndRes1Encry:B

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->encryptType:B

    .line 87
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->type:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 88
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->encryptType:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 89
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve1:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setReserve1(B)V

    .line 90
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->SrcId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 93
    :pswitch_4
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->srcId:B

    .line 94
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->srcId:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 95
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->DestId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 98
    :pswitch_5
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->destId:B

    .line 99
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->destId:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 100
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 103
    :pswitch_6
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve2:B

    .line 104
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve2:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setReserve2(B)V

    .line 105
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 108
    :pswitch_7
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve3:B

    .line 109
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-byte v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->reserve3:B

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setReserve3(B)V

    .line 110
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 113
    :pswitch_8
    int-to-byte v3, p1

    int-to-short v3, v3

    iput-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->seq:S

    .line 114
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 117
    :pswitch_9
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->seq:S

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->seq:S

    .line 118
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget-short v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->seq:S

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 119
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 122
    :pswitch_a
    and-int/lit16 v3, p1, 0xff

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcHeader:I

    .line 123
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 126
    :pswitch_b
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcHeader:I

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcHeader:I

    .line 127
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 128
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcHeader:I

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setCrcHeader(I)V

    goto/16 :goto_0

    .line 131
    :pswitch_c
    and-int/lit16 v3, p1, 0xff

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    .line 132
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 135
    :pswitch_d
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    .line 136
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 139
    :pswitch_e
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    .line 140
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame4:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 143
    :pswitch_f
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    .line 144
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    iget v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->crcFrame:I

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setCrcFrame(I)V

    .line 145
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->PlayLoad:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    goto/16 :goto_0

    .line 149
    :pswitch_10
    :try_start_0
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->index:I

    if-gtz v3, :cond_3

    .line 150
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 168
    .local v2, "x":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "x":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v3

    int-to-byte v4, p1

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 155
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->index:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->index:I

    .line 156
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->index:I

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getDataLen()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 158
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->PlayLoad:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 159
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getIntCrc()I

    move-result v1

    .line 160
    .local v1, "payloadCRC":I
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->m:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->checkFrameCRC(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    const/4 v3, 0x1

    sput-boolean v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->messageReceived:Z

    .line 164
    .end local v1    # "payloadCRC":I
    :cond_4
    sget-object v3, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->state:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 177
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
