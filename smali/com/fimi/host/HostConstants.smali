.class public Lcom/fimi/host/HostConstants;
.super Ljava/lang/Object;
.source "HostConstants.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "2882303761517518920"

.field public static final APP_KEY:Ljava/lang/String; = "5761751863920"

.field public static final BUCKET_NAME:Ljava/lang/String; = "bucket-app-us"

.field public static final CHANEL_EMAIL:Ljava/lang/String; = "1"

.field public static final CHANEL_PHONE:Ljava/lang/String; = "0"

.field public static final CHECK_UPDATE:I = 0x2

.field public static final FDS_BASE_URI:Ljava/lang/String; = "https://awsusor0.fds.api.xiaomi.com"

.field public static final FORMATDATE:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static GET_APP_SETTING:Ljava/lang/String; = null

.field public static HostURL:Ljava/lang/String; = null

.field public static NEW_APK_URL:Ljava/lang/String; = null

.field public static final NO_CHECK_UPDATE:I = 0x1

.field public static final OAUTH_APP_ID:Ljava/lang/String; = "2882303761517518920"

.field public static final OAUTH_MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static final OAUTH_PROVIDER:Ljava/lang/String; = "XiaoMi"

.field public static QUESET_FDS_URL:Ljava/lang/String; = null

.field public static RIGHT_APPLY_V1:Ljava/lang/String; = null

.field public static SAVE_FDS_URL_2_FIMI_URL:Ljava/lang/String; = null

.field public static SAVE_FDS_URL_2_FIMI_URL_PLAYBACK:Ljava/lang/String; = null

.field public static final SIMPLEFORMATDATE:Ljava/lang/String; = "MM-dd HH:mm"

.field public static final SP_KEY_CLOUD_VERSION:Ljava/lang/String; = "sp_key_cloud_version"

.field public static final SP_KEY_FCVERSION:Ljava/lang/String; = "sp_key_fc_verion"

.field public static final SP_KEY_HAND_VERSION:Ljava/lang/String; = "sp_key_hand_version"

.field public static final SP_KEY_LOCAL_FIRMWARE_DETAIL:Ljava/lang/String; = "sp_key_local_firmware_detail"

.field public static final SP_KEY_MCUVERSION:Ljava/lang/String; = "sp_key_mcu_verion"

.field public static final SP_KEY_NET_FIRMWARE_DETAIL:Ljava/lang/String; = "sp_key_net_firmware_detail"

.field public static final SP_KEY_NOT_TIPS:Ljava/lang/String; = "sp_key_not_tips"

.field public static final SP_KEY_SYSVERION:Ljava/lang/String; = "Sp_key_sys_Verion"

.field public static final SP_KEY_UPDATE_CHECK:Ljava/lang/String; = "sp_key_update_check"

.field public static final SP_KEY_UPDATE_ZONE_FW:Ljava/lang/String; = "sp_key_update_fw"

.field public static final SP_KEY_USER_DETAIL:Ljava/lang/String; = "sp_key_user_detail"

.field public static final SP_KEY_USER_INFO_EMAIL_OR_IPHONE:Ljava/lang/String; = "sp_key_user_info_email_or_iphone"

.field public static final SP_KEY_USER_INFO_FLAG:Ljava/lang/String; = "sp_key_user_info_flag"

.field public static final SP_NOT_NEW_HAND:Ljava/lang/String; = "sp_new_hand"

.field public static final SYSID_CLOUD_CONTROL:I = 0x3

.field public static final SYSID_CLOUD_CONTROL_MODEL:I = 0x5

.field public static final SYSID_CLOUD_CONTROL_Z:I = 0x8

.field public static final SYSID_CLOUD_CONTROL_Z_MODEL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HostConstants"

.field public static USER_LOGIN_URL:Ljava/lang/String; = null

.field public static USER_LOGIN_URL_V2:Ljava/lang/String; = null

.field public static final USER_PROTOCOL:Ljava/lang/String; = "user_protocol"

.field public static final VERIFYCODE_FORGET_PASSWORD:Ljava/lang/String; = "2"

.field public static final VERIFYCODE_FUNC_FINDPWD:Ljava/lang/String; = "1"

.field public static final VERIFYCODE_FUNC_LOGIN:Ljava/lang/String; = "0"

.field public static urlDatas:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLocalFwEntitys()V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_local_firmware_detail"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveListObject(Ljava/lang/String;Ljava/util/List;)V

    .line 219
    return-void
.end method

