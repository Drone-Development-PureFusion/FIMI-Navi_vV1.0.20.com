.class public Lcom/fimi/x8sdk/command/FcCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "FcCollection.java"


# static fields
.field public static final MSG_ATUO_BATTERRY:B = 0x5t

.field public static final MSG_BLACK_BOX_30:B = 0x30t

.field public static final MSG_BLACK_BOX_31:B = 0x31t

.field public static final MSG_BLACK_BOX_32:B = 0x32t

.field public static final MSG_CHECK_IMU:B = 0x8t

.field public static final MSG_CLOUD_CALIBRATION:B = 0x2ct

.field public static final MSG_CLOUD_CALIBRATION_CHECK:B = 0x2dt

.field public static final MSG_FC_AUTO_LAND:B = 0x15t

.field public static final MSG_FC_AUTO_LAND_EXIT:B = 0x18t

.field public static final MSG_FC_AUTO_NAVIGATION_STATE:B = 0x1t

.field public static final MSG_FC_AUTO_TAKE_OFF:B = 0x10t

.field public static final MSG_FC_AUTO_TAKE_OFF_EXIT:B = 0x13t

.field public static final MSG_FC_ERRCODE:B = 0x4t

.field public static final MSG_FC_HEART:B = 0x1t

.field public static final MSG_FC_POINT_2_POINT_EXCUTE:B = 0x30t

.field public static final MSG_FC_POINT_2_POINT_EXITE:B = 0x33t

.field public static final MSG_FC_POINT_2_POINT_PAUSE:B = 0x31t

.field public static final MSG_FC_POINT_2_POINT_RESUME:B = 0x32t

.field public static final MSG_FC_SIGNAL_STATE:B = 0x3t

.field public static final MSG_FC_SPORT_STATE:B = 0x2t

.field public static final MSG_GET_CALI:B = 0x6t

.field public static final MSG_GET_FC_AI_FOLLOW_ENABLE_BACK:B = 0xbt

.field public static final MSG_GET_FC_PARAM:B = 0x6t

.field public static final MSG_GET_FC_POINT_2_POINT:B = 0x35t

.field public static final MSG_GET_FOLLOW_MODLE:B = 0x56t

.field public static final MSG_GET_FOLLOW_SPEED:B = 0x59t

.field public static final MSG_GET_GRAVITATION_PRAMETER:B = 0x75t

.field public static final MSG_GET_IMU:B = 0x7t

.field public static final MSG_GET_LINE_SET_POINTS:B = 0x26t

.field public static final MSG_GET_LINE_SET_POINTSACTION:B = 0x27t

.field public static final MSG_GET_LOSTACTION:B = 0xdt

.field public static final MSG_GET_RETURN_HEIGHT:B = 0x9t

.field public static final MSG_GET_SCREW_PRAMETER:B = 0x68t

.field public static final MSG_GET_SPORT_MODE:B = 0x4t

.field public static final MSG_GET_SURROUND_CIRCLE_DOT:B = 0x45t

.field public static final MSG_GET_SURROUND_DEVICE_ORIENTATION:B = 0x49t

.field public static final MSG_GET_SURROUND_SPEED:B = 0x47t

.field public static final MSG_GROUP_CAMERA:B = 0x2t

.field public static final MSG_GROUP_FC_BLACK_BOX:B = 0xat

.field public static final MSG_GROUP_FC_CTR:B = 0x4t

.field public static final MSG_GROUP_FC_GIMBAL:B = 0x9t

.field public static final MSG_GROUP_FC_MAINTENANCE:B = 0xdt

.field public static final MSG_GROUP_FC_NAVI:B = 0x3t

.field public static final MSG_GROUP_FC_NOFLY:B = 0x11t

.field public static final MSG_GROUP_FC_TELEMETRY:B = 0xct

.field public static final MSG_GROUP_FC_TIME:B = 0x8t

.field public static final MSG_GROUP_FORMAT:B = 0x1t

.field public static final MSG_GROUP_RC:B = 0xet

.field public static final MSG_GROUP_RC_CALI:B = 0xbt

.field public static final MSG_GROUP_RC_CTRL:B = 0xbt

.field public static final MSG_HOME_INFO:B = 0x6t

.field public static final MSG_ID_AUTOSEND_PANORAMA_PHOTOGRAPH:B = 0x6at

.field public static final MSG_ID_GET_AP_MODE:B = 0x15t

.field public static final MSG_ID_GET_AUTO_HOME:B = 0x28t

.field public static final MSG_ID_GET_BRAKE_SENS:B = 0x24t

.field public static final MSG_ID_GET_FORMAT_STORAGE:B = 0x15t

.field public static final MSG_ID_GET_LOW_POWER_OPERATION:B = 0x17t

.field public static final MSG_ID_GET_OPTIC_FLOW:B = 0xft

.field public static final MSG_ID_GET_PILOT_MODE:B = 0x2t

.field public static final MSG_ID_GET_RC_CTRL_MODE:B = 0x12t

.field public static final MSG_ID_GET_RC_ChANGE_DIRECTION:B = 0x13t

.field public static final MSG_ID_GET_ROCKER_EXP:B = 0x1at

.field public static final MSG_ID_GET_SENSITIVITY:B = 0x26t

.field public static final MSG_ID_GET_YAW_TRIP:B = 0x22t

.field public static final MSG_ID_ROCKER_INFO:B = 0x2t

.field public static final MSG_ID_SET_AP_MODE:B = 0xat

.field public static final MSG_ID_SET_AP_MODE_RESTART:B = 0xft

.field public static final MSG_ID_SET_AUTO_HOME:B = 0x27t

.field public static final MSG_ID_SET_BRAKE_SENS:B = 0x23t

.field public static final MSG_ID_SET_DISABLE_TRIPOD:B = 0x2at

.field public static final MSG_ID_SET_DISENABLE_AERAILSHOT:B = 0x2ct

.field public static final MSG_ID_SET_ENABLE_AERAILSHOT:B = 0x2bt

.field public static final MSG_ID_SET_ENABLE_TRIPOD:B = 0x29t

.field public static final MSG_ID_SET_FORMAT_STORAGE:B = 0xct

.field public static final MSG_ID_SET_LOW_POWER_OPERATION:B = 0x18t

.field public static final MSG_ID_SET_OPTIC_FLOW:B = 0xet

.field public static final MSG_ID_SET_PANORAMA_PHOTOGRAPH:B = 0x69t

.field public static final MSG_ID_SET_PANORAMA_PHOTOGRAPH_STOP:B = 0x6ft

.field public static final MSG_ID_SET_PILOT_MODE:B = 0x1t

.field public static final MSG_ID_SET_RC_CTRL_MODE:B = 0x11t

.field public static final MSG_ID_SET_RC_FIVE_KEY:B = 0x10t

.field public static final MSG_ID_SET_ROCKER_EXP:B = 0x19t

.field public static final MSG_ID_SET_SENSITIVITY:B = 0x25t

.field public static final MSG_ID_SET_YAW_TRIP:B = 0x21t

.field public static final MSG_LOCK_MOTOR_STATE:B = 0x36t

.field public static final MSG_NFZ_STATE:B = 0x3t

.field public static final MSG_PILOT_MODE_FACTORY:B = 0x3t

.field public static final MSG_PILOT_MODE_PRIMARY:B = 0x0t

.field public static final MSG_PILOT_MODE_SEMI_SENIOR:B = 0x1t

