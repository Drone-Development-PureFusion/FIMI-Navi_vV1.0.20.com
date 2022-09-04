.class public Lcom/fimi/kernel/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/Constants$APPType;,
        Lcom/fimi/kernel/Constants$UserType;
    }
.end annotation


# static fields
.field public static final AMPTYPE:Ljava/lang/String; = "Amptype"

.field public static final CHANGELANGUGE:Ljava/lang/String; = "com.fimi.app.changelanguge"

.field public static final CHINASERVICE:I = 0x1

.field public static final COUNTRYCODE:Ljava/lang/String; = "CountryCode"

.field public static CRC16_LENGTH:I = 0x0

.field public static final DRONEMAPTYPE:Ljava/lang/String; = "DroneMapType"

.field public static final EUROPESERVICE:I = 0x3

.field public static final GH2_NEWBIE_GUIDE_KEY:Ljava/lang/String; = "gh2_newbie_guide_key"

.field public static final INDIA:I = 0x4

.field public static final LANGUAGETYPE:Ljava/lang/String; = "select_languagetype"

.field public static LogFileSize:I = 0x0

.field public static final MANUFACTURER_MODE_KEY:Ljava/lang/String; = "manufacturer_mode_key"

.field public static final MAX_PROGRESS:I = 0x64

.field public static final OTHERSERVICE:I = 0x7

.field public static final RUSISA:I = 0x5

.field public static final SERVICECODE:Ljava/lang/String; = "ServiceCode"

.field public static final SERVICE_ITEM_KEY:Ljava/lang/String; = "service_item_key"

.field public static final SOUTHEAST_ASIA:I = 0x6

.field public static final SP_PERSON_USER_TYPE:Ljava/lang/String; = "sp_person_user_type"

.field public static SUPPORT4K_KEY:Ljava/lang/String; = null

.field public static final UPDATING_KEY:Ljava/lang/String; = "updating_key"

.field public static final USSERVICE:I = 0x2

.field public static final VIDEO_FILE_SUFFIX:Ljava/lang/String; = ".mp4"

.field public static final VIDEO_RESOLUTION_KEY:Ljava/lang/String; = "video_resolution_key"

.field public static final X8_BATTERY_MOODEL:I = 0x3

.field public static final X8_BATTERY_TYPE:I = 0x5

.field public static final X8_CAMERA_MOODEL:I = 0x2

.field public static final X8_CAMERA_STATE_EVENT_KEY:Ljava/lang/String; = "x8_camera_state_event_key"

.field public static final X8_CAMERA_TYPE:I = 0x4

.field public static final X8_CV_MOODEL:I = 0x1

.field public static final X8_CV_TYPE:I = 0x9

.field public static final X8_ESC_MOODEL:I = 0x0

.field public static final X8_ESC_TYPE:I = 0xe

.field public static final X8_FC_MOODEL:I = 0x3

.field public static final X8_FC_TYPE:I = 0x0

.field public static final X8_FLIGHTLOG_EVENT_KEY:Ljava/lang/String; = "x8_flightlog_event_key"

.field public static final X8_FLIGHTLOG_PATH:Ljava/lang/String; = "x8_flightlog_path"

.field public static final X8_FLIGHTLOG_RENAME_FILE_EVENT_KEY:Ljava/lang/String; = "x8_flightlog_rename_file_event_key"

.field public static final X8_FLIGHT_CONTROL_RELAY_MOODEL:I = 0x3

.field public static final X8_FLIGHT_CONTROL_RELAY_TYPE:I = 0xc

.field public static final X8_GIMBAL_MOODEL:I = 0x6

.field public static final X8_GIMBAL_TYPE:I = 0x3

.field public static final X8_NFZ_MOODEL:I = 0x3

.field public static final X8_NFZ_TYPE:I = 0xa

.field public static final X8_RC_MOODEL:I = 0x3

.field public static final X8_RC_TYPE:I = 0x1

.field public static final X8_REPEATER_RC_MOODEL:I = 0x3

.field public static final X8_REPEATER_RC_TYPE:I = 0xb

.field public static final X8_ULTRASONIC_MOODEL:I = 0x1

.field public static final X8_ULTRASONIC_TYPE:I = 0xd

.field public static final X8_UPDATE_EVENT_KEY:Ljava/lang/String; = "x8_update_event_key"

.field public static X9_BEGNNER_GUIDE:Ljava/lang/String; = null

.field public static X9_BEGNNER_GUIDE_SETTING:Ljava/lang/String; = null

.field public static final X9_MCU_MOODEL:I = 0x0

.field public static final X9_MCU_TYPE:I = 0xd

.field public static final X9_SYS_MODEL:I = 0x4

.field public static final X9_SYS_TYPE:I = 0x0

.field static final appType:Lcom/fimi/kernel/Constants$APPType;

.field public static isChangeCameraVisiable:Z = false

.field public static isCheckDeviceConnect:Z = false

.field public static final isDebug:Z = false

.field public static isRefreshMainView:Z = false

.field public static isShowUserProtocol:Z = false

.field public static final isUmengOnline:Z = true

.field public static isUpgradeView:Z

.field public static final manufacturerModes:[Ljava/lang/String;

.field public static panoramaType:I

.field public static final productType:Lcom/fimi/host/common/ProductEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    sget-object v0, Lcom/fimi/kernel/Constants$APPType;->Online:Lcom/fimi/kernel/Constants$APPType;

    sput-object v0, Lcom/fimi/kernel/Constants;->appType:Lcom/fimi/kernel/Constants$APPType;

    .line 15
    sput-boolean v3, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 18
    sput-boolean v2, Lcom/fimi/kernel/Constants;->isChangeCameraVisiable:Z

    .line 19
    sput-boolean v2, Lcom/fimi/kernel/Constants;->isUpgradeView:Z

    .line 20
    sput-boolean v3, Lcom/fimi/kernel/Constants;->isCheckDeviceConnect:Z

    .line 21
    sput-boolean v3, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    .line 23
    sget-object v0, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    sput-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    .line 24
    sput v2, Lcom/fimi/kernel/Constants;->panoramaType:I

    .line 50
    const/16 v0, 0xe

    sput v0, Lcom/fimi/kernel/Constants;->CRC16_LENGTH:I

    .line 51
    const/16 v0, 0x23

    sput v0, Lcom/fimi/kernel/Constants;->LogFileSize:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsungSM-A9000"

    aput-object v1, v0, v2

    const-string/jumbo v1, "xiaomiRedmi Note 5A"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/kernel/Constants;->manufacturerModes:[Ljava/lang/String;

    .line 56
    const-string v0, "support4k_key"

    sput-object v0, Lcom/fimi/kernel/Constants;->SUPPORT4K_KEY:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "x9_begnner_guide"

    sput-object v0, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "x9_begnner_guide_setting"

    sput-object v0, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE_SETTING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFactoryApp()Z
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/fimi/kernel/Constants;->appType:Lcom/fimi/kernel/Constants$APPType;

    sget-object v1, Lcom/fimi/kernel/Constants$APPType;->Factory:Lcom/fimi/kernel/Constants$APPType;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/Constants$APPType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTaggingModels()Z
    .locals 7

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "modelTag":Z
    sget-object v3, Lcom/fimi/kernel/Constants;->manufacturerModes:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 123
    .local v1, "string":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const/4 v0, 0x1

    .line 130
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    return v0

    .line 127
    .restart local v1    # "string":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
