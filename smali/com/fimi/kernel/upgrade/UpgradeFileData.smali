.class public Lcom/fimi/kernel/upgrade/UpgradeFileData;
.super Ljava/lang/Object;
.source "UpgradeFileData.java"


# static fields
.field public static final PACKETLENGHT:I = 0xb0


# instance fields
.field private currentLen:J

.field ida_crc:[B

.field idb_crc:[B

.field idc_crc:[B

.field private index:I

.field logtest:Lorg/slf4j/Logger;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/BufferData;",
            ">;"
        }
    .end annotation
.end field

.field private totalLen:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    .line 28
    const-string v0, "gh2_communication_log"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->logtest:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public addInformation([B)V
    .locals 6
    .param p1, "buf"    # [B

    .prologue
    .line 156
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->ida_crc:[B

    invoke-virtual {p0, v3, v4, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->arrayCopy(I[B[B)V

    .line 157
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->idb_crc:[B

    invoke-virtual {p0, v3, v4, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->arrayCopy(I[B[B)V

    .line 158
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->idc_crc:[B

    invoke-virtual {p0, v3, v4, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->arrayCopy(I[B[B)V

    .line 160
    invoke-static {p1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->getInt([B)[I

    move-result-object v1

    .line 161
    .local v1, "fileLength":[I
    const/16 v3, 0xc

    invoke-static {v1, v3}, Lcom/fimi/kernel/utils/CaCrc;->CRC16calc([II)J

    move-result-wide v4

    long-to-int v2, v4

    .line 162
    .local v2, "headCrc":I
    const/16 v3, 0x30

    invoke-static {v2}, Lcom/fimi/kernel/utils/CaCrc;->getbyte(I)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->arrayCopy(I[B[B)V

    .line 163
    invoke-static {p1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->getInt([B)[I

    move-result-object v1

    .line 164
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Lcom/fimi/kernel/utils/CaCrc;->CRC16calc([II)J

    move-result-wide v4

    long-to-int v0, v4

    .line 166
    .local v0, "allFileCrc":I
    array-length v3, p1

    add-int/lit8 v3, v3, -0x4

    invoke-static {v0}, Lcom/fimi/kernel/utils/CaCrc;->getbyte(I)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->arrayCopy(I[B[B)V

    .line 167
    return-void
.end method

.method public arrayCopy(I[B[B)V
    .locals 3
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "readfile"    # [B

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 231
    add-int v1, p1, v0

    aget-byte v2, p2, v0

    aput-byte v2, p3, v1

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public divideFile([B)V
    .locals 10
    .param p1, "buf"    # [B

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xb0

    .line 171
    array-length v6, p1

    rem-int/lit16 v4, v6, 0xb0

    .line 172
    .local v4, "remainder":I
    array-length v6, p1

    div-int/lit16 v2, v6, 0xb0

    .line 173
    .local v2, "divided":I
    const/4 v5, 0x0

    .line 174
    .local v5, "slices":I
    if-nez v4, :cond_0

    .line 175
    move v5, v2

    .line 180
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 181
    new-instance v1, Lcom/fimi/kernel/upgrade/BufferData;

    invoke-direct {v1}, Lcom/fimi/kernel/upgrade/BufferData;-><init>()V

    .line 184
    .local v1, "data":Lcom/fimi/kernel/upgrade/BufferData;
    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_1

    if-eqz v4, :cond_1

    .line 185
    new-array v0, v8, [B

    .line 186
    .local v0, "buff":[B
    mul-int/lit16 v6, v3, 0xb0

    invoke-static {p1, v6, v0, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v0, v1, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    .line 188
    array-length v6, v0

    iput v6, v1, Lcom/fimi/kernel/upgrade/BufferData;->len:I

    .line 189
    iput v4, v1, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    .line 190
    iget-object v6, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "-----------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :goto_2
    iget-object v6, v1, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    invoke-static {v6}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    .end local v0    # "buff":[B
    .end local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 193
    .restart local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    .restart local v3    # "i":I
    :cond_1
    new-array v0, v8, [B

    .line 194
    .restart local v0    # "buff":[B
    mul-int/lit16 v6, v3, 0xb0

    invoke-static {p1, v6, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iput-object v0, v1, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    .line 196
    array-length v6, v0

    iput v6, v1, Lcom/fimi/kernel/upgrade/BufferData;->len:I

    .line 197
    array-length v6, v0

    iput v6, v1, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    .line 198
    iget-object v6, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v0    # "buff":[B
    .end local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    :cond_2
    return-void
.end method

.method public getBufferData()Lcom/fimi/kernel/upgrade/BufferData;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    iget v1, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/upgrade/BufferData;

    return-object v0
.end method

.method public getBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/BufferData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentLen()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->currentLen:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    return v0
.end method

.method public getTotalLen()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->totalLen:J

    return-wide v0
.end method

.method public getUpdatePacketData([BI)Ljava/util/List;
    .locals 10
    .param p1, "fileInputStream"    # [B
    .param p2, "packetLenght"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/BufferData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v4, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/upgrade/BufferData;>;"
    array-length v7, p1

    rem-int v6, v7, p2

    .line 120
    .local v6, "remainder":I
    array-length v7, p1

    div-int v2, v7, p2

    .line 121
    .local v2, "divided":I
    const/4 v5, 0x0

    .line 122
    .local v5, "packNum":I
    if-nez v6, :cond_0

    .line 123
    move v5, v2

    .line 127
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 128
    new-instance v1, Lcom/fimi/kernel/upgrade/BufferData;

    invoke-direct {v1}, Lcom/fimi/kernel/upgrade/BufferData;-><init>()V

    .line 130
    .local v1, "data":Lcom/fimi/kernel/upgrade/BufferData;
    add-int/lit8 v7, v5, -0x1

    if-ne v3, v7, :cond_1

    if-eqz v6, :cond_1

    .line 131
    new-array v0, v6, [B

    .line 132
    .local v0, "buff":[B
    mul-int v7, v3, p2

    invoke-static {p1, v7, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput-object v0, v1, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    .line 134
    array-length v7, v0

    iput v7, v1, Lcom/fimi/kernel/upgrade/BufferData;->len:I

    .line 135
    iput v6, v1, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    .line 136
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-----------"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "buff":[B
    .end local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 139
    .restart local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    .restart local v3    # "i":I
    :cond_1
    new-array v0, p2, [B

    .line 140
    .restart local v0    # "buff":[B
    mul-int v7, v3, p2

    invoke-static {p1, v7, v0, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iput-object v0, v1, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    .line 142
    array-length v7, v0

    iput v7, v1, Lcom/fimi/kernel/upgrade/BufferData;->len:I

    .line 143
    array-length v7, v0

    iput v7, v1, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    .line 144
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v0    # "buff":[B
    .end local v1    # "data":Lcom/fimi/kernel/upgrade/BufferData;
    :cond_2
    return-object v4
.end method

.method public initData(Ljava/lang/String;[B[B[B)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "a"    # [B
    .param p3, "b"    # [B
    .param p4, "c"    # [B

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->sourFileData(Ljava/lang/String;)[B

    move-result-object v0

    .line 78
    .local v0, "buf":[B
    if-nez v0, :cond_0

    .line 79
    const/4 v1, -0x1

    .line 87
    :goto_0
    return v1

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->ida_crc:[B

    .line 82
    iput-object p3, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->idb_crc:[B

    .line 83
    iput-object p4, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->idc_crc:[B

    .line 84
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->addInformation([B)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->divideFile([B)V

    .line 86
    invoke-virtual {p0}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->showAllData()V

    .line 87
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFinish()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    iget-object v1, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentLen(I)V
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->currentLen:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->currentLen:J

    .line 73
    return-void
.end method

.method public setIndexDecline()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    iget v1, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/upgrade/BufferData;

    iget v0, v0, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->setCurrentLen(I)V

    .line 52
    iget v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    .line 54
    return-void
.end method

.method public setIndexIncrement()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    iget v1, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/upgrade/BufferData;

    iget v0, v0, Lcom/fimi/kernel/upgrade/BufferData;->playloadLen:I

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->setCurrentLen(I)V

    .line 43
    iget v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->index:I

    .line 46
    return-void
.end method

.method public setTotalLen(J)V
    .locals 1
    .param p1, "totalLen"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->totalLen:J

    .line 65
    return-void
.end method

.method public showAllData()V
    .locals 6

    .prologue
    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/fimi/kernel/upgrade/UpgradeFileData;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/upgrade/BufferData;

    .line 208
    .local v0, "d":Lcom/fimi/kernel/upgrade/BufferData;
    iget-object v1, v0, Lcom/fimi/kernel/upgrade/BufferData;->data:[B

    .line 210
    .local v1, "dd":[B
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UpgradeFileData--> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/fimi/kernel/upgrade/BufferData;->len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "d":Lcom/fimi/kernel/upgrade/BufferData;
    .end local v1    # "dd":[B
    :cond_0
    return-void
.end method

.method public sourFileData(Ljava/lang/String;)[B
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    .line 96
    .local v4, "len":I
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/fimi/kernel/upgrade/UpgradeFileData;->setTotalLen(J)V

    .line 97
    new-array v0, v4, [B

    .line 99
    .local v0, "buf":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 101
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
