.class public Lcom/fimi/x9/upgrade/X9UpdateUtil;
.super Ljava/lang/Object;
.source "X9UpdateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x9/upgrade/X9UpdateUtil$FirmwareComparator;
    }
.end annotation


# static fields
.field static downList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field public static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x9/upgrade/X9UpdateUtil;->list:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fimi/x9/upgrade/X9UpdateUtil;->downList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/fimi/x9/upgrade/X9UpdateUtil;->downList:Ljava/util/List;

    return-object v0
.end method

.method public static getFirmwareSiZe()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 193
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getUpdateFirmwareSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    div-double v0, v2, v6

    .line 194
    .local v0, "allFileSizeM":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLogicVersion(Ljava/lang/String;)I
    .locals 7
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 26
    if-eqz p0, :cond_0

    :try_start_0
    const-string v4, ""

    if-ne p0, v4, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v3

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 32
    .end local v1    # "index":I
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getMucDownloadVersion()I
    .locals 6

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "version":I
    invoke-static {}, Lcom/fimi/host/HostConstants;->getDownFinishedFw()Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 131
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v4

    long-to-int v2, v4

    .line 137
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return v2
.end method

.method public static getNeedUpgrade()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/fimi/host/HostConstants;->getDownZoneFinishedFw()Ljava/util/List;

    move-result-object v9

    .line 66
    .local v9, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v7, "needUpdateDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getLocalFwEntitys()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "entitys":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 71
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    .line 72
    .local v1, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_1

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v11

    if-eqz v11, :cond_2

    .line 74
    :cond_1
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 75
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/host/LocalFwEntity;

    .line 76
    .local v6, "l":Lcom/fimi/host/LocalFwEntity;
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_4

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v12

    if-eqz v12, :cond_5

    .line 77
    :cond_4
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 79
    :cond_5
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v13

    if-ne v12, v13, :cond_3

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 84
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_8

    const-string v12, "0"

    .line 85
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v8, 0x1

    .line 88
    .local v8, "normalUpdate":Z
    :goto_1
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_9

    const-string v12, "2"

    .line 89
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v3, 0x1

    .line 91
    .local v3, "forceUpdate":Z
    :goto_2
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    const-string v12, "1"

    .line 92
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v4, 0x1

    .line 94
    .local v4, "ingoreUpdate":Z
    :goto_3
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_b

    .line 95
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_b

    :cond_6
    const/4 v5, 0x1

    .line 97
    .local v5, "isUpdateZone":Z
    :goto_4
    if-nez v8, :cond_7

    if-nez v3, :cond_7

    if-eqz v4, :cond_3

    :cond_7
    if-eqz v5, :cond_3

    .line 98
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    .end local v3    # "forceUpdate":Z
    .end local v4    # "ingoreUpdate":Z
    .end local v5    # "isUpdateZone":Z
    .end local v8    # "normalUpdate":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 89
    .restart local v8    # "normalUpdate":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 92
    .restart local v3    # "forceUpdate":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 95
    .restart local v4    # "ingoreUpdate":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 107
    .end local v1    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v3    # "forceUpdate":Z
    .end local v4    # "ingoreUpdate":Z
    .end local v6    # "l":Lcom/fimi/host/LocalFwEntity;
    .end local v8    # "normalUpdate":Z
    :cond_c
    new-instance v0, Lcom/fimi/x9/upgrade/X9UpdateUtil$FirmwareComparator;

    invoke-direct {v0}, Lcom/fimi/x9/upgrade/X9UpdateUtil$FirmwareComparator;-><init>()V

    .line 109
    .local v0, "comparator":Lcom/fimi/x9/upgrade/X9UpdateUtil$FirmwareComparator;
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    return-object v7
.end method

.method public static getNeedUpgradeSize()I
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getNeedUpgrade()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getUpdateContent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 155
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getNeedUpgrade()Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "needUpgradeDto":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 160
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    add-int/lit8 v1, v1, 0x1

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getUpdateContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 164
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getUpdateFirmwareSize()J
    .locals 8

    .prologue
    .line 203
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getNeedUpgrade()Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "needUpgradeDto":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "allFileSize":J
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 207
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/UpfirewareDto;

    .line 208
    .local v2, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getFileSize()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 209
    goto :goto_0

    .line 211
    .end local v2    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_0
    return-wide v0
.end method

.method public static getX9FLogicVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    :try_start_0
    const-string v4, ""

    if-ne p0, v4, :cond_1

    .line 41
    :cond_0
    const-string v3, "-1"

    .line 49
    :goto_0
    return-object v3

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "index":I
    const-string v4, "-Release"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "index2":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 47
    .local v3, "str":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v1    # "index":I
    .end local v2    # "index2":I
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, p0

    .line 49
    goto :goto_0
.end method

.method public static isForceUpdate()Z
    .locals 6

    .prologue
    .line 217
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getNeedUpgrade()Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "isForce":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 220
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 221
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v4, "2"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 227
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "X9-C-V010SP19RTM171019R11513-CN-Release"

    invoke-static {v1}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getLogicVersion(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "X9-M-V012SP05RTM170920RB8800B3-CN-Release"

    invoke-static {v1}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getLogicVersion(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 243
    return-void
.end method

.method public static setDownList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "downList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    sput-object p0, Lcom/fimi/x9/upgrade/X9UpdateUtil;->downList:Ljava/util/List;

    .line 186
    return-void
.end method
