.class public Lcom/fimi/x8sdk/command/X8DownLoadCmd;
.super Lcom/fimi/kernel/connect/BaseCommand;
.source "X8DownLoadCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseCommand;-><init>()V

    return-void
.end method

.method private createBaseComand()Lcom/fimi/x8sdk/command/X8MediaCmd;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/x8sdk/command/X8MediaCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8MediaCmd;-><init>()V

    .line 16
    .local v0, "x8MediaCmd":Lcom/fimi/x8sdk/command/X8MediaCmd;
    return-object v0
.end method


# virtual methods
.method public downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "maxLen"    # S
    .param p3, "downFileName"    # Ljava/lang/String;
    .param p4, "isStop"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->createBaseComand()Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v7

    .line 50
    .local v7, "x8MediaCmd":Lcom/fimi/x8sdk/command/X8MediaCmd;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    int-to-short v2, v8

    .line 51
    .local v2, "len":S
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 52
    .local v4, "nameBytes":[B
    add-int/lit8 v8, v2, 0xd

    new-array v6, v8, [B

    .line 53
    .local v6, "payload":[B
    const/4 v0, 0x0

    .line 54
    .local v0, "i":I
    array-length v8, v6

    invoke-static {v8}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->intToByteArray(I)[B

    move-result-object v3

    .line 55
    .local v3, "lenBytes":[B
    if-eqz p4, :cond_1

    .line 56
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v8, 0x2

    aput-byte v8, v6, v0

    move v0, v1

    .line 60
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_0
    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v3, v8, v6, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    array-length v8, v3

    add-int/lit8 v0, v8, 0x1

    .line 62
    invoke-static {p1}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->intToByteArray(I)[B

    move-result-object v5

    .line 63
    .local v5, "offeBytes":[B
    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v8, v6, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length v8, v5

    add-int/2addr v0, v8

    .line 65
    const/16 v8, 0x400

    if-lt p2, v8, :cond_0

    const/16 p2, 0x400

    .line 66
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v8, p2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    .line 67
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const v8, 0xff00

    and-int/2addr v8, p2

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    .line 68
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    .line 69
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const v8, 0xff00

    and-int/2addr v8, v2

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    .line 70
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v6, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-virtual {v7, p1}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setUsbCmdKey(I)V

    .line 72
    invoke-virtual {v7, p1}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setFileOffset(I)V

    .line 73
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setReSendNum(I)V

    .line 74
    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setOutTime(I)V

    .line 75
    invoke-virtual {v7, v6}, Lcom/fimi/x8sdk/command/X8MediaCmd;->packCmd([B)V

    .line 76
    return-object v7

    .line 58
    .end local v5    # "offeBytes":[B
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v8, 0x1

    aput-byte v8, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public downMediaFile2(ISLjava/lang/String;)Lcom/fimi/x8sdk/command/X8MediaCmd;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "maxLen"    # S
    .param p3, "downFileName"    # Ljava/lang/String;

    .prologue
    const v9, 0xff00

    const/16 v7, 0x400

    .line 86
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->createBaseComand()Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v6

    .line 87
    .local v6, "x8MediaCmd":Lcom/fimi/x8sdk/command/X8MediaCmd;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    int-to-short v2, v8

    .line 88
    .local v2, "len":S
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 89
    .local v3, "nameBytes":[B
    add-int/lit8 v8, v2, 0xd

    new-array v5, v8, [B

    .line 90
    .local v5, "payload":[B
    const/4 v0, 0x0

    .line 91
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v8, 0x1

    aput-byte v8, v5, v0

    .line 96
    array-length v4, v5

    .line 98
    .local v4, "payLoadLen":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    and-int/lit16 v8, v4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    .line 99
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 100
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    .line 101
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 103
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    and-int/lit16 v8, p1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    .line 104
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 105
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v8, p1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    .line 106
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v8, p1, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 110
    if-lt p2, v7, :cond_0

    move p2, v7

    .line 111
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    and-int/lit16 v7, p2, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 112
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int v7, p2, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 113
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    and-int/lit16 v7, v2, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 114
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int v7, v2, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 115
    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v7, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setReSendNum(I)V

    .line 119
    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setOutTime(I)V

    .line 120
    invoke-virtual {v6, v5}, Lcom/fimi/x8sdk/command/X8MediaCmd;->packCmd([B)V

    .line 121
    return-object v6
.end method

.method public getMediaXmlFile(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8MediaCmd;
    .locals 9
    .param p1, "xmlFileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 26
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->createBaseComand()Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v6

    .line 27
    .local v6, "x8MediaCmd":Lcom/fimi/x8sdk/command/X8MediaCmd;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    int-to-short v2, v7

    .line 28
    .local v2, "len":S
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 29
    .local v4, "nameBytes":[B
    add-int/lit8 v7, v2, 0x7

    new-array v5, v7, [B

    .line 30
    .local v5, "payload":[B
    const/4 v0, 0x0

    .line 31
    .local v0, "i":I
    array-length v7, v5

    invoke-static {v7}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->intToByteArray(I)[B

    move-result-object v3

    .line 32
    .local v3, "lenBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v8, v5, v0

    .line 33
    array-length v7, v3

    invoke-static {v3, v8, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    array-length v7, v3

    add-int/lit8 v0, v7, 0x1

    .line 35
    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v7, v2, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 36
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const v7, 0xff00

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 37
    array-length v7, v4

    invoke-static {v4, v8, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-virtual {v6, v5}, Lcom/fimi/x8sdk/command/X8MediaCmd;->packCmd([B)V

    .line 39
    aget-byte v7, v5, v8

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setUsbCmdKey(I)V

    .line 40
    return-object v6
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 127
    return-void
.end method