.field public static final MSG_PILOT_MODE_SENIOR:B = 0x2t

.field public static final MSG_RC_CHECK_CMD:B = 0xft

.field public static final MSG_RC_SET_CMD:B = 0xet

.field public static final MSG_RC_STATE_CMD:B = 0x4t

.field public static final MSG_REFUSE_NO_FLY:B = 0x1t

.field public static final MSG_REQ_NO_FLY_NORMAL:B = 0x2t

.field public static final MSG_REST_SYSTEM_PARAMS:B = -0x77t

.field public static final MSG_SET_ACCURATE_LANDING:B = 0x6ct

.field public static final MSG_SET_AUTO_PHOTO_EXCUTE:B = 0x38t

.field public static final MSG_SET_AUTO_PHOTO_EXIT:B = 0x3bt

.field public static final MSG_SET_AUTO_PHOTO_PAUSE:B = 0x39t

.field public static final MSG_SET_AUTO_PHOTO_RESUME:B = 0x3at

.field public static final MSG_SET_AUTO_PHOTO_VALUE:B = 0x3ct

.field public static final MSG_SET_CALI:B = 0x5t

.field public static final MSG_SET_DISENABLE_ACCURATE:B = 0x34t

.field public static final MSG_SET_DISENABLE_FIXWING:B = 0x30t

.field public static final MSG_SET_DISENABLE_HEADING_FREE:B = 0x2et

.field public static final MSG_SET_ENABLE_ACCURATE:B = 0x33t

.field public static final MSG_SET_ENABLE_FIXWING:B = 0x2ft

.field public static final MSG_SET_ENABLE_FIXWING_STATE:B = 0x31t

.field public static final MSG_SET_ENDABLE_HEADING_FREE:B = 0x2dt

.field public static final MSG_SET_FC_AI_FOLLOW_ENABLE_BACK:B = 0xat

.field public static final MSG_SET_FC_PARAM:B = 0x5t

.field public static final MSG_SET_FC_POINT_2_POINT:B = 0x34t

.field public static final MSG_SET_FC_RETURE_HOME_EXCUTE:B = 0x1at

.field public static final MSG_SET_FC_RETURE_HOME_EXITE:B = 0x1dt

.field public static final MSG_SET_FC_RETURE_HOME_PAUSE:B = 0x1bt

.field public static final MSG_SET_FC_RETURE_HOME_RESUME:B = 0x1ct

.field public static final MSG_SET_FOLLOW_CLOSE:B = 0x61t

.field public static final MSG_SET_FOLLOW_ERROR_CODE:B = 0x57t

.field public static final MSG_SET_FOLLOW_EXCUTE:B = 0x50t

.field public static final MSG_SET_FOLLOW_EXIT:B = 0x53t

.field public static final MSG_SET_FOLLOW_MODLE:B = 0x55t

.field public static final MSG_SET_FOLLOW_NOTITY_FC:B = 0x62t

.field public static final MSG_SET_FOLLOW_OPEN:B = 0x60t

.field public static final MSG_SET_FOLLOW_PAUSE:B = 0x51t

.field public static final MSG_SET_FOLLOW_RESUME:B = 0x52t

.field public static final MSG_SET_FOLLOW_SPEED:B = 0x58t

.field public static final MSG_SET_FOLLOW_STANDBY:B = 0x54t

.field public static final MSG_SET_GET_ACCURATE:B = 0x35t

.field public static final MSG_SET_GRAVITATION_EXITE:B = 0x73t

.field public static final MSG_SET_GRAVITATION_PAUSE:B = 0x71t

.field public static final MSG_SET_GRAVITATION_PRAMETER:B = 0x74t

.field public static final MSG_SET_GRAVITATION_RESUME:B = 0x72t

.field public static final MSG_SET_GRAVITATION_START:B = 0x70t

.field public static final MSG_SET_HEADING_FREE_UPDATE:B = 0x32t

.field public static final MSG_SET_HOME_POINT:B = 0x5at

.field public static final MSG_SET_LINE_EXCUTE:B = 0x20t

.field public static final MSG_SET_LINE_EXIT:B = 0x23t

.field public static final MSG_SET_LINE_PAUSE:B = 0x21t

.field public static final MSG_SET_LINE_RESUME:B = 0x22t

.field public static final MSG_SET_LINE_SET_POINTS:B = 0x24t

.field public static final MSG_SET_LINE_SET_POINTSACTION:B = 0x25t

.field public static final MSG_SET_LOSTACTION:B = 0xct

.field public static final MSG_SET_RETURN_HEIGHT:B = 0x8t

.field public static final MSG_SET_SCREW_EXITE:B = 0x66t

.field public static final MSG_SET_SCREW_PAUSE:B = 0x64t

.field public static final MSG_SET_SCREW_PRAMETER:B = 0x67t

.field public static final MSG_SET_SCREW_RESUME:B = 0x65t

.field public static final MSG_SET_SCREW_START:B = 0x63t

.field public static final MSG_SET_SPORT_MODE:B = 0x3t

.field public static final MSG_SET_SURROUND_CIRCLE_DOT:B = 0x44t

.field public static final MSG_SET_SURROUND_DEVICE_ORIENTATION:B = 0x48t

.field public static final MSG_SET_SURROUND_EXCUTE:B = 0x40t

.field public static final MSG_SET_SURROUND_EXIT:B = 0x43t

.field public static final MSG_SET_SURROUND_PAUSE:B = 0x41t

.field public static final MSG_SET_SURROUND_RESUME:B = 0x42t

.field public static final MSG_SET_SURROUND_SPEED:B = 0x46t

.field public static final MSG_SYNC_FC_GPS:B = 0x5t

.field public static final MSG_SYNC_FC_PRESSURE:B = 0x6t

.field public static final MSG_SYNC_FC_TIME:B = 0x4t

.field public static final MSG_SYS_CTRL_MODE:I = 0x6b

.field public static final MSG_UPDATE_SURROUND_STATE:B = 0x4at

.field public static final RC_MODE_AMERICAN:B = 0x1t

.field public static final RC_MODE_CHINESE:B = 0x3t

.field public static final RC_MODE_JAPANESE:B = 0x2t

.field public static final SENSORTYPE_IMUM:I = 0x1

.field public static final SENSORTYPE_IMUS:I = 0x2

.field public static X8_FC_SET_AP_MODE_CE:B = 0x0t

.field public static X8_FC_SET_AP_MODE_FCC:B = 0x0t

.field public static final X8_MSG_RC_CANCEL_CODE:B = 0x3t

.field public static final X8_MSG_RC_MATCH_CODE:B = 0x1t

.field public static final X8_MSG_RC_MATCH_RT:B = 0x2t


# instance fields
.field private aiLinePoint:Lcom/fimi/kernel/connect/BaseCommand;

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    sput-byte v0, Lcom/fimi/x8sdk/command/FcCollection;->X8_FC_SET_AP_MODE_CE:B

    .line 239
    const/4 v0, 0x1

    sput-byte v0, Lcom/fimi/x8sdk/command/FcCollection;->X8_FC_SET_AP_MODE_FCC:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 282
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .param p2, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/fimi/x8sdk/command/FcCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 287
    iput-object p2, p0, Lcom/fimi/x8sdk/command/FcCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 288
    return-void
.end method

