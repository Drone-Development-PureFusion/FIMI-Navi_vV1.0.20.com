.class public Lcom/fimi/app/x8s/media/H264Frame;
.super Ljava/lang/Object;
.source "H264Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/media/H264Frame$State;
    }
.end annotation


# instance fields
.field private data:[B

.field private index:I

.field private isFirstFrame:Z

.field private isFrame:Z

.field private state:Lcom/fimi/app/x8s/media/H264Frame$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a1:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    .line 5
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a1:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    .line 26
    return-void
.end method


# virtual methods
.method public getDataBuf()[B
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 29
    sget-object v3, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    .line 30
    iget-boolean v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFirstFrame:Z

    if-nez v3, :cond_0

    .line 31
    iput-boolean v4, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFirstFrame:Z

    .line 32
    iget v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    add-int/lit8 v3, v3, -0x4

    new-array v0, v3, [B

    .line 33
    .local v0, "buf":[B
    iget-object v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    iget v4, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    add-int/lit8 v4, v4, -0x4

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iput v6, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    move-object v1, v0

    .end local v0    # "buf":[B
    .local v1, "buf":[B
    move-object v2, v0

    .line 41
    .end local v1    # "buf":[B
    .local v2, "buf":[B
    :goto_0
    return-object v2

    .line 37
    .end local v2    # "buf":[B
    :cond_0
    iget v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    new-array v0, v3, [B

    .line 38
    .restart local v0    # "buf":[B
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 39
    iget-object v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    const/4 v4, 0x4

    iget v5, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    add-int/lit8 v5, v5, -0x4

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput v6, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    move-object v1, v0

    .end local v0    # "buf":[B
    .restart local v1    # "buf":[B
    move-object v2, v0

    .line 41
    .end local v1    # "buf":[B
    .restart local v2    # "buf":[B
    goto :goto_0
.end method

.method public getDataBuf2()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget v1, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    new-array v0, v1, [B

    .line 123
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    iget v2, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iput v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    .line 125
    return-object v0
.end method

.method public onSeqErrorReset()V
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFirstFrame:Z

    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/fimi/app/x8s/media/H264Frame;->reset()V

    .line 17
    :goto_0
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    goto :goto_0
.end method

.method public parse(B)Z
    .locals 4
    .param p1, "b"    # B

    .prologue
    const/4 v3, 0x1

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFrame:Z

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    iget v1, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    aput-byte p1, v0, v1

    .line 49
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$1;->$SwitchMap$com$fimi$app$x8s$media$H264Frame$State:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Frame$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFrame:Z

    return v0

    .line 51
    :pswitch_0
    if-nez p1, :cond_1

    .line 52
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a2:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/media/H264Frame;->reset()V

    goto :goto_0

    .line 58
    :pswitch_1
    if-nez p1, :cond_2

    .line 59
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a3:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/fimi/app/x8s/media/H264Frame;->reset()V

    goto :goto_0

    .line 65
    :pswitch_2
    if-nez p1, :cond_3

    .line 66
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->B1:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0}, Lcom/fimi/app/x8s/media/H264Frame;->reset()V

    goto :goto_0

    .line 72
    :pswitch_3
    if-ne p1, v3, :cond_4

    .line 73
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/media/H264Frame;->reset()V

    goto :goto_0

    .line 79
    :pswitch_4
    if-nez p1, :cond_0

    .line 80
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a4:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 84
    :pswitch_5
    if-nez p1, :cond_5

    .line 85
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a5:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 87
    :cond_5
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 91
    :pswitch_6
    if-nez p1, :cond_6

    .line 92
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a6:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 94
    :cond_6
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 98
    :pswitch_7
    if-ne p1, v3, :cond_7

    .line 99
    iput-boolean v3, p0, Lcom/fimi/app/x8s/media/H264Frame;->isFrame:Z

    goto :goto_0

    .line 101
    :cond_7
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->state:Lcom/fimi/app/x8s/media/H264Frame$State;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    .line 118
    return-void
.end method

.method public setData([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->data:[B

    iget v1, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Frame;->index:I

    .line 114
    return-void
.end method