.method public static getCloudVersion()I
    .locals 3

    .prologue
    .line 678
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_cloud_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDownFinishedFw()Ljava/util/List;
    .locals 6
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
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "downFinishedFw":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getFirmwareDetail()Ljava/util/List;

    move-result-object v2

    .line 456
    .local v2, "netFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 457
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/network/entity/UpfirewareDto;

    .line 458
    .local v3, "u":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/utils/DirectoryPath;->getFileOfMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getFileEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v1    # "md5":Ljava/lang/String;
    .end local v3    # "u":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return-object v0
.end method

.method public static getDownZoneFinishedFw()Ljava/util/List;
    .locals 6
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
    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "downFinishedFw":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getZoneFirmwareDetail()Ljava/util/List;

    move-result-object v2

    .line 470
    .local v2, "netFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/network/entity/UpfirewareDto;

    .line 472
    .local v3, "u":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/utils/DirectoryPath;->getFileOfMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getFileEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v1    # "md5":Ljava/lang/String;
    .end local v3    # "u":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return-object v0
.end method

.method public static getDownloadFwSelectInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    invoke-static {}, Lcom/fimi/host/common/ProductEnum;->values()[Lcom/fimi/host/common/ProductEnum;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 547
    .local v4, "s":Lcom/fimi/host/common/ProductEnum;
    new-instance v2, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    invoke-direct {v2}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;-><init>()V

    .line 548
    .local v2, "mDownloadFwSelectInfo":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v2, v4}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->setProduct(Lcom/fimi/host/common/ProductEnum;)V

    .line 549
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "mDownloadFwSelectInfo":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    .end local v4    # "s":Lcom/fimi/host/common/ProductEnum;
    :cond_0
    invoke-static {}, Lcom/fimi/host/HostConstants;->getNeedDownFw()Ljava/util/List;

    move-result-object v3

    .line 554
    .local v3, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 555
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-static {v0, v1}, Lcom/fimi/host/HostConstants;->iteratorProductList(Lcom/fimi/network/entity/UpfirewareDto;Ljava/util/List;)V

    goto :goto_1

    .line 557
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    return-object v1
.end method

.method public static getFcVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_fc_verion"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirmwareDetail()Ljava/util/List;
    .locals 3
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
    .line 159
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_net_firmware_detail"

    const-class v2, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getHandVersion()I
    .locals 3

    .prologue
    .line 686
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_hand_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLocalFwEntitys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/LocalFwEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "sp_key_local_firmware_detail"

    const-class v3, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "localFwEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "localFwEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    :cond_0
    return-object v0
.end method