.method private getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "moduleName"    # B

    .prologue
    .line 291
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 292
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 293
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 294
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 295
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 296
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    iget-short v3, p0, Lcom/fimi/x8sdk/command/FcCollection;->seqIndex:S

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 297
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 298
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FcCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 299
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FcCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 300
    return-object v1
.end method

.method private getFCBase(BI)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "moduleName"    # B
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 304
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 305
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    int-to-byte v3, p2

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 306
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 307
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 308
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 309
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    iget-short v3, p0, Lcom/fimi/x8sdk/command/FcCollection;->seqIndex:S

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 310
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 311
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FcCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 312
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FcCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 313
    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setReSendNum(I)V

    .line 314
    return-object v1
.end method


# virtual methods
.method public RCMatchOrCancelCode(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "doneType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1399
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1400
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1401
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1402
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xe

    aput-byte v4, v2, v0

    .line 1403
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1404
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1405
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1406
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1407
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1408
    return-object v3
.end method

.method public checkCloudCalibrationCmd()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1380
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1381
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1382
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1383
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 1384
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x2d

    aput-byte v4, v2, v1

    .line 1385
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1386
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1387
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1388
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1389
    return-object v3
.end method

.method public checkIMUException(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "sensorType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1331
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1332
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1333
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1334
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1335
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x8

    aput-byte v4, v2, v1

    .line 1336
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1337
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1338
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1339
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1340
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1341
    return-object v3
.end method

.method public checkIMUInfoCmd()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    .line 1317
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1318
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1319
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1320
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1321
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x7

    aput-byte v4, v2, v1

    .line 1322
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1323
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1324
    return-object v3
.end method

.method public checkMatchCodeProgress()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1417
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1418
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1419
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1420
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xe

    aput-byte v4, v2, v0

    .line 1421
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    aput-byte v4, v2, v1

    .line 1422
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1423
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1424
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1425
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1426
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1427
    return-object v3
.end method

.method public checkRCCalibration()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1445
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1446
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1447
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1448
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xb

    aput-byte v4, v2, v0

    .line 1449
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v1

    .line 1450
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1451
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1452
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1453
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1454
    return-object v3
.end method

.method public getAccurateLanding()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 2266
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2267
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 2268
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 2269
    const/4 v2, 0x1

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    .line 2270
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2271
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 2272
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2273
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2274
    return-object v1
.end method

.method public getAiFollowEnableBack()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 677
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 678
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 679
    .local v0, "payload":[B
    const/4 v2, 0x4

    aput-byte v2, v0, v4

    .line 680
    const/4 v2, 0x1

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    .line 681
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 682
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 683
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 684
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 685
    return-object v1
.end method

.method public getAiFollowModle()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 601
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 602
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 603
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 604
    const/4 v2, 0x1

    const/16 v3, 0x56

    aput-byte v3, v0, v2

    .line 605
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 606
    aput-byte v4, v0, v5

    .line 608
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 609
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 610
    return-object v1
.end method

.method public getAiFollowSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 641
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 642
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 643
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 644
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 645
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x59

    aput-byte v4, v2, v1

    .line 646
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 647
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 648
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 649
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 650
    return-object v3
.end method

.method public getAiLinePoint(I)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 1011
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1012
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 1013
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 1014
    const/4 v2, 0x1

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    .line 1015
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1016
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1017
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1018
    return-object v1
.end method

.method public getAiLinePointsAction(I)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 978
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 979
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 980
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 981
    const/4 v2, 0x1

    const/16 v3, 0x27

    aput-byte v3, v0, v2

    .line 982
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 983
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 984
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 985
    return-object v1
.end method

.method public getAiSurroundOrientation()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 854
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 855
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 856
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 857
    const/4 v2, 0x1

    const/16 v3, 0x49

    aput-byte v3, v0, v2

    .line 858
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 859
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 860
    return-object v1
.end method

.method public getAiSurroundPoint()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 865
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 866
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 867
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 868
    const/4 v2, 0x1

    const/16 v3, 0x45

    aput-byte v3, v0, v2

    .line 869
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 870
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 871
    return-object v1
.end method

.method public getAiSurroundSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 843
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 844
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 845
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 846
    const/4 v2, 0x1

    const/16 v3, 0x47

    aput-byte v3, v0, v2

    .line 847
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 848
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 849
    return-object v1
.end method

.method public getAircrftCalibrationState(II)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 7
    .param p1, "sensorType"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 1099
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4, v5}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1100
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1101
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1102
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1103
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 1104
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1105
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1106
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1107
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1108
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1109
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1110
    const v4, 0xea60

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setOutTime(I)V

    .line 1111
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setReSendNum(I)V

    .line 1112
    return-object v3
.end method

.method public getApMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1239
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1240
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1241
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1242
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1243
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x15

    aput-byte v4, v2, v1

    .line 1244
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1245
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1246
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1247
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1248
    return-object v3
.end method

.method public getAutoHomePoint()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1901
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1902
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1903
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1904
    const/4 v2, 0x1

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    .line 1905
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1906
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1907
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1908
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1909
    return-object v1
.end method

.method public getBrakeSens()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1595
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1596
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1597
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1598
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1599
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x24

    aput-byte v4, v2, v1

    .line 1600
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1601
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1602
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1603
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1604
    return-object v3
.end method

.method public getCalibrationState(II)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 7
    .param p1, "sensorType"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 1116
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1117
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1118
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1119
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1120
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 1121
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1122
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1123
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1124
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1125
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1126
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1127
    return-object v3
.end method

.method public getCheckIMUStatus(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "sensorType"    # I

    .prologue
    .line 1345
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1346
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 1347
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    .line 1348
    const/4 v2, 0x1

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    .line 1349
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1350
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1351
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1352
    return-object v1
.end method

.method public getCtrlMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1874
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1875
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 1876
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1877
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xb

    aput-byte v4, v2, v0

    .line 1878
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x12

    aput-byte v4, v2, v1

    .line 1879
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1880
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1881
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1882
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1883
    return-object v3
.end method

.method public getFcParam(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "parmIndex"    # B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 540
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 541
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 542
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 543
    const/4 v2, 0x1

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 544
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 545
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 546
    aput-byte p1, v0, v5

    .line 547
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 548
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 549
    return-object v1
.end method

.method public getFormatStorage(I)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5
    .param p1, "devid"    # I

    .prologue
    .line 1152
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1153
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x3

    new-array v2, v4, [B

    .line 1154
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1155
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x1

    aput-byte v4, v2, v0

    .line 1156
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x15

    aput-byte v4, v2, v1

    .line 1157
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1158
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1159
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1160
    return-object v3
.end method

.method public getGravitationPrameter()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2033
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2034
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2035
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2036
    const/4 v2, 0x1

    const/16 v3, 0x75

    aput-byte v3, v0, v2

    .line 2037
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2038
    aput-byte v4, v0, v5

    .line 2039
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2040
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2041
    return-object v1
.end method

.method public getIMUInfoCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "imuType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1301
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1302
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1303
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1304
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xc

    aput-byte v4, v2, v0

    .line 1305
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x7

    aput-byte v4, v2, v1

    .line 1306
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1307
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1308
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1309
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1310
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1311
    return-object v3
.end method

.method public getLostAction()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 497
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 498
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 499
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 500
    const/4 v2, 0x1

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    .line 501
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 502
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 503
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 504
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 505
    return-object v1
.end method

.method public getLowPowerOperation()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1285
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1286
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1287
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1288
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1289
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x17

    aput-byte v4, v2, v1

    .line 1290
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1291
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1292
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1293
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1294
    return-object v3
.end method

.method public getNoFlyNormal()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 382
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 383
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 384
    .local v0, "payload":[B
    const/16 v2, 0x11

    aput-byte v2, v0, v3

    .line 385
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 386
    aput-byte v3, v0, v4

    .line 387
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 388
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 389
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 390
    return-object v1
.end method

.method public getOpticFlow()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1484
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1485
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1486
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1487
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1488
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v1

    .line 1489
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1490
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1491
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1492
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1493
    return-object v3
.end method

.method public getPilotMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 420
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 421
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v5, [B

    .line 422
    .local v0, "payload":[B
    aput-byte v5, v0, v3

    .line 423
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 424
    aput-byte v3, v0, v4

    .line 425
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 426
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 427
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 428
    return-object v1
.end method

.method public getReturnHeight()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 459
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 460
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 461
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 462
    const/4 v2, 0x1

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    .line 463
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 464
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 465
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 466
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 467
    return-object v1
.end method

.method public getRockerExp()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1799
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1800
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1801
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1802
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1803
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x1a

    aput-byte v4, v2, v1

    .line 1804
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1805
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1806
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1807
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1808
    return-object v3
.end method

.method public getScrewPrameter()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2161
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2162
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2163
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2164
    const/4 v2, 0x1

    const/16 v3, 0x68

    aput-byte v3, v0, v2

    .line 2165
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2166
    aput-byte v4, v0, v5

    .line 2167
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2168
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2170
    return-object v1
.end method

.method public getSensitivity()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1554
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1555
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1556
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1557
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1558
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x26

    aput-byte v4, v2, v1

    .line 1559
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1560
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1561
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1562
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1563
    return-object v3
.end method

.method public getSportMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1733
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1734
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1735
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1736
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1737
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 1738
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1739
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1740
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1741
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1742
    return-object v3
.end method

.method public getYawTrip()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1636
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1637
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v6, [B

    .line 1638
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1639
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1640
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x22

    aput-byte v4, v2, v1

    .line 1641
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1642
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1643
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1644
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1645
    return-object v3
.end method

.method public land(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "cmdID"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 345
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 346
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 347
    .local v0, "payload":[B
    aput-byte v4, v0, v3

    .line 348
    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 349
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 350
    aput-byte v3, v0, v4

    .line 351
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 352
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 354
    return-object v1
.end method

.method public rcCalibration(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "cmdType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1431
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1432
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1433
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1434
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xb

    aput-byte v4, v2, v0

    .line 1435
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xe

    aput-byte v4, v2, v1

    .line 1436
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1437
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1438
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1439
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1440
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1441
    return-object v3
.end method

.method public reponseNoFlyNormal()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 365
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 366
    .local v0, "payload":[B
    const/16 v2, 0x11

    aput-byte v2, v0, v3

    .line 367
    aput-byte v4, v0, v4

    .line 368
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 369
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 370
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 371
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 372
    return-object v1
.end method

.method public restSystemParams()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1676
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1677
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1678
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1679
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1680
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, -0x77

    aput-byte v4, v2, v1

    .line 1681
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1682
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1683
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x1

    aput-byte v4, v2, v0

    .line 1684
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1685
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1686
    return-object v3
.end method

.method public setAccurateLanding(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "enable"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2247
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2248
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v5, [B

    .line 2249
    .local v0, "payload":[B
    aput-byte v5, v0, v3

    .line 2250
    if-ne p1, v4, :cond_0

    .line 2251
    const/16 v2, 0x33

    aput-byte v2, v0, v4

    .line 2255
    :goto_0
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 2256
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 2257
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2258
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2259
    return-object v1

    .line 2253
    :cond_0
    const/16 v2, 0x34

    aput-byte v2, v0, v4

    goto :goto_0
.end method

.method public setAiAutoPhotoExcute()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 1044
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1045
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 1046
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 1047
    const/4 v2, 0x1

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    .line 1048
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1049
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1050
    return-object v1
.end method

.method public setAiAutoPhotoExit()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 1055
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1056
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 1057
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 1058
    const/4 v2, 0x1

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    .line 1059
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1060
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1061
    return-object v1
.end method

.method public setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6
    .param p1, "aiAutoPhotoValue"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;

    .prologue
    const/4 v5, 0x0

    .line 1023
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1024
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0xb

    new-array v2, v4, [B

    .line 1025
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1026
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 1027
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x3c

    aput-byte v4, v2, v1

    .line 1028
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1029
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1030
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->angle:I

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1031
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->angle:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1032
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->routeLength:I

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1033
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->routeLength:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1034
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->speed:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1035
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->config:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1036
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->mode:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1037
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1038
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1039
    return-object v3
.end method

.method public setAiFollowCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "msgCmd"    # I

    .prologue
    .line 556
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 557
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 558
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 559
    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 560
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 561
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 562
    return-object v1
.end method

.method public setAiFollowEnableBack(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "flag"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 659
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 660
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 661
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 662
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 663
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 664
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 665
    int-to-byte v2, p1

    aput-byte v2, v0, v5

    .line 666
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 667
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 668
    return-object v1
.end method

.method public setAiFollowModle(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 582
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 583
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 584
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 585
    const/4 v2, 0x1

    const/16 v3, 0x55

    aput-byte v3, v0, v2

    .line 586
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 587
    aput-byte v4, v0, v5

    .line 588
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 590
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 591
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 592
    return-object v1
.end method

.method public setAiFollowPoint2Point(DDII)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 9
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "altitude"    # I
    .param p6, "speed"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 699
    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v5

    .line 700
    .local v5, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v6, 0x19

    new-array v4, v6, [B

    .line 701
    .local v4, "payload":[B
    const/4 v2, 0x0

    .line 702
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    const/4 v6, 0x3

    aput-byte v6, v4, v2

    .line 703
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v6, 0x34

    aput-byte v6, v4, v3

    .line 704
    add-int/lit8 v2, v2, 0x2

    .line 705
    invoke-static {p1, p2}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 706
    .local v0, "buffer":[B
    invoke-static {v0, v7, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    add-int/lit8 v2, v2, 0x8

    .line 708
    invoke-static {p3, p4}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 709
    invoke-static {v0, v7, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    add-int/lit8 v2, v2, 0x8

    .line 711
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v6, p5, 0x0

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 712
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v6, p5, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 713
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-byte v7, v4, v2

    .line 714
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 715
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    int-to-byte v6, p6

    aput-byte v6, v4, v2

    .line 717
    invoke-virtual {v5, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 718
    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 719
    invoke-static {v4}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "hex":Ljava/lang/String;
    return-object v5
.end method

.method public setAiFollowPoint2PointExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "msgId"    # B

    .prologue
    .line 726
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 727
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 728
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 729
    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 730
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 731
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 732
    return-object v1
.end method

.method public setAiFollowSpeed(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 621
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 622
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x6

    new-array v2, v4, [B

    .line 623
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 624
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 625
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x58

    aput-byte v4, v2, v1

    .line 626
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 627
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 628
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v4, p1, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 629
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 630
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 631
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 632
    return-object v3
.end method

.method public setAiFollowVcEnable(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "msgCmd"    # I

    .prologue
    .line 569
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 570
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 571
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 572
    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 573
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 574
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 575
    return-object v1
.end method

.method public setAiLineExcute()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 990
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 991
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 992
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 993
    const/4 v2, 0x1

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    .line 994
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 995
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 996
    return-object v1
.end method

.method public setAiLineExite()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 1001
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1002
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 1003
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 1004
    const/4 v2, 0x1

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    .line 1005
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1006
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1007
    return-object v1
.end method

.method public setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 11
    .param p1, "points"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;

    .prologue
    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 887
    sget-object v8, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v8}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v8

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v5

    .line 889
    .local v5, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v8, 0x3a

    new-array v4, v8, [B

    .line 890
    .local v4, "payload":[B
    const/4 v2, 0x0

    .line 891
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    const/4 v8, 0x3

    aput-byte v8, v4, v2

    .line 892
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v8, 0x24

    aput-byte v8, v4, v3

    .line 893
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-byte v7, v4, v2

    .line 894
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 895
    const/4 v1, 0x0

    .line 896
    .local v1, "buffer":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->nPos:I

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 897
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->count:I

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 898
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-byte v7, v4, v2

    .line 899
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 900
    iget-wide v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->longitude:D

    invoke-static {v8, v9}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v1

    .line 901
    invoke-static {v1, v7, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    add-int/lit8 v2, v2, 0x8

    .line 903
    iget-wide v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->latitude:D

    invoke-static {v8, v9}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v1

    .line 904
    invoke-static {v1, v7, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    add-int/lit8 v2, v2, 0x8

    .line 906
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitude:I

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 907
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitude:I

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 908
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->angle:F

    float-to-int v8, v8

    mul-int/lit8 v0, v8, 0x64

    .line 909
    .local v0, "angle1":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, v0, 0x0

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 910
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 911
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->gimbalPitch:I

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 912
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->gimbalPitch:I

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 913
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->speed:I

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 914
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 915
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-byte v7, v4, v2

    .line 916
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 918
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->autoRecord:I

    shl-int/lit8 v8, v8, 0x4

    iget v9, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->coordinatedTurnOff:I

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    iget v9, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->pioEnbale:I

    or-int/2addr v8, v9

    or-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    .line 919
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->orientation:I

    iget v9, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->rotation:I

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 920
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->orientation:I

    if-ne v8, v6, :cond_0

    :goto_0
    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 921
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v4, v3

    .line 922
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v6, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->compeletEvent:I

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 923
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v6, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->disconnectEvent:I

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 925
    iget-wide v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->longitudePIO:D

    invoke-static {v8, v9}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v1

    .line 926
    invoke-static {v1, v7, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    add-int/lit8 v2, v2, 0x8

    .line 928
    iget-wide v8, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->latitudePIO:D

    invoke-static {v8, v9}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v1

    .line 929
    invoke-static {v1, v7, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    add-int/lit8 v2, v2, 0x8

    .line 931
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget v6, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitudePIO:I

    shr-int/lit8 v6, v6, 0x0

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 932
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v6, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitudePIO:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 934
    invoke-virtual {v5, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 935
    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 936
    return-object v5

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    move v6, v7

    .line 920
    goto :goto_0
.end method

.method public setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "action"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;

    .prologue
    const/4 v5, 0x0

    .line 945
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 947
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x38

    new-array v2, v4, [B

    .line 948
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 949
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 950
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x25

    aput-byte v4, v2, v1

    .line 951
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 952
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 954
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->pos:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 955
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->count:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 956
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 957
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 958
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 959
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd1:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 961
    add-int/lit8 v0, v0, 0xe

    .line 962
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 963
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 964
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v4, p1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para1:I

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 966
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 967
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 968
    return-object v3
.end method

.method public setAiRetureHome(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "msgId"    # I

    .prologue
    .line 876
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 877
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 878
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 879
    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 880
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 881
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 882
    return-object v1
.end method

.method public setAiSurroundExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "msgId"    # B

    .prologue
    .line 737
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 738
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 739
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 740
    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 741
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 742
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 743
    return-object v1
.end method

.method public setAiSurroundOrientation(BI)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "msgId"    # B
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 825
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 826
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 827
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 828
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 829
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte p1, v2, v1

    .line 830
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 831
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 832
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v0

    .line 833
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 834
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 835
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 836
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 837
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 838
    return-object v3
.end method

.method public setAiSurroundPoint(IDDFDDFI)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 10
    .param p1, "msgId"    # I
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "altitude"    # F
    .param p7, "longitudeTakeoff"    # D
    .param p9, "latitudeTakeoff"    # D
    .param p11, "altitudeTakeoff"    # F
    .param p12, "type"    # I

    .prologue
    .line 756
    sget-object v8, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v8}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v8

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v7

    .line 757
    .local v7, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v8, 0x2c

    new-array v6, v8, [B

    .line 758
    .local v6, "payload":[B
    const/4 v4, 0x0

    .line 759
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    const/4 v8, 0x3

    aput-byte v8, v6, v4

    .line 760
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    int-to-byte v8, p1

    aput-byte v8, v6, v5

    .line 761
    add-int/lit8 v4, v4, 0x2

    .line 762
    invoke-static {p2, p3}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v2

    .line 763
    .local v2, "buffer":[B
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v8, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    add-int/lit8 v4, v4, 0x8

    .line 765
    invoke-static {p4, p5}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v2

    .line 766
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v8, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    add-int/lit8 v4, v4, 0x8

    .line 768
    const/high16 v8, 0x41200000    # 10.0f

    mul-float v8, v8, p6

    float-to-int v1, v8

    .line 769
    .local v1, "alt":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    shr-int/lit8 v8, v1, 0x0

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 770
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 771
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/4 v8, 0x0

    aput-byte v8, v6, v4

    .line 772
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/4 v8, 0x0

    aput-byte v8, v6, v5

    .line 774
    invoke-static/range {p7 .. p8}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v2

    .line 775
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v8, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    add-int/lit8 v4, v4, 0x8

    .line 777
    invoke-static/range {p9 .. p10}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v2

    .line 778
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v8, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    add-int/lit8 v4, v4, 0x8

    .line 780
    const/high16 v8, 0x41200000    # 10.0f

    mul-float v8, v8, p11

    float-to-int v1, v8

    .line 781
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    shr-int/lit8 v8, v1, 0x0

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 782
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 783
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    move/from16 v0, p12

    int-to-byte v8, v0

    aput-byte v8, v6, v4

    .line 784
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/4 v8, 0x0

    aput-byte v8, v6, v5

    .line 785
    invoke-virtual {v7, v6}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 786
    invoke-virtual {v7}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 787
    invoke-static {v6}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "hex":Ljava/lang/String;
    return-object v7
.end method

.method public setAiSurroundSpeed(BI)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "msgId"    # B
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 800
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 801
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 802
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 803
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 804
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte p1, v2, v1

    .line 805
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 806
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 807
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v4, p2, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 808
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 809
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 810
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 811
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 812
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 814
    return-object v3
.end method

.method public setAircrftCalibrationStart(III)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1082
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1083
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x7

    new-array v2, v4, [B

    .line 1084
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1085
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1086
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x5

    aput-byte v4, v2, v1

    .line 1087
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1088
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1089
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1090
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1091
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p3

    aput-byte v4, v2, v0

    .line 1092
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1093
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1094
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setOutTime(I)V

    .line 1095
    return-object v3
.end method

.method public setApMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "mode"    # B

    .prologue
    const/4 v5, 0x0

    .line 1203
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1204
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1205
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1206
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xe

    aput-byte v4, v2, v0

    .line 1207
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xa

    aput-byte v4, v2, v1

    .line 1208
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1209
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1210
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte p1, v2, v0

    .line 1211
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1212
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1213
    return-object v3
.end method

.method public setApModeRestart()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1221
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1222
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1223
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1224
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xe

    aput-byte v4, v2, v0

    .line 1225
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v1

    .line 1226
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1227
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1228
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x1

    aput-byte v4, v2, v0

    .line 1229
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1230
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1231
    return-object v3
.end method

.method public setAttitudeSensitivity(II)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "rollPercent"    # I
    .param p2, "pitchPercent"    # I

    .prologue
    const/4 v5, 0x0

    .line 1503
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1504
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1505
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1506
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1507
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x25

    aput-byte v4, v2, v1

    .line 1508
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1509
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1511
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 1512
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1513
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v0

    .line 1514
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1515
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1517
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1518
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1519
    return-object v3
.end method

.method public setAutoHomePoint(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "enable"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1888
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1889
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 1890
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 1891
    const/4 v2, 0x1

    const/16 v3, 0x27

    aput-byte v3, v0, v2

    .line 1892
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1893
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1894
    int-to-byte v2, p1

    aput-byte v2, v0, v5

    .line 1895
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1896
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1897
    return-object v1
.end method

.method public setBrakeSens(II)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "rollPercent"    # I
    .param p2, "pitchPercent"    # I

    .prologue
    const/4 v5, 0x0

    .line 1572
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1573
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1574
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1575
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1576
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x23

    aput-byte v4, v2, v1

    .line 1577
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1578
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1579
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 1580
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1581
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v0

    .line 1582
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1583
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1584
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1585
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1586
    return-object v3
.end method

.method public setCalibrationStart(III)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1066
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1067
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x7

    new-array v2, v4, [B

    .line 1068
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1069
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 1070
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x5

    aput-byte v4, v2, v1

    .line 1071
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1072
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1073
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1074
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1075
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p3

    aput-byte v4, v2, v0

    .line 1076
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1077
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1078
    return-object v3
.end method

.method public setCloudCalibrationCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 1361
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1362
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1363
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1364
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 1365
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x2c

    aput-byte v4, v2, v1

    .line 1366
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1367
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1368
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1369
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1370
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1371
    return-object v3
.end method

.method public setCtrlMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "mode"    # B

    .prologue
    const/4 v5, 0x0

    .line 1854
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1855
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1856
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1857
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xb

    aput-byte v4, v2, v0

    .line 1858
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x11

    aput-byte v4, v2, v1

    .line 1859
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1860
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1861
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte p1, v2, v0

    .line 1862
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1863
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1864
    return-object v3
.end method

.method public setDisenableFixwing()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1951
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1952
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1953
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1954
    const/4 v2, 0x1

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    .line 1955
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1956
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1957
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1958
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1959
    return-object v1
.end method

.method public setDisenableHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1990
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1991
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1992
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1993
    const/4 v2, 0x1

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    .line 1994
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1995
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1996
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1997
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1998
    return-object v1
.end method

.method public setEnableAerailShot(I)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5
    .param p1, "enable"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2017
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2018
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 2019
    .local v0, "payload":[B
    const/4 v2, 0x4

    aput-byte v2, v0, v3

    .line 2020
    if-ne p1, v4, :cond_1

    .line 2021
    const/16 v2, 0x2b

    aput-byte v2, v0, v4

    .line 2025
    :cond_0
    :goto_0
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 2026
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 2027
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2028
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2029
    return-object v1

    .line 2022
    :cond_1
    if-nez p1, :cond_0

    .line 2023
    const/16 v2, 0x2c

    aput-byte v2, v0, v4

    goto :goto_0
.end method

.method public setEnableFixwing()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1939
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1940
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1941
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1942
    const/4 v2, 0x1

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    .line 1943
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1944
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1945
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1946
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1947
    return-object v1
.end method

.method public setEnableHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1963
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1964
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1965
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1966
    const/4 v2, 0x1

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    .line 1967
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1968
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1969
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1970
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1971
    return-object v1
.end method

.method public setEnableTripod(I)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6
    .param p1, "enable"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2002
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2003
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v5, [B

    .line 2004
    .local v0, "payload":[B
    aput-byte v5, v0, v3

    .line 2005
    if-ne p1, v4, :cond_1

    .line 2006
    const/16 v2, 0x29

    aput-byte v2, v0, v4

    .line 2010
    :cond_0
    :goto_0
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 2011
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 2012
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2013
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2014
    return-object v1

    .line 2007
    :cond_1
    if-nez p1, :cond_0

    .line 2008
    const/16 v2, 0x2a

    aput-byte v2, v0, v4

    goto :goto_0
.end method

.method public setFcParam(BF)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 9
    .param p1, "paramIndex"    # B
    .param p2, "paramData"    # F

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 517
    const-string v3, "moweiru"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paramData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v2

    .line 519
    .local v2, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v3, 0x9

    new-array v1, v3, [B

    .line 520
    .local v1, "payload":[B
    aput-byte v7, v1, v6

    .line 521
    const/4 v3, 0x1

    aput-byte v8, v1, v3

    .line 522
    const/4 v3, 0x2

    aput-byte v6, v1, v3

    .line 523
    const/4 v3, 0x3

    aput-byte v6, v1, v3

    .line 524
    aput-byte p1, v1, v7

    .line 525
    invoke-static {p2}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 526
    .local v0, "params":[B
    array-length v3, v0

    invoke-static {v0, v6, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 528
    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 529
    return-object v2
.end method

.method public setFormatStorage(II)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "devid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1137
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1138
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x6

    new-array v2, v4, [B

    .line 1139
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1140
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x1

    aput-byte v4, v2, v0

    .line 1141
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0xc

    aput-byte v4, v2, v1

    .line 1142
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1143
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1145
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1146
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1147
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1148
    return-object v3
.end method

.method public setGoBackRockerExp(II)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "rollPercent"    # I
    .param p2, "pitchPercent"    # I

    .prologue
    const/4 v5, 0x0

    .line 1775
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1776
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1777
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1778
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1779
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x19

    aput-byte v4, v2, v1

    .line 1780
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1781
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1782
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 1783
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1784
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v0

    .line 1785
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1786
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1787
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1788
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1789
    return-object v3
.end method

.method public setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 11
    .param p1, "gps"    # Lcom/fimi/x8sdk/entity/GpsInfoCmd;

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 2365
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5, v8}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v4

    .line 2366
    .local v4, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v5, 0x20

    new-array v3, v5, [B

    .line 2367
    .local v3, "payload":[B
    aput-byte v9, v3, v8

    .line 2368
    const/4 v5, 0x1

    const/4 v6, 0x5

    aput-byte v6, v3, v5

    .line 2369
    const/4 v5, 0x2

    aput-byte v8, v3, v5

    .line 2370
    const/4 v5, 0x3

    aput-byte v8, v3, v5

    .line 2371
    const/4 v1, 0x4

    .line 2372
    .local v1, "i":I
    iget-wide v6, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mLongitude:D

    invoke-static {v6, v7}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 2373
    .local v0, "buffer":[B
    invoke-static {v0, v8, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2374
    add-int/lit8 v1, v1, 0x8

    .line 2375
    iget-wide v6, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mLatitude:D

    invoke-static {v6, v7}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 2376
    invoke-static {v0, v8, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2377
    add-int/lit8 v1, v1, 0x8

    .line 2378
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mAltitude:F

    invoke-static {v5}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 2379
    invoke-static {v0, v8, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2380
    add-int/lit8 v1, v1, 0x4

    .line 2381
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mHorizontalAccuracyMeters:I

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 2382
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mVerticalAccuracyMeters:I

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 2383
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mSpeed:F

    invoke-static {v5}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 2384
    invoke-static {v0, v8, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2385
    add-int/lit8 v1, v1, 0x4

    .line 2386
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mBearing:I

    shr-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 2387
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v5, p1, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mBearing:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 2388
    invoke-virtual {v4, v8}, Lcom/fimi/x8sdk/command/X8SendCmd;->setAddToSendQueue(Z)V

    .line 2389
    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2390
    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2391
    return-object v4
.end method

.method public setGravitationExite()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2094
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2095
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2096
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2097
    const/4 v2, 0x1

    const/16 v3, 0x73

    aput-byte v3, v0, v2

    .line 2098
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2099
    aput-byte v4, v0, v5

    .line 2100
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2101
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2102
    return-object v1
.end method

.method public setGravitationPause()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2064
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2065
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2066
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2067
    const/4 v2, 0x1

    const/16 v3, 0x71

    aput-byte v3, v0, v2

    .line 2068
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2069
    aput-byte v4, v0, v5

    .line 2070
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2071
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2072
    return-object v1
.end method

.method public setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;

    .prologue
    const/4 v5, 0x0

    .line 2109
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 2110
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0xb

    new-array v2, v4, [B

    .line 2111
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 2112
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 2113
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x74

    aput-byte v4, v2, v1

    .line 2114
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 2115
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 2117
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getRotateDirecetion()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2118
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getRotateSpeed()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 2119
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getHorizontalDistance()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2120
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getRiseHeight()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 2121
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getEllipseInclinal()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2122
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getEccentricWheel()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 2123
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->getAutoVideo()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2124
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2125
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2127
    return-object v3
.end method

.method public setGravitationResume()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2079
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2080
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2081
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2082
    const/4 v2, 0x1

    const/16 v3, 0x72

    aput-byte v3, v0, v2

    .line 2083
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2084
    aput-byte v4, v0, v5

    .line 2085
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2086
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2087
    return-object v1
.end method

.method public setGravitationStart()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2049
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2050
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2051
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2052
    const/4 v2, 0x1

    const/16 v3, 0x70

    aput-byte v3, v0, v2

    .line 2053
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2054
    aput-byte v4, v0, v5

    .line 2055
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2056
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2057
    return-object v1
.end method

.method public setHomePoint(FDDIF)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 8
    .param p1, "height"    # F
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "mode"    # I
    .param p7, "accuracy"    # F

    .prologue
    .line 1821
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v4

    .line 1822
    .local v4, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v5, 0x20

    new-array v1, v5, [B

    .line 1823
    .local v1, "payload":[B
    const/4 v5, 0x0

    const/4 v6, 0x3

    aput-byte v6, v1, v5

    .line 1824
    const/4 v5, 0x1

    const/16 v6, 0x5a

    aput-byte v6, v1, v5

    .line 1825
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 1826
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 1827
    const/4 v2, 0x4

    .line 1828
    .local v2, "pos":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    int-to-byte v5, p6

    aput-byte v5, v1, v2

    .line 1829
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    const/4 v5, 0x0

    aput-byte v5, v1, v3

    .line 1830
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    const/4 v5, 0x0

    aput-byte v5, v1, v2

    .line 1831
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    const/4 v5, 0x0

    aput-byte v5, v1, v3

    .line 1832
    invoke-static {p7}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 1833
    .local v0, "buffer":[B
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1834
    add-int/lit8 v2, v2, 0x4

    .line 1835
    invoke-static {p1}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 1836
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1837
    add-int/lit8 v2, v2, 0x4

    .line 1838
    invoke-static {p4, p5}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 1839
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1840
    add-int/lit8 v2, v2, 0x8

    .line 1841
    invoke-static {p2, p3}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getDoubleBytes(D)[B

    move-result-object v0

    .line 1842
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1843
    add-int/lit8 v2, v2, 0x8

    .line 1844
    invoke-virtual {v4, v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1845
    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1846
    return-object v4
.end method

.method public setLeftRightRockerExp(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7
    .param p1, "yawPercent"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1751
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1752
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1753
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1754
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1755
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x19

    aput-byte v4, v2, v1

    .line 1756
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1757
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1758
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 1759
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1760
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1761
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1762
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1763
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1764
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1765
    return-object v3
.end method

.method public setLockMotor(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "lock"    # I

    .prologue
    const/4 v5, 0x0

    .line 1695
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1696
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 1697
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1698
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1699
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x36

    aput-byte v4, v2, v1

    .line 1700
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1701
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1702
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1703
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1704
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1705
    return-object v3
.end method

.method public setLostAction(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "action"    # B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 478
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 479
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 480
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 481
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 482
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 483
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 484
    aput-byte p1, v0, v5

    .line 485
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 486
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 487
    return-object v1
.end method

.method public setLowPowerOperation(IIII)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "lowPowerValue"    # I
    .param p2, "seriousLowPowerValue"    # I
    .param p3, "lowPowerOpt"    # I
    .param p4, "seriousLowPowerOpt"    # I

    .prologue
    const/4 v5, 0x0

    .line 1263
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1264
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 1265
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1266
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1267
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x18

    aput-byte v4, v2, v1

    .line 1268
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1269
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1270
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1271
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p2

    aput-byte v4, v2, v1

    .line 1272
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p3

    aput-byte v4, v2, v0

    .line 1273
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p4

    aput-byte v4, v2, v1

    .line 1274
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1275
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1276
    return-object v3
.end method

.method public setOpticFlow(Z)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "isOpen"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1465
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1466
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v5, 0x5

    new-array v2, v5, [B

    .line 1467
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1468
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v5, 0x4

    aput-byte v5, v2, v0

    .line 1469
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v5, 0xe

    aput-byte v5, v2, v1

    .line 1470
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v4, v2, v0

    .line 1471
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v4, v2, v1

    .line 1472
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 1473
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1474
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1475
    return-object v3
.end method

.method public setPanoramaPhotographState(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "state"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2331
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2332
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2333
    .local v0, "payload":[B
    aput-byte v4, v0, v3

    .line 2334
    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 2335
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 2336
    aput-byte v3, v0, v4

    .line 2337
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2338
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2339
    return-object v1
.end method

.method public setPanoramaPhotographType(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "panoramaPhotographType"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2309
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2310
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 2311
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2312
    const/4 v2, 0x1

    const/16 v3, 0x69

    aput-byte v3, v0, v2

    .line 2313
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2314
    aput-byte v4, v0, v5

    .line 2315
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 2316
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2317
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2318
    return-object v1
.end method

.method public setPilotMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "mode"    # B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 403
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 404
    .local v0, "payload":[B
    aput-byte v5, v0, v3

    .line 405
    aput-byte v4, v0, v4

    .line 406
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 407
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 408
    aput-byte p1, v0, v5

    .line 409
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 410
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 411
    return-object v1
.end method

.method public setPressureInfo(FF)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 8
    .param p1, "alt"    # F
    .param p2, "hPa"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 2344
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4, v6}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 2345
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0xc

    new-array v2, v4, [B

    .line 2346
    .local v2, "payload":[B
    const/16 v4, 0x8

    aput-byte v4, v2, v6

    .line 2347
    const/4 v4, 0x1

    const/4 v5, 0x6

    aput-byte v5, v2, v4

    .line 2348
    const/4 v4, 0x2

    aput-byte v6, v2, v4

    .line 2349
    const/4 v4, 0x3

    aput-byte v6, v2, v4

    .line 2350
    const/4 v1, 0x4

    .line 2352
    .local v1, "i":I
    invoke-static {p1}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 2353
    .local v0, "buffer":[B
    invoke-static {v0, v6, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2354
    add-int/lit8 v1, v1, 0x4

    .line 2355
    invoke-static {p2}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 2356
    invoke-static {v0, v6, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2357
    add-int/lit8 v1, v1, 0x4

    .line 2358
    invoke-virtual {v3, v6}, Lcom/fimi/x8sdk/command/X8SendCmd;->setAddToSendQueue(Z)V

    .line 2359
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2360
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2361
    return-object v3
.end method

.method public setReturnHeight(F)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7
    .param p1, "height"    # F

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 439
    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v2

    .line 440
    .local v2, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v1, v6, [B

    .line 441
    .local v1, "payload":[B
    aput-byte v5, v1, v4

    .line 442
    const/4 v3, 0x1

    aput-byte v6, v1, v3

    .line 443
    const/4 v3, 0x2

    aput-byte v4, v1, v3

    .line 444
    const/4 v3, 0x3

    aput-byte v4, v1, v3

    .line 445
    invoke-static {p1}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v0

    .line 446
    .local v0, "h":[B
    array-length v3, v0

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 448
    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 449
    return-object v2
.end method

.method public setScrewExite()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2229
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2230
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2231
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2232
    const/4 v2, 0x1

    const/16 v3, 0x66

    aput-byte v3, v0, v2

    .line 2233
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2234
    aput-byte v4, v0, v5

    .line 2235
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2236
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2237
    return-object v1
.end method

.method public setScrewPause()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2195
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2196
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2197
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2198
    const/4 v2, 0x1

    const/16 v3, 0x64

    aput-byte v3, v0, v2

    .line 2199
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2200
    aput-byte v4, v0, v5

    .line 2201
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2202
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2204
    return-object v1
.end method

.method public setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;

    .prologue
    const/4 v5, 0x0

    .line 2136
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 2137
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0xc

    new-array v2, v4, [B

    .line 2138
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 2139
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v0

    .line 2140
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x67

    aput-byte v4, v2, v1

    .line 2141
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 2142
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 2144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getDistance()I

    move-result v4

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2145
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getDistance()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 2146
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getCiclePeriod()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2147
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getVertSpeed()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 2148
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getRTHTostart()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 2149
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2150
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2152
    return-object v3
.end method

.method public setScrewResume()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2212
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2213
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2214
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2215
    const/4 v2, 0x1

    const/16 v3, 0x65

    aput-byte v3, v0, v2

    .line 2216
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2217
    aput-byte v4, v0, v5

    .line 2218
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2219
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2221
    return-object v1
.end method

.method public setScrewStart()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2178
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2179
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2180
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2181
    const/4 v2, 0x1

    const/16 v3, 0x63

    aput-byte v3, v0, v2

    .line 2182
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2183
    aput-byte v4, v0, v5

    .line 2184
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2185
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2187
    return-object v1
.end method

.method public setSportMode(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "enable"    # I

    .prologue
    const/4 v5, 0x0

    .line 1714
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1715
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x6

    new-array v2, v4, [B

    .line 1716
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1717
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1718
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v1

    .line 1719
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1720
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1721
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v4, 0x7

    aput-byte v4, v2, v0

    .line 1722
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1723
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1724
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1725
    return-object v3
.end method

.method public setSyncTimeCmd()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x0

    .line 1168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1169
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-short v10, v11

    .line 1170
    .local v10, "year":S
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-byte v6, v11

    .line 1171
    .local v6, "month":B
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-byte v1, v11

    .line 1172
    .local v1, "day":B
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-byte v2, v11

    .line 1173
    .local v2, "hour":B
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-byte v5, v11

    .line 1174
    .local v5, "min":B
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-byte v8, v11

    .line 1176
    .local v8, "second":B
    sget-object v11, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v11}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v11

    int-to-byte v11, v11

    invoke-direct {p0, v11, v12}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v9

    .line 1177
    .local v9, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v7, v13, [B

    .line 1178
    .local v7, "payload":[B
    const/4 v3, 0x0

    .line 1179
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v11, 0x8

    aput-byte v11, v7, v3

    .line 1180
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/4 v11, 0x4

    aput-byte v11, v7, v4

    .line 1181
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-byte v12, v7, v3

    .line 1182
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v12, v7, v4

    .line 1183
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    and-int/lit16 v11, v10, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v3

    .line 1184
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const v11, 0xff00

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v4

    .line 1185
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-byte v6, v7, v3

    .line 1186
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v1, v7, v4

    .line 1187
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-byte v2, v7, v3

    .line 1188
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v5, v7, v4

    .line 1189
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-byte v8, v7, v3

    .line 1190
    invoke-virtual {v9, v7}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1192
    invoke-virtual {v9}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1193
    return-object v9
.end method

.method public setUpDownRockerExp(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "throttlePercent"    # I

    .prologue
    const/4 v5, 0x0

    .line 1654
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1655
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1656
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1657
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x4

    aput-byte v4, v2, v0

    .line 1658
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x19

    aput-byte v4, v2, v1

    .line 1659
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1660
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1661
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x8

    aput-byte v4, v2, v0

    .line 1662
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1663
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1664
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1665
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 1666
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1667
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1668
    return-object v3
.end method

.method public setUpdateHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1979
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 1980
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v3, [B

    .line 1981
    .local v0, "payload":[B
    aput-byte v3, v0, v4

    .line 1982
    const/4 v2, 0x1

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    .line 1983
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 1984
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 1985
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1986
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1987
    return-object v1
.end method

.method public setYawSensitivity(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7
    .param p1, "yawPercent"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1528
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1529
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1530
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1531
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1532
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x25

    aput-byte v4, v2, v1

    .line 1533
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1534
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1536
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 1537
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1538
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1539
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1540
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1542
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1543
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1544
    return-object v3
.end method

.method public setYawTrip(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7
    .param p1, "yawValue"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1613
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 1614
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x9

    new-array v2, v4, [B

    .line 1615
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 1616
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v6, v2, v0

    .line 1617
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x21

    aput-byte v4, v2, v1

    .line 1618
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1619
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1620
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 1621
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 1622
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1623
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v1

    .line 1624
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 1625
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 1626
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 1627
    return-object v3
.end method

.method public sysCtrlMode2AiVc(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "ctrlMode"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2285
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 2286
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 2287
    .local v0, "payload":[B
    aput-byte v5, v0, v4

    .line 2288
    const/4 v2, 0x1

    const/16 v3, 0x6b

    aput-byte v3, v0, v2

    .line 2289
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 2290
    aput-byte v4, v0, v5

    .line 2291
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 2292
    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setAddToSendQueue(Z)V

    .line 2293
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 2294
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 2296
    return-object v1
.end method

.method public takeOff(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "cmdID"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 325
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 326
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 327
    .local v0, "payload":[B
    aput-byte v4, v0, v3

    .line 328
    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 329
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 330
    aput-byte v3, v0, v4

    .line 331
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 332
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 334
    return-object v1
.end method
