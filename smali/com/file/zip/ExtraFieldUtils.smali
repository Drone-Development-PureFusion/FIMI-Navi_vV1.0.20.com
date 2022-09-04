.class public Lcom/file/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/file/zip/ZipShort;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/file/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 45
    const-class v0, Lcom/file/zip/AsiExtraField;

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/file/zip/JarMarker;

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lcom/file/zip/UnicodePathExtraField;

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lcom/file/zip/UnicodeCommentExtraField;

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;
    .locals 3
    .param p0, "headerId"    # Lcom/file/zip/ZipShort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v2, Lcom/file/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 86
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/file/zip/ZipExtraField;

    .line 91
    :goto_0
    return-object v2

    .line 89
    :cond_0
    new-instance v1, Lcom/file/zip/UnrecognizedExtraField;

    invoke-direct {v1}, Lcom/file/zip/UnrecognizedExtraField;-><init>()V

    .line 90
    .local v1, "u":Lcom/file/zip/UnrecognizedExtraField;
    invoke-virtual {v1, p0}, Lcom/file/zip/UnrecognizedExtraField;->setHeaderId(Lcom/file/zip/ZipShort;)V

    move-object v2, v1

    .line 91
    goto :goto_0
.end method

.method public static mergeCentralDirectoryData([Lcom/file/zip/ZipExtraField;)[B
    .locals 13
    .param p0, "data"    # [Lcom/file/zip/ZipExtraField;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 238
    array-length v8, p0

    if-lez v8, :cond_1

    .line 239
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    instance-of v8, v8, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v8, :cond_1

    .line 238
    const/4 v2, 0x1

    .line 241
    .local v2, "lastIsUnparseableHolder":Z
    :goto_0
    if-eqz v2, :cond_2

    array-length v8, p0

    add-int/lit8 v4, v8, -0x1

    .line 243
    .local v4, "regularExtraFieldCount":I
    :goto_1
    mul-int/lit8 v7, v4, 0x4

    .line 244
    .local v7, "sum":I
    array-length v10, p0

    move v8, v9

    :goto_2
    if-lt v8, v10, :cond_3

    .line 247
    new-array v5, v7, [B

    .line 248
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 249
    .local v6, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-lt v1, v4, :cond_4

    .line 258
    if-eqz v2, :cond_0

    .line 259
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v3

    .line 260
    .local v3, "local":[B
    array-length v8, v3

    invoke-static {v3, v9, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    .end local v3    # "local":[B
    :cond_0
    return-object v5

    .end local v1    # "i":I
    .end local v2    # "lastIsUnparseableHolder":Z
    .end local v4    # "regularExtraFieldCount":I
    .end local v5    # "result":[B
    .end local v6    # "start":I
    .end local v7    # "sum":I
    :cond_1
    move v2, v9

    .line 238
    goto :goto_0

    .line 241
    .restart local v2    # "lastIsUnparseableHolder":Z
    :cond_2
    array-length v4, p0

    goto :goto_1

    .line 244
    .restart local v4    # "regularExtraFieldCount":I
    .restart local v7    # "sum":I
    :cond_3
    aget-object v0, p0, v8

    .line 245
    .local v0, "element":Lcom/file/zip/ZipExtraField;
    invoke-interface {v0}, Lcom/file/zip/ZipExtraField;->getCentralDirectoryLength()Lcom/file/zip/ZipShort;

    move-result-object v11

    invoke-virtual {v11}, Lcom/file/zip/ZipShort;->getValue()I

    move-result v11

    add-int/2addr v7, v11

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 250
    .end local v0    # "element":Lcom/file/zip/ZipExtraField;
    .restart local v1    # "i":I
    .restart local v5    # "result":[B
    .restart local v6    # "start":I
    :cond_4
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lcom/file/zip/ZipShort;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v5, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getCentralDirectoryLength()Lcom/file/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lcom/file/zip/ZipShort;->getBytes()[B

    move-result-object v8

    .line 253
    add-int/lit8 v10, v6, 0x2

    .line 252
    invoke-static {v8, v9, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v3

    .line 255
    .restart local v3    # "local":[B
    add-int/lit8 v8, v6, 0x4

    array-length v10, v3

    invoke-static {v3, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    array-length v8, v3

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static mergeLocalFileDataData([Lcom/file/zip/ZipExtraField;)[B
    .locals 13
    .param p0, "data"    # [Lcom/file/zip/ZipExtraField;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 203
    array-length v8, p0

    if-lez v8, :cond_1

    .line 204
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    instance-of v8, v8, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v8, :cond_1

    .line 203
    const/4 v2, 0x1

    .line 206
    .local v2, "lastIsUnparseableHolder":Z
    :goto_0
    if-eqz v2, :cond_2

    array-length v8, p0

    add-int/lit8 v4, v8, -0x1

    .line 208
    .local v4, "regularExtraFieldCount":I
    :goto_1
    mul-int/lit8 v7, v4, 0x4

    .line 209
    .local v7, "sum":I
    array-length v10, p0

    move v8, v9

    :goto_2
    if-lt v8, v10, :cond_3

    .line 213
    new-array v5, v7, [B

    .line 214
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 215
    .local v6, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-lt v1, v4, :cond_4

    .line 224
    if-eqz v2, :cond_0

    .line 225
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v3

    .line 226
    .local v3, "local":[B
    array-length v8, v3

    invoke-static {v3, v9, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    .end local v3    # "local":[B
    :cond_0
    return-object v5

    .end local v1    # "i":I
    .end local v2    # "lastIsUnparseableHolder":Z
    .end local v4    # "regularExtraFieldCount":I
    .end local v5    # "result":[B
    .end local v6    # "start":I
    .end local v7    # "sum":I
    :cond_1
    move v2, v9

    .line 203
    goto :goto_0

    .line 206
    .restart local v2    # "lastIsUnparseableHolder":Z
    :cond_2
    array-length v4, p0

    goto :goto_1

    .line 209
    .restart local v4    # "regularExtraFieldCount":I
    .restart local v7    # "sum":I
    :cond_3
    aget-object v0, p0, v8

    .line 210
    .local v0, "element":Lcom/file/zip/ZipExtraField;
    invoke-interface {v0}, Lcom/file/zip/ZipExtraField;->getLocalFileDataLength()Lcom/file/zip/ZipShort;

    move-result-object v11

    invoke-virtual {v11}, Lcom/file/zip/ZipShort;->getValue()I

    move-result v11

    add-int/2addr v7, v11

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 216
    .end local v0    # "element":Lcom/file/zip/ZipExtraField;
    .restart local v1    # "i":I
    .restart local v5    # "result":[B
    .restart local v6    # "start":I
    :cond_4
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lcom/file/zip/ZipShort;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v5, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getLocalFileDataLength()Lcom/file/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lcom/file/zip/ZipShort;->getBytes()[B

    move-result-object v8

    .line 219
    add-int/lit8 v10, v6, 0x2

    .line 218
    invoke-static {v8, v9, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    aget-object v8, p0, v1

    invoke-interface {v8}, Lcom/file/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v3

    .line 221
    .restart local v3    # "local":[B
    add-int/lit8 v8, v6, 0x4

    array-length v10, v3

    invoke-static {v3, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v8, v3

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static parse([B)[Lcom/file/zip/ZipExtraField;
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    sget-object v1, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, v0, v1}, Lcom/file/zip/ExtraFieldUtils;->parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZ)[Lcom/file/zip/ZipExtraField;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lcom/file/zip/ExtraFieldUtils;->parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "local"    # Z
    .param p2, "onUnparseableData"    # Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v8, "v":Ljava/util/List;, "Ljava/util/List<Lcom/file/zip/ZipExtraField;>;"
    const/4 v7, 0x0

    .line 139
    .local v7, "start":I
    :goto_0
    array-length v10, p0

    add-int/lit8 v10, v10, -0x4

    if-le v7, v10, :cond_0

    .line 192
    :goto_1
    :pswitch_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [Lcom/file/zip/ZipExtraField;

    .line 193
    .local v6, "result":[Lcom/file/zip/ZipExtraField;
    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/file/zip/ZipExtraField;

    return-object v10

    .line 140
    .end local v6    # "result":[Lcom/file/zip/ZipExtraField;
    :cond_0
    new-instance v2, Lcom/file/zip/ZipShort;

    invoke-direct {v2, p0, v7}, Lcom/file/zip/ZipShort;-><init>([BI)V

    .line 141
    .local v2, "headerId":Lcom/file/zip/ZipShort;
    new-instance v10, Lcom/file/zip/ZipShort;

    add-int/lit8 v11, v7, 0x2

    invoke-direct {v10, p0, v11}, Lcom/file/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v10}, Lcom/file/zip/ZipShort;->getValue()I

    move-result v5

    .line 142
    .local v5, "length":I
    add-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v5

    array-length v11, p0

    if-le v10, v11, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 169
    new-instance v10, Ljava/util/zip/ZipException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unknown UnparseableExtraField key: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 169
    invoke-direct {v10, v11}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :pswitch_1
    new-instance v10, Ljava/util/zip/ZipException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bad extra field starting at "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Block length of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 147
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes exceeds remaining"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 148
    const-string v12, " data of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 149
    array-length v12, p0

    sub-int/2addr v12, v7

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 150
    const-string v12, " bytes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-direct {v10, v11}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 153
    :pswitch_2
    new-instance v1, Lcom/file/zip/UnparseableExtraFieldData;

    invoke-direct {v1}, Lcom/file/zip/UnparseableExtraFieldData;-><init>()V

    .line 154
    .local v1, "field":Lcom/file/zip/UnparseableExtraFieldData;
    if-eqz p1, :cond_1

    .line 156
    array-length v10, p0

    sub-int/2addr v10, v7

    .line 155
    invoke-virtual {v1, p0, v7, v10}, Lcom/file/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 161
    :goto_2
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_1
    array-length v10, p0

    sub-int/2addr v10, v7

    .line 158
    invoke-virtual {v1, p0, v7, v10}, Lcom/file/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    goto :goto_2

    .line 174
    .end local v1    # "field":Lcom/file/zip/UnparseableExtraFieldData;
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/file/zip/ExtraFieldUtils;->createExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v9

    .line 175
    .local v9, "ze":Lcom/file/zip/ZipExtraField;
    if-nez p1, :cond_3

    .line 176
    instance-of v10, v9, Lcom/file/zip/CentralDirectoryParsingZipExtraField;

    if-nez v10, :cond_4

    .line 177
    :cond_3
    add-int/lit8 v10, v7, 0x4

    invoke-interface {v9, p0, v10, v5}, Lcom/file/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 183
    :goto_3
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v10, v5, 0x4

    add-int/2addr v7, v10

    goto/16 :goto_0

    .line 179
    :cond_4
    move-object v0, v9

    check-cast v0, Lcom/file/zip/CentralDirectoryParsingZipExtraField;

    move-object v10, v0

    .line 180
    add-int/lit8 v11, v7, 0x4

    invoke-interface {v10, p0, v11, v5}, Lcom/file/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 184
    .end local v9    # "ze":Lcom/file/zip/ZipExtraField;
    :catch_0
    move-exception v4

    .line 185
    .local v4, "ie":Ljava/lang/InstantiationException;
    new-instance v10, Ljava/util/zip/ZipException;

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    .end local v4    # "ie":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 187
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    new-instance v10, Ljava/util/zip/ZipException;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/file/zip/ZipExtraField;

    .line 64
    .local v2, "ze":Lcom/file/zip/ZipExtraField;
    sget-object v3, Lcom/file/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    return-void

    .line 65
    .end local v2    # "ze":Lcom/file/zip/ZipExtraField;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "cc":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t implement ZipExtraField"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v0    # "cc":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a concrete class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 70
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s no-arg constructor is not public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
