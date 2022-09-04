.class public Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;
.super Ljava/lang/Object;
.source "ParaserTxt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "lineText"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "D:/fm_package_30.ini"

    .line 86
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->readTxtFile(Ljava/lang/String;)Lcom/fimi/x8sdk/update/fwpack/PkgDetl;

    move-result-object v3

    .line 87
    .local v3, "pkg":Lcom/fimi/x8sdk/update/fwpack/PkgDetl;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->getFws()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "fws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 91
    .local v2, "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v2    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_0
    return-void
.end method

.method public static readTxtFile(Ljava/lang/String;)Lcom/fimi/x8sdk/update/fwpack/PkgDetl;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v6, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;

    invoke-direct {v6}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;-><init>()V

    .line 15
    .local v6, "pkgDtl":Lcom/fimi/x8sdk/update/fwpack/PkgDetl;
    :try_start_0
    const-string v2, "GBK"

    .line 16
    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 18
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 19
    .local v7, "read":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 21
    .local v4, "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    const/4 v5, 0x0

    .line 22
    .local v5, "lineTxt":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 23
    const-string v9, "mainver"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 24
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v6, v9}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->setMainVer(S)V

    .line 27
    :cond_0
    const-string v9, "[FW"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 28
    new-instance v4, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .end local v4    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-direct {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 30
    .restart local v4    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_1
    const-string v9, "subver"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 31
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "temp":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    int-to-short v9, v9

    invoke-virtual {v6, v9}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->setSuberVer(S)V

    .line 34
    .end local v8    # "temp":Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "id"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 35
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->setId1(I)V

    .line 38
    :cond_3
    const-string v9, "modelid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 39
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 41
    :cond_4
    const-string v9, "typeid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 42
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 44
    :cond_5
    const-string v9, "fwtype"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 45
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setFwType(B)V

    .line 47
    :cond_6
    const-string v9, "softwarever"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 48
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSoftwareVer(S)V

    .line 50
    :cond_7
    const-string v9, "sver"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 51
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .restart local v8    # "temp":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setStepVer(B)V

    .line 54
    .end local v8    # "temp":Ljava/lang/CharSequence;
    :cond_8
    const-string v9, "path"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 55
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ParaserTxt;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6}, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->getFws()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 64
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    .end local v5    # "lineTxt":Ljava/lang/String;
    .end local v7    # "read":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\u8bfb\u53d6\u6587\u4ef6\u5185\u5bb9\u51fa\u9519"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 60
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    .restart local v5    # "lineTxt":Ljava/lang/String;
    .restart local v7    # "read":Ljava/io/InputStreamReader;
    :cond_a
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    goto :goto_1

    .line 62
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    .end local v5    # "lineTxt":Ljava/lang/String;
    .end local v7    # "read":Ljava/io/InputStreamReader;
    :cond_b
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u6587\u4ef6"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
