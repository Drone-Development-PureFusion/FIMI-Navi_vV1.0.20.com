.class public Lcom/fimi/x8sdk/update/UpdateUtil;
.super Ljava/lang/Object;
.source "UpdateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCodeString(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "strId":I
    int-to-byte v1, p1

    packed-switch v1, :pswitch_data_0

    .line 338
    :goto_0
    :pswitch_0
    return v0

    .line 283
    :pswitch_1
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_0:I

    .line 284
    goto :goto_0

    .line 286
    :pswitch_2
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_1:I

    .line 287
    goto :goto_0

    .line 289
    :pswitch_3
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_2:I

    .line 290
    goto :goto_0

    .line 292
    :pswitch_4
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_3:I

    .line 293
    goto :goto_0

    .line 295
    :pswitch_5
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_4:I

    .line 296
    goto :goto_0

    .line 298
    :pswitch_6
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_5:I

    .line 299
    goto :goto_0

    .line 301
    :pswitch_7
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_6:I

    .line 302
    goto :goto_0

    .line 304
    :pswitch_8
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_7:I

    .line 305
    goto :goto_0

    .line 307
    :pswitch_9
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_21:I

    .line 308
    goto :goto_0

    .line 310
    :pswitch_a
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_22:I

    .line 311
    goto :goto_0

    .line 313
    :pswitch_b
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_23:I

    .line 314
    goto :goto_0

    .line 316
    :pswitch_c
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_24:I

    .line 317
    goto :goto_0

    .line 319
    :pswitch_d
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_25:I

    .line 320
    goto :goto_0

    .line 322
    :pswitch_e
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_26:I

    .line 323
    goto :goto_0

    .line 325
    :pswitch_f
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_27:I

    .line 326
    goto :goto_0

    .line 328
    :pswitch_10
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_28:I

    .line 329
    goto :goto_0

    .line 331
    :pswitch_11
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_29:I

    .line 332
    goto :goto_0

    .line 334
    :pswitch_12
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_255:I

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getServerFwInfo()Ljava/util/List;
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
    .line 276
    invoke-static {}, Lcom/fimi/host/HostConstants;->getFirmwareDetail()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUpfireDtos()Ljava/util/List;
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
    .line 26
    invoke-static {}, Lcom/fimi/host/HostConstants;->getDownZoneFinishedFw()Ljava/util/List;

    move-result-object v5

    .line 28
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v8, "upfirewareDtoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getLocalFwEntitys()Ljava/util/List;

    move-result-object v1

    .line 32
    .local v1, "entitys":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1e

    .line 33
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 34
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    :cond_1
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_3

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    :cond_3
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0xb

    if-ne v10, v11, :cond_4

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    .line 37
    :cond_4
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_5

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    :cond_5
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_6

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    if-eqz v10, :cond_b

    .line 38
    :cond_6
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_b

    :cond_7
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_8

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    .line 39
    :cond_8
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_9

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    :cond_9
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_a

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    .line 40
    :cond_a
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 41
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/host/LocalFwEntity;

    .line 42
    .local v6, "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    :cond_d
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    .line 43
    :cond_e
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_f

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    :cond_f
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_10

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    .line 44
    :cond_10
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_11

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    :cond_11
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_12

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    if-eqz v11, :cond_17

    .line 45
    :cond_12
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_13

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_17

    :cond_13
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_14

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    .line 46
    :cond_14
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_15

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_17

    :cond_15
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_16

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_17

    .line 47
    :cond_16
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_c

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 49
    :cond_17
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v11

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v12

    if-ne v11, v12, :cond_c

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v11

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v12

    if-ne v11, v12, :cond_c

    .line 54
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_1a

    const-string v11, "0"

    .line 55
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/4 v7, 0x1

    .line 58
    .local v7, "normalUpdate":Z
    :goto_1
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_1b

    const-string v11, "2"

    .line 59
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v2, 0x1

    .line 61
    .local v2, "forceUpdate":Z
    :goto_2
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-eqz v11, :cond_1c

    const-string v11, "1"

    .line 62
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v3, 0x1

    .line 64
    .local v3, "ingoreUpdate":Z
    :goto_3
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-gtz v11, :cond_1d

    .line 65
    invoke-virtual {v6}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_1d

    :cond_18
    const/4 v4, 0x1

    .line 67
    .local v4, "isUpdateZone":Z
    :goto_4
    if-nez v7, :cond_19

    if-nez v2, :cond_19

    if-eqz v3, :cond_c

    :cond_19
    if-eqz v4, :cond_c

    .line 68
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    .end local v2    # "forceUpdate":Z
    .end local v3    # "ingoreUpdate":Z
    .end local v4    # "isUpdateZone":Z
    .end local v7    # "normalUpdate":Z
    :cond_1a
    const/4 v7, 0x0

    goto :goto_1

    .line 59
    .restart local v7    # "normalUpdate":Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_2

    .line 62
    .restart local v2    # "forceUpdate":Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_3

    .line 65
    .restart local v3    # "ingoreUpdate":Z
    :cond_1d
    const/4 v4, 0x0

    goto :goto_4

    .line 237
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v2    # "forceUpdate":Z
    .end local v3    # "ingoreUpdate":Z
    .end local v6    # "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    .end local v7    # "normalUpdate":Z
    :cond_1e
    return-object v8
.end method

.method public static isForceUpdate()Z
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->getUpfireDtos()Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/4 v1, 0x0

    .line 243
    .local v1, "isForce":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 244
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 245
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v4, "2"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const/4 v1, 0x1

    .line 251
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return v1
.end method

.method public static toFwInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "fws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->getUpfireDtos()Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/UpfirewareDto;

    .line 261
    .local v2, "upfirewareDto":Lcom/fimi/network/entity/UpfirewareDto;
    new-instance v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-direct {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 262
    .local v0, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 263
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 264
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setFwType(B)V

    .line 265
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v6

    long-to-int v5, v6

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSoftwareVer(S)V

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v0    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    .end local v2    # "upfirewareDto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_0
    return-object v1
.end method
