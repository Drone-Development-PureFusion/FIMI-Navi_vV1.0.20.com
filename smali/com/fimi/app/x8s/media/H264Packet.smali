.class public Lcom/fimi/app/x8s/media/H264Packet;
.super Ljava/lang/Object;
.source "H264Packet.java"


# instance fields
.field MAX_SHORT:I

.field h264Frame:[B

.field private ih264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

.field index:I

.field lastSeq:I

.field len:I

.field private seq:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/media/IH264DataListener;)V
    .locals 1
    .param p1, "ih264DataListener"    # Lcom/fimi/app/x8s/media/IH264DataListener;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    .line 13
    iput v0, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    .line 15
    const v0, 0xffff

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Packet;->MAX_SHORT:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    .line 17
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    .line 20
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264Packet;->ih264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onPacket([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x12

    const/16 v4, 0xc

    const/16 v6, 0xe

    const/4 v5, 0x0

    .line 24
    array-length v2, p1

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    .line 25
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    if-lt v2, v6, :cond_0

    .line 26
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    .line 27
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 28
    aget-byte v2, p1, v4

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_0

    aget-byte v2, p1, v7

    if-ne v2, v8, :cond_0

    .line 29
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v4, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v3, v3, -0xe

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    .line 31
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error frame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "error":Ljava/lang/String;
    const-string/jumbo v2, "zdy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v4, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    new-array v0, v2, [B

    .line 39
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    const-string/jumbo v2, "zdy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fram ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    .line 44
    iput v5, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    goto :goto_0

    .line 48
    .end local v0    # "buffer":[B
    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    if-nez v2, :cond_4

    .line 51
    aget-byte v2, p1, v4

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_3

    aget-byte v2, p1, v7

    if-ne v2, v8, :cond_3

    .line 52
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v4, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v3, v3, -0xe

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    .line 54
    const-string/jumbo v2, "zdy"

    const-string v3, "ccccc frame"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_3
    :goto_1
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->seq:I

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->lastSeq:I

    goto/16 :goto_0

    .line 59
    :cond_4
    aget-byte v2, p1, v4

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_5

    .line 60
    const/16 v2, 0xd

    aget-byte v2, p1, v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 74
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v4, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->len:I

    add-int/lit8 v3, v3, -0xe

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    goto :goto_1

    .line 63
    :cond_6
    aget-byte v2, p1, v7

    if-ne v2, v8, :cond_5

    .line 65
    iget v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    new-array v0, v2, [B

    .line 66
    .restart local v0    # "buffer":[B
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->h264Frame:[B

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    const-string/jumbo v2, "zdy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fram ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Packet;->ih264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

    invoke-interface {v2, v0}, Lcom/fimi/app/x8s/media/IH264DataListener;->onH264Frame([B)V

    .line 69
    iput v5, p0, Lcom/fimi/app/x8s/media/H264Packet;->index:I

    goto :goto_2
.end method