.method public static getMcuVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_mcu_verion"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNeedDownFw()Ljava/util/List;
    .locals 28
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
    .line 230
    invoke-static {}, Lcom/fimi/host/HostConstants;->getFirmwareDetail()Ljava/util/List;

    move-result-object v15

    .line 231
    .local v15, "netFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    if-nez v15, :cond_1

    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 361
    :cond_0
    return-object v10

    .line 236
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v21, "zoneFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v16, "normalFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/network/entity/UpfirewareDto;

    .line 240
    .local v6, "fw":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v6}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v23

    if-lez v23, :cond_2

    .line 241
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    .end local v6    # "fw":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_3
    const-string v22, "moweiru"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "zoneFws:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";normalFws:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v19, "updateZoneFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v18, "updateNormalFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getLocalFwEntitys()Ljava/util/List;

    move-result-object v12

    .line 254
    .local v12, "localFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v14, "needDownFw":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    if-eqz v15, :cond_d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 258
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fimi/network/entity/UpfirewareDto;

    .line 259
    .local v20, "upfireDto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fimi/host/LocalFwEntity;

    .line 260
    .local v11, "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 261
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 266
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-gez v24, :cond_8

    const-string v24, "0"

    .line 267
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v17, 0x1

    .line 269
    .local v17, "normalUpdate":Z
    :goto_2
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-gez v24, :cond_9

    const-string v24, "2"

    .line 270
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/4 v5, 0x1

    .line 272
    .local v5, "forceUpdate":Z
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-eqz v24, :cond_a

    const-string v24, "1"

    .line 273
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/4 v7, 0x1

    .line 276
    .local v7, "ingoreUpdate":Z
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v24

    if-eqz v24, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v24

    if-nez v24, :cond_b

    :cond_6
    const/4 v9, 0x1

    .line 279
    .local v9, "isDownZone":Z
    :goto_5
    if-nez v17, :cond_7

    if-nez v5, :cond_7

    if-eqz v7, :cond_5

    :cond_7
    if-eqz v9, :cond_5

    .line 280
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    .end local v5    # "forceUpdate":Z
    .end local v7    # "ingoreUpdate":Z
    .end local v9    # "isDownZone":Z
    .end local v17    # "normalUpdate":Z
    :cond_8
    const/16 v17, 0x0

    goto :goto_2

    .line 270
    .restart local v17    # "normalUpdate":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 273
    .restart local v5    # "forceUpdate":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 277
    .restart local v7    # "ingoreUpdate":Z
    :cond_b
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_c

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_c

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_5

    .line 291
    .end local v5    # "forceUpdate":Z
    .end local v7    # "ingoreUpdate":Z
    .end local v11    # "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    .end local v17    # "normalUpdate":Z
    .end local v20    # "upfireDto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_d
    if-eqz v15, :cond_17

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_17

    .line 292
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fimi/network/entity/UpfirewareDto;

    .line 293
    .restart local v20    # "upfireDto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_f
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fimi/host/LocalFwEntity;

    .line 294
    .restart local v11    # "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 295
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 300
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-gez v24, :cond_12

    const-string v24, "0"

    .line 301
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/16 v17, 0x1

    .line 303
    .restart local v17    # "normalUpdate":Z
    :goto_7
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-gez v24, :cond_13

    const-string v24, "2"

    .line 304
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/4 v5, 0x1

    .line 306
    .restart local v5    # "forceUpdate":Z
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-eqz v24, :cond_14

    const-string v24, "1"

    .line 307
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const/4 v7, 0x1

    .line 310
    .restart local v7    # "ingoreUpdate":Z
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v24

    if-eqz v24, :cond_10

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v24

    if-nez v24, :cond_15

    :cond_10
    const/4 v9, 0x1

    .line 313
    .restart local v9    # "isDownZone":Z
    :goto_a
    if-nez v17, :cond_11

    if-nez v5, :cond_11

    if-eqz v7, :cond_f

    :cond_11
    if-eqz v9, :cond_f

    .line 314
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 301
    .end local v5    # "forceUpdate":Z
    .end local v7    # "ingoreUpdate":Z
    .end local v9    # "isDownZone":Z
    .end local v17    # "normalUpdate":Z
    :cond_12
    const/16 v17, 0x0

    goto :goto_7

    .line 304
    .restart local v17    # "normalUpdate":Z
    :cond_13
    const/4 v5, 0x0

    goto :goto_8

    .line 307
    .restart local v5    # "forceUpdate":Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_9

    .line 311
    .restart local v7    # "ingoreUpdate":Z
    :cond_15
    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getStartVersion()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_16

    invoke-virtual {v11}, Lcom/fimi/host/LocalFwEntity;->getLogicVersion()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/network/entity/UpfirewareDto;->getEndVersion()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_16

    const/4 v9, 0x1

    goto :goto_a

    :cond_16
    const/4 v9, 0x0

    goto :goto_a

    .line 324
    .end local v5    # "forceUpdate":Z
    .end local v7    # "ingoreUpdate":Z
    .end local v11    # "localFwEntity":Lcom/fimi/host/LocalFwEntity;
    .end local v17    # "normalUpdate":Z
    .end local v20    # "upfireDto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_17
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1d

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1d

    .line 325
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_18
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/network/entity/UpfirewareDto;

    .line 326
    .local v3, "dto1":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_19
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/network/entity/UpfirewareDto;

    .line 327
    .local v4, "dto2":Lcom/fimi/network/entity/UpfirewareDto;
    const/4 v8, 0x0

    .line 328
    .local v8, "isAdd":Z
    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v24

    invoke-virtual {v4}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    invoke-virtual {v3}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v24

    invoke-virtual {v4}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 329
    const/4 v8, 0x1

    .line 332
    :cond_1a
    if-nez v8, :cond_19

    .line 333
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 339
    .end local v3    # "dto1":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v4    # "dto2":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v8    # "isAdd":Z
    :cond_1b
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    :goto_c
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v22

    const-string v23, "sp_key_update_fw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v22, "moweiru"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "updateNormalFws:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";updateZoneFws:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v10, "lastDownFw":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1c
    :goto_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/UpfirewareDto;

    .line 353
    .local v2, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/fimi/kernel/utils/DirectoryPath;->getFileOfMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, "localMdf5":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getFileEncode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 355
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 340
    .end local v2    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v10    # "lastDownFw":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    .end local v13    # "localMdf5":Ljava/lang/String;
    :cond_1d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1e

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    if-gtz v22, :cond_1e

    .line 341
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 343
    :cond_1e
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c
.end method

