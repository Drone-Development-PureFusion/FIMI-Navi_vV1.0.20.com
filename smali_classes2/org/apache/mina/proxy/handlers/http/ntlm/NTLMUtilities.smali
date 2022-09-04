.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;
.super Ljava/lang/Object;
.source "NTLMUtilities.java"

# interfaces
.implements Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 10
    .param p0, "workStation"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "customFlags"    # Ljava/lang/Integer;
    .param p3, "osVersion"    # [B

    .prologue
    .line 182
    const/4 v4, 0x0

    .line 184
    .local v4, "msg":[B
    if-eqz p3, :cond_0

    array-length v8, p3

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 185
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "osVersion parameter should be a 8 byte wide array"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 189
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "workStation and domain must be non null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/lit16 v8, v8, 0x2000

    or-int/lit16 v3, v8, 0x1000

    .line 195
    .local v3, "flags":I
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->NTLM_SIGNATURE:[B

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 199
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    invoke-static {v3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 202
    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 203
    .local v1, "domainData":[B
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 205
    .local v7, "workStationData":[B
    if-eqz p3, :cond_5

    const/16 v6, 0x28

    .line 206
    .local v6, "pos":I
    :goto_1
    array-length v8, v1

    int-to-short v8, v8

    array-length v9, v7

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    array-length v8, v7

    int-to-short v8, v8

    invoke-static {v8, v6}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    if-eqz p3, :cond_3

    .line 210
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    :cond_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 215
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .end local v4    # "msg":[B
    .local v5, "msg":[B
    move-object v8, v4

    .line 223
    .end local v1    # "domainData":[B
    .end local v6    # "pos":I
    .end local v7    # "workStationData":[B
    :goto_2
    return-object v8

    .line 192
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "flags":I
    .end local v5    # "msg":[B
    .restart local v4    # "msg":[B
    :cond_4
    const/16 v3, 0x3003

    goto :goto_0

    .line 205
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "domainData":[B
    .restart local v3    # "flags":I
    .restart local v7    # "workStationData":[B
    :cond_5
    const/16 v6, 0x20

    goto :goto_1

    .line 219
    .end local v1    # "domainData":[B
    .end local v7    # "workStationData":[B
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    move-object v5, v4

    .end local v4    # "msg":[B
    .restart local v5    # "msg":[B
    goto :goto_2
.end method

.method public static final createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 16
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "workstation"    # Ljava/lang/String;
    .param p5, "serverFlags"    # Ljava/lang/Integer;
    .param p6, "osVersion"    # [B

    .prologue
    .line 425
    const/4 v6, 0x0

    .line 427
    .local v6, "msg":[B
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x8

    if-eq v14, v15, :cond_1

    .line 428
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "challenge[] should be a 8 byte wide array"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 431
    :cond_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v14, v0

    const/16 v15, 0x8

    if-eq v14, v15, :cond_2

    .line 432
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "osVersion should be a 8 byte wide array"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 435
    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 437
    .local v5, "flags":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v14, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->NTLM_SIGNATURE:[B

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 441
    const/4 v14, 0x3

    invoke-static {v14}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 443
    invoke-static/range {p1 .. p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 444
    .local v2, "dataLMResponse":[B
    invoke-static/range {p1 .. p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 446
    .local v3, "dataNTLMResponse":[B
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v11

    .line 447
    .local v11, "useUnicode":Z
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v10

    .line 448
    .local v10, "targetName":[B
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v12

    .line 449
    .local v12, "userName":[B
    move-object/from16 v0, p4

    invoke-static {v0, v11}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v13

    .line 451
    .local v13, "workstationName":[B
    if-eqz p6, :cond_5

    const/16 v8, 0x48

    .line 452
    .local v8, "pos":I
    :goto_1
    array-length v14, v10

    add-int/2addr v14, v8

    array-length v15, v12

    add-int/2addr v14, v15

    array-length v15, v13

    add-int v9, v14, v15

    .line 453
    .local v9, "responsePos":I
    array-length v14, v2

    int-to-short v14, v14

    invoke-static {v1, v14, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v9

    .line 454
    array-length v14, v3

    int-to-short v14, v14

    invoke-static {v1, v14, v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    .line 455
    array-length v14, v10

    int-to-short v14, v14

    invoke-static {v1, v14, v8}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v8

    .line 456
    array-length v14, v12

    int-to-short v14, v14

    invoke-static {v1, v14, v8}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v8

    .line 457
    array-length v14, v13

    int-to-short v14, v14

    invoke-static {v1, v14, v8}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    .line 471
    const/16 v14, 0x8

    new-array v14, v14, [B

    fill-array-data v14, :array_0

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 473
    invoke-static {v5}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 475
    if-eqz p6, :cond_3

    .line 476
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 480
    :cond_3
    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 481
    invoke-virtual {v1, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 482
    invoke-virtual {v1, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 484
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 485
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 487
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 488
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .end local v6    # "msg":[B
    .local v7, "msg":[B
    move-object v14, v6

    .line 494
    .end local v2    # "dataLMResponse":[B
    .end local v3    # "dataNTLMResponse":[B
    .end local v8    # "pos":I
    .end local v9    # "responsePos":I
    .end local v10    # "targetName":[B
    .end local v11    # "useUnicode":Z
    .end local v12    # "userName":[B
    .end local v13    # "workstationName":[B
    :goto_2
    return-object v14

    .line 435
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "flags":I
    .end local v7    # "msg":[B
    .restart local v6    # "msg":[B
    :cond_4
    const/16 v5, 0x3003

    goto/16 :goto_0

    .line 451
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "dataLMResponse":[B
    .restart local v3    # "dataNTLMResponse":[B
    .restart local v5    # "flags":I
    .restart local v10    # "targetName":[B
    .restart local v11    # "useUnicode":Z
    .restart local v12    # "userName":[B
    .restart local v13    # "workstationName":[B
    :cond_5
    const/16 v8, 0x40

    goto :goto_1

    .line 489
    .end local v2    # "dataLMResponse":[B
    .end local v3    # "dataNTLMResponse":[B
    .end local v10    # "targetName":[B
    .end local v11    # "useUnicode":Z
    .end local v12    # "userName":[B
    .end local v13    # "workstationName":[B
    :catch_0
    move-exception v4

    .line 490
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    const/4 v14, 0x0

    move-object v7, v6

    .end local v6    # "msg":[B
    .restart local v7    # "msg":[B
    goto :goto_2

    .line 471
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        -0x66t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static final extractChallengeFromType2Message([B)[B
    .locals 4
    .param p0, "msg"    # [B

    .prologue
    const/16 v3, 0x8

    .line 250
    new-array v0, v3, [B

    .line 251
    .local v0, "challenge":[B
    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    return-object v0
.end method

.method public static final extractFlagsFromType2Message([B)I
    .locals 4
    .param p0, "msg"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 263
    new-array v0, v2, [B

    .line 265
    .local v0, "flagsBytes":[B
    const/16 v1, 0x14

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-static {v0, v3, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    .line 268
    invoke-static {v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([B)I

    move-result v1

    return v1
.end method

.method public static final extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B
    .locals 3
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;

    .prologue
    .line 328
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    .line 330
    .local v0, "flags":I
    :goto_0
    const/high16 v2, 0x800000

    invoke-static {v0, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    const/4 v2, 0x0

    .line 336
    :goto_1
    return-object v2

    .line 328
    .end local v0    # "flags":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 334
    .restart local v0    # "flags":I
    :cond_1
    const/16 v1, 0x28

    .line 336
    .local v1, "pos":I
    invoke-static {p0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object v2

    goto :goto_1
.end method

.method public static final extractTargetNameFromType2Message([BLjava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 307
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object v1

    .line 310
    .local v1, "targetName":[B
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    .line 312
    .local v0, "flags":I
    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 316
    :goto_1
    return-object v2

    .line 310
    .end local v0    # "flags":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 316
    .restart local v0    # "flags":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1
.end method

.method public static final getOsVersion()[B
    .locals 14

    .prologue
    const/4 v12, 0x3

    .line 105
    const-string v10, "os.name"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "os":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "WINDOWS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 108
    :cond_0
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->DEFAULT_OS_VERSION:[B

    .line 166
    :goto_0
    return-object v4

    .line 111
    :cond_1
    const/16 v10, 0x8

    new-array v4, v10, [B

    .line 117
    .local v4, "osVer":[B
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "cmd /C ver"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 118
    .local v6, "pr":Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 119
    .local v7, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 125
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 128
    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 131
    if-nez v2, :cond_4

    .line 133
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "pr":Ljava/lang/Process;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "os.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "version":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v4, v13}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 161
    .end local v9    # "version":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "ex2":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->DEFAULT_OS_VERSION:[B

    goto :goto_0

    .line 138
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "ex2":Ljava/lang/Exception;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "pr":Ljava/lang/Process;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "version"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 140
    .local v5, "pos":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_5

    .line 142
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10

    .line 145
    :cond_5
    add-int/lit8 v5, v5, 0x8

    .line 146
    const/16 v10, 0x5d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, "."

    invoke-direct {v8, v2, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v8, "tk":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    if-eq v10, v12, :cond_6

    .line 151
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10

    .line 154
    :cond_6
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v10

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    .line 155
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v12

    const/4 v13, 0x0

    .line 154
    invoke-static {v10, v11, v12, v4, v13}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static final printTargetInformationBlockFromType2Message([BLjava/lang/Integer;Ljava/io/PrintWriter;)V
    .locals 10
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 352
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    .line 354
    .local v0, "flags":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v5}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B

    move-result-object v1

    .line 356
    .local v1, "infoBlock":[B
    if-nez v1, :cond_2

    .line 357
    const-string v5, "No target information block found !"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void

    .line 352
    .end local v0    # "flags":I
    .end local v1    # "infoBlock":[B
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 359
    .restart local v0    # "flags":I
    .restart local v1    # "infoBlock":[B
    :cond_2
    const/4 v4, 0x0

    .line 361
    .local v4, "pos":I
    :goto_1
    aget-byte v5, v1, v4

    if-eqz v5, :cond_0

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---\nType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    aget-byte v5, v1, v4

    packed-switch v5, :pswitch_data_0

    .line 382
    :goto_2
    new-array v2, v9, [B

    .line 383
    .local v2, "len":[B
    add-int/lit8 v5, v4, 0x2

    invoke-static {v1, v5, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {v2, v8, v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeByteEndianess([BII)V

    .line 386
    invoke-static {v2, v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result v3

    .line 387
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v5, "Data: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 391
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x4

    const-string v7, "UTF-16LE"

    invoke-direct {v5, v1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    :goto_3
    add-int/lit8 v5, v3, 0x4

    add-int/2addr v4, v5

    .line 397
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_1

    .line 366
    .end local v2    # "len":[B
    .end local v3    # "length":I
    :pswitch_0
    const-string v5, "Server name"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 369
    :pswitch_1
    const-string v5, "Domain name"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 372
    :pswitch_2
    const-string v5, "Fully qualified DNS hostname"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 375
    :pswitch_3
    const-string v5, "DNS domain name"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 378
    :pswitch_4
    const-string v5, "Parent DNS domain name"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 393
    .restart local v2    # "len":[B
    .restart local v3    # "length":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x4

    const-string v7, "ASCII"

    invoke-direct {v5, v1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static final readSecurityBufferTarget([BI)[B
    .locals 6
    .param p0, "msg"    # [B
    .param p1, "securityBufferOffset"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 280
    new-array v3, v4, [B

    .line 282
    .local v3, "securityBuffer":[B
    invoke-static {p0, p1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    invoke-static {v3, v5, v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    .line 284
    invoke-static {v3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v0

    .line 285
    .local v0, "length":I
    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result v1

    .line 287
    .local v1, "offset":I
    new-array v2, v0, [B

    .line 288
    .local v2, "secBufValue":[B
    invoke-static {p0, v1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-object v2
.end method

.method public static final writeOSVersion(BBS[BI)V
    .locals 3
    .param p0, "majorVersion"    # B
    .param p1, "minorVersion"    # B
    .param p2, "buildNumber"    # S
    .param p3, "b"    # [B
    .param p4, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    aput-byte p0, p3, p4

    .line 88
    add-int/lit8 v0, p4, 0x1

    aput-byte p1, p3, v0

    .line 89
    add-int/lit8 v0, p4, 0x2

    int-to-byte v1, p2

    aput-byte v1, p3, v0

    .line 90
    add-int/lit8 v0, p4, 0x3

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 91
    add-int/lit8 v0, p4, 0x4

    aput-byte v2, p3, v0

    .line 92
    add-int/lit8 v0, p4, 0x5

    aput-byte v2, p3, v0

    .line 93
    add-int/lit8 v0, p4, 0x6

    aput-byte v2, p3, v0

    .line 94
    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0xf

    aput-byte v1, p3, v0

    .line 95
    return-void
.end method

.method public static final writeSecurityBuffer(SSI[BI)V
    .locals 1
    .param p0, "length"    # S
    .param p1, "allocated"    # S
    .param p2, "bufferOffset"    # I
    .param p3, "b"    # [B
    .param p4, "offset"    # I

    .prologue
    .line 69
    invoke-static {p0, p3, p4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    .line 70
    add-int/lit8 v0, p4, 0x2

    invoke-static {p1, p3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    .line 71
    add-int/lit8 v0, p4, 0x4

    invoke-static {p2, p3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    .line 72
    return-void
.end method

.method public static final writeSecurityBuffer(SI)[B
    .locals 2
    .param p0, "length"    # S
    .param p1, "bufferOffset"    # I

    .prologue
    .line 47
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 48
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-static {p0, p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SSI[BI)V

    .line 50
    return-object v0
.end method

.method public static final writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I
    .locals 1
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "len"    # S
    .param p2, "pointer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 240
    add-int v0, p2, p1

    return v0
.end method
