.class public Lcom/fimi/kernel/dataparser/milink/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/dataparser/milink/Parser$State;
    }
.end annotation


# static fields
.field static msg_received:Z


# instance fields
.field private crcFrame:I

.field private crcHeader:I

.field private destId:I

.field private encryptType:I

.field private index:I

.field private lenTypeCfg:I

.field private m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

.field private reserver:I

.field private seq:I

.field private srcId:I

.field state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field private subDestId:I

.field private subSrcId:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->UNINIT:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->version:I

    .line 208
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->lenTypeCfg:I

    .line 209
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->srcId:I

    .line 210
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subSrcId:I

    .line 211
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->destId:I

    .line 212
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subDestId:I

    .line 213
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->encryptType:I

    .line 214
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    .line 215
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->seq:I

    .line 216
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcHeader:I

    .line 217
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    .line 218
    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    .line 219
    return-void
.end method

.method public unPacket(I)Lcom/fimi/kernel/dataparser/milink/LinkPacket;
    .locals 9
    .param p1, "c"    # I

    .prologue
    const v8, 0xffff

    const/4 v7, 0x0

    .line 50
    sput-boolean v7, Lcom/fimi/kernel/dataparser/milink/Parser;->msg_received:Z

    .line 52
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$1;->$SwitchMap$com$fimi$kernel$dataparser$milink$Parser$State:[I

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/Parser$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/fimi/kernel/dataparser/milink/Parser;->msg_received:Z

    if-eqz v5, :cond_5

    .line 200
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .line 202
    :goto_1
    return-object v5

    .line 55
    :pswitch_0
    const/16 v5, 0xfe

    if-ne p1, v5, :cond_0

    .line 56
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->STX:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 57
    new-instance v5, Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-direct {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;-><init>()V

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    goto :goto_0

    .line 63
    :pswitch_1
    sget-boolean v5, Lcom/fimi/kernel/dataparser/milink/Parser;->msg_received:Z

    if-eqz v5, :cond_1

    .line 64
    sput-boolean v7, Lcom/fimi/kernel/dataparser/milink/Parser;->msg_received:Z

    .line 65
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/Parser;->clearData()V

    .line 68
    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    .line 69
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto :goto_0

    .line 72
    :cond_2
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->version:I

    .line 73
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->version:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setVersion(B)V

    .line 74
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->VERSION:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto :goto_0

    .line 78
    :pswitch_2
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->lenTypeCfg:I

    .line 79
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto :goto_0

    .line 82
    :pswitch_3
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->lenTypeCfg:I

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->lenTypeCfg:I

    .line 83
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->lenTypeCfg:I

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setLenTypeCfg(I)V

    .line 84
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 85
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/Header;->getDataLen()I

    move-result v5

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    goto :goto_0

    .line 88
    :pswitch_4
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->srcId:I

    .line 89
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->srcId:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setSrcId(B)V

    .line 90
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto :goto_0

    .line 93
    :pswitch_5
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subSrcId:I

    .line 94
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subSrcId:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setSubSrcId(B)V

    .line 95
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 99
    :pswitch_6
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->destId:I

    .line 100
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->destId:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setDestId(B)V

    .line 101
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 104
    :pswitch_7
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subDestId:I

    .line 105
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->subDestId:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setSubDestId(B)V

    .line 106
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 109
    :pswitch_8
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->encryptType:I

    .line 110
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->encryptType:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setEncryptType(B)V

    .line 111
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->ENCRYPT_TYPE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 114
    :pswitch_9
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    .line 115
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 118
    :pswitch_a
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    .line 119
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 122
    :pswitch_b
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    and-int/2addr v5, v8

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    .line 123
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->reserver:I

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setReserver(I)V

    .line 124
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 127
    :pswitch_c
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->seq:I

    .line 128
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 131
    :pswitch_d
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->seq:I

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->seq:I

    .line 132
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->seq:I

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setSeq(I)V

    .line 133
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 136
    :pswitch_e
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcHeader:I

    .line 137
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 140
    :pswitch_f
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcHeader:I

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcHeader:I

    .line 141
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcHeader:I

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setCrcHeader(I)V

    .line 142
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 146
    :pswitch_10
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    .line 147
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 150
    :pswitch_11
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    .line 151
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 154
    :pswitch_12
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    and-int/2addr v5, v8

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    .line 155
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 158
    :pswitch_13
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    .line 159
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME4:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 160
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->crcFrame:I

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/Header;->setCrcFrame(I)V

    .line 163
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/Header;->unPacket()V

    .line 164
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME4:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    goto/16 :goto_0

    .line 168
    :pswitch_14
    :try_start_0
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    if-gtz v5, :cond_3

    .line 169
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/Header;->getPayloadLen()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " p "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v6, v6, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "info":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->encodePacket()[B

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "hex":Ljava/lang/String;
    const/4 v4, 0x0

    .line 195
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hex":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "x":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v5, v5, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    int-to-byte v6, p1

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 173
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    .line 174
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->index:I

    if-nez v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v5, v5, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v5

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/Header;->getPayloadLen()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 176
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->PAYLOAD:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 177
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v5, v5, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getIntCrc()I

    move-result v3

    .line 178
    .local v3, "payloadCRC":I
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->getHeader()Lcom/fimi/kernel/dataparser/milink/Header;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/fimi/kernel/dataparser/milink/Header;->checkCRC(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v6, v6, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getMsgId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->setMsgId(I)V

    .line 181
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v6, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->m:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    iget-object v6, v6, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->setMsgGroupId(I)V

    .line 182
    const/4 v5, 0x1

    sput-boolean v5, Lcom/fimi/kernel/dataparser/milink/Parser;->msg_received:Z

    .line 186
    .end local v3    # "payloadCRC":I
    :cond_4
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    iput-object v5, p0, Lcom/fimi/kernel/dataparser/milink/Parser;->state:Lcom/fimi/kernel/dataparser/milink/Parser$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 202
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 52
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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