.method public static getNeedDownFw(ZLjava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "isWifiAuto"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/host/HostConstants;->getNeedDownFw()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    if-eqz p0, :cond_1

    .line 385
    :cond_0
    return-object v2

    .line 377
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 378
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/network/entity/UpfirewareDto;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 380
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-static {v0, p1}, Lcom/fimi/host/HostConstants;->iteratorProductSelectList(Lcom/fimi/network/entity/UpfirewareDto;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static getSysVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 670
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "Sp_key_sys_Verion"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDetail()Lcom/fimi/network/entity/UserDto;
    .locals 4

    .prologue
    .line 495
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "sp_key_user_detail"

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "userDtoStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    new-instance v0, Lcom/fimi/network/entity/UserDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/UserDto;-><init>()V

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 499
    :cond_1
    const-class v2, Lcom/fimi/network/entity/UserDto;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UserDto;

    .line 500
    .local v0, "dto":Lcom/fimi/network/entity/UserDto;
    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/fimi/network/entity/UserDto;

    .end local v0    # "dto":Lcom/fimi/network/entity/UserDto;
    invoke-direct {v0}, Lcom/fimi/network/entity/UserDto;-><init>()V

    .restart local v0    # "dto":Lcom/fimi/network/entity/UserDto;
    goto :goto_0
.end method

.method public static getZoneFirmwareDetail()Ljava/util/List;
    .locals 3
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
    .line 170
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_update_fw"

    const-class v2, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static initUrl()V
    .locals 5

    .prologue
    .line 33
    const-string v1, ""

    .line 34
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "service_item_key"

    const-class v4, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/region/ServiceItem;

    .line 35
    .local v0, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    if-nez v0, :cond_0

    .line 36
    const-string v1, "https://fimiservice-newus.mi-ae.com/"

    .line 53
    :goto_0
    const-string v2, "initUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "======================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object v1, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/firmware/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->NEW_APK_URL:Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v2/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL_V2:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/rightcenter/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->RIGHT_APPLY_V1:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "xmfds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->QUESET_FDS_URL:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->SAVE_FDS_URL_2_FIMI_URL:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/fly/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->SAVE_FDS_URL_2_FIMI_URL_PLAYBACK:Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/setting/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/host/HostConstants;->GET_APP_SETTING:Ljava/lang/String;

    .line 64
    return-void

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/fimi/kernel/region/ServiceItem;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static isForceUpdate(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "needownFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/4 v1, 0x0

    .line 436
    .local v1, "isForceUpdate":Z
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 437
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 438
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 446
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    :goto_0
    return v1

    .line 444
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGh2ForceUpdate(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "needownFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/4 v5, 0x5

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "isForceUpdate":Z
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 417
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 418
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-ne v5, v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 420
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-ne v5, v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 421
    :cond_2
    const/4 v1, 0x1

    .line 429
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_3
    :goto_0
    return v1

    .line 427
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isX8sFireware(Lcom/fimi/network/entity/UpfirewareDto;)Z
    .locals 4
    .param p0, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x3

    .line 592
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    :cond_0
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v0, :cond_a

    :cond_2
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 594
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    :cond_4
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_a

    :cond_6
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 596
    :cond_7
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-eq v1, v3, :cond_a

    :cond_8
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 597
    :cond_9
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v1

    if-ne v1, v0, :cond_b

    .line 600
    :cond_a
    :goto_0
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isX9ForceUpdate(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "needownFws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/4 v1, 0x0

    .line 393
    .local v1, "isForceUpdate":Z
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 394
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .line 395
    .local v0, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xd

    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 398
    :cond_2
    const/4 v1, 0x1

    .line 407
    .end local v0    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_3
    :goto_0
    return v1

    .line 405
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static iteratorProductList(Lcom/fimi/network/entity/UpfirewareDto;Ljava/util/List;)V
    .locals 5
    .param p0, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    const/4 v4, 0x5

    .line 566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 567
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v2

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 569
    :cond_2
    invoke-static {p0, v0}, Lcom/fimi/host/HostConstants;->updateDownloadFwSelectInfo(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/host/Entity/DownloadFwSelectInfo;)V

    .line 589
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_3
    :goto_0
    return-void

    .line 572
    .restart local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_4
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v2

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v2

    if-nez v2, :cond_0

    .line 574
    :cond_6
    invoke-static {p0, v0}, Lcom/fimi/host/HostConstants;->updateDownloadFwSelectInfo(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/host/Entity/DownloadFwSelectInfo;)V

    goto :goto_0

    .line 582
    :cond_7
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v2

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_0

    .line 583
    invoke-static {p0}, Lcom/fimi/host/HostConstants;->isX8sFireware(Lcom/fimi/network/entity/UpfirewareDto;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {p0, v0}, Lcom/fimi/host/HostConstants;->updateDownloadFwSelectInfo(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/host/Entity/DownloadFwSelectInfo;)V

    goto :goto_0
.end method

.method public static iteratorProductSelectList(Lcom/fimi/network/entity/UpfirewareDto;Ljava/util/List;)Z
    .locals 6
    .param p0, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    const/4 v5, 0x5

    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "ret":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 608
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v3

    sget-object v4, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v3, v4, :cond_4

    .line 609
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-eq v3, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 611
    :cond_2
    const/4 v1, 0x1

    .line 632
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_3
    :goto_0
    return v1

    .line 614
    .restart local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_4
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v3

    sget-object v4, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v3, v4, :cond_7

    .line 615
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v3

    if-nez v3, :cond_0

    .line 617
    :cond_6
    const/4 v1, 0x1

    .line 618
    goto :goto_0

    .line 625
    :cond_7
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v3

    sget-object v4, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v3, v4, :cond_0

    .line 626
    invoke-static {p0}, Lcom/fimi/host/HostConstants;->isX8sFireware(Lcom/fimi/network/entity/UpfirewareDto;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    const/4 v1, 0x1

    .line 628
    goto :goto_0
.end method

.method public static saveFirmwareDetail(Ljava/util/List;)V
    .locals 2
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
    .line 150
    .local p0, "fwDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_net_firmware_detail"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveListObject(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    return-void
.end method

.method public static saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V
    .locals 7
    .param p0, "entity"    # Lcom/fimi/host/LocalFwEntity;

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/fimi/host/HostConstants;->getLocalFwEntitys()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/LocalFwEntity;>;"
    const/4 v3, 0x0

    .line 185
    .local v3, "remove":Lcom/fimi/host/LocalFwEntity;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/host/LocalFwEntity;

    .line 186
    .local v1, "local":Lcom/fimi/host/LocalFwEntity;
    invoke-virtual {v1}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v5

    invoke-virtual {p0}, Lcom/fimi/host/LocalFwEntity;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v5

    invoke-virtual {p0}, Lcom/fimi/host/LocalFwEntity;->getModel()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 187
    move-object v3, v1

    .line 191
    .end local v1    # "local":Lcom/fimi/host/LocalFwEntity;
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v4

    const-string v5, "sp_key_local_firmware_detail"

    invoke-virtual {v4, v5, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveListObject(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static saveUserDetail(Ljava/lang/Object;)V
    .locals 2
    .param p0, "userjson"    # Ljava/lang/Object;

    .prologue
    .line 486
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_detail"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public static saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "flag"    # Ljava/lang/String;
    .param p1, "iphoneOrEmail"    # Ljava/lang/String;

    .prologue
    .line 512
    if-eqz p0, :cond_0

    .line 513
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_info_flag"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_info_email_or_iphone"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_info_flag"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->removeKey(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_info_email_or_iphone"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->removeKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCloudVersion(I)V
    .locals 2
    .param p0, "cloudVersion"    # I

    .prologue
    .line 674
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_cloud_version"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 675
    return-void
.end method

.method public static setFcVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "fcVersion"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_fc_verion"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public static setHandVersion(I)V
    .locals 2
    .param p0, "cloudVersion"    # I

    .prologue
    .line 682
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_hand_version"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 683
    return-void
.end method

.method public static setHostURL(Ljava/lang/String;)V
    .locals 0
    .param p0, "hostURL"    # Ljava/lang/String;

    .prologue
    .line 74
    sput-object p0, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static setMcuVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "mcuVersion"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_mcu_verion"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public static setSysVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "sysVersion"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "Sp_key_sys_Verion"

    invoke-virtual {v0, v1, p0}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private static updateDownloadFwSelectInfo(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/host/Entity/DownloadFwSelectInfo;)V
    .locals 2
    .param p0, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;
    .param p1, "info"    # Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .prologue
    .line 641
    const-string v0, "2"

    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getForceSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->setForceSign(Z)V

    .line 644
    :cond_0
    invoke-virtual {p1, p0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->add2List(Lcom/fimi/network/entity/UpfirewareDto;)V

    .line 645
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getUpdateContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->addDetail(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/fimi/network/entity/UpfirewareDto;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->setFileSize(J)V

    .line 647
    return-void
.end method


# virtual methods
.method public initDataUrl([I)V
    .locals 4
    .param p1, "ints"    # [I

    .prologue
    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fimi/host/HostConstants;->urlDatas:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 69
    sget-object v1, Lcom/fimi/host/HostConstants;->urlDatas:Ljava/util/HashMap;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
