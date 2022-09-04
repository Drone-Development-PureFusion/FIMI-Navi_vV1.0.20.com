.class public Lcom/fimi/x8sdk/command/CameraJsonCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "CameraJsonCollection.java"


# static fields
.field public static final CMD_BURNIN_FW:I = 0x8

.field public static final CMD_CANCEL_GET_FILE:I = 0x507

.field public static final CMD_CD:I = 0x503

.field public static final CMD_CHANGE_BITRATE:I = 0x10

.field public static final CMD_CONTINUE_CAPTURE_STOP:I = 0x302

.field public static final CMD_DEL_FILE:I = 0x501

.field public static final CMD_DIGITAL_ZOOM:I = 0xe

.field public static final CMD_DIGITAL_ZOOM_INFO:I = 0xf

.field public static final CMD_FORCE_SPLIT:I = 0x204

.field public static final CMD_FORMAT:I = 0x4

.field public static final CMD_GET_ALL_CURRENT_SETTINGS:I = 0x3

.field public static final CMD_GET_BATTERY_LEVEL:I = 0xd

.field public static final CMD_GET_DEVICE_INFO:I = 0xb

.field public static final CMD_GET_DV_VERSION:I = 0x12

.field public static final CMD_GET_FILE:I = 0x505

.field public static final CMD_GET_MEDIAINFO:I = 0x402

.field public static final CMD_GET_NUMB_FILES:I = 0x6

.field public static final CMD_GET_RECORD_TIME:I = 0x203

.field public static final CMD_GET_REMAIN_TIME:I = 0x13

.field public static final CMD_GET_SETTING:I = 0x1

.field public static final CMD_GET_SINGLE_SETTING_OPTIONS:I = 0x9

.field public static final CMD_GET_SPACE:I = 0x5

.field public static final CMD_GET_THUMB:I = 0x401

.field public static final CMD_GET_WIFI_SETTING:I = 0x603

.field public static final CMD_LS:I = 0x502

.field public static final CMD_NOTIFICATION:I = 0x7

.field public static final CMD_POWER_MANAGER:I = 0xc

.field public static final CMD_PUT_FILE:I = 0x506

.field public static final CMD_PUT_GPS_INFO:I = 0xa

.field public static final CMD_PWD:I = 0x504

.field public static final CMD_QUERY_SESSION_HOLDER:I = 0x701

.field public static final CMD_RECORD_START:I = 0x201

.field public static final CMD_RECORD_STOP:I = 0x202

.field public static final CMD_RESETVF:I = 0x103

.field public static final CMD_RESET_DEFAULT:I = 0x11

.field public static final CMD_SET_CLIENT_INFO:I = 0x105

.field public static final CMD_SET_MEDIA_ATTRIBUTE:I = 0x403

.field public static final CMD_SET_SETTING:I = 0x2

.field public static final CMD_SET_WIFI_SETTING:I = 0x602

.field public static final CMD_START_SESSION:I = 0x101

.field public static final CMD_STOP_SESSION:I = 0x102

.field public static final CMD_STOP_VF:I = 0x104

.field public static final CMD_TAKE_PHOTO:I = 0x301

.field public static final CMD_WIFI_RESTART:I = 0x601

.field public static final CUR_TIME:Ljava/lang/String; = "cur_time"

.field public static final KEY_AE_BIAS:Ljava/lang/String; = "ae_bias"

.field public static final KEY_AE_ISO:Ljava/lang/String; = "iso"

.field public static final KEY_APP_STATUS:Ljava/lang/String; = "app_status"

.field public static final KEY_AWB:Ljava/lang/String; = "awb"

.field public static final KEY_CAMERA_LOCK:Ljava/lang/String; = "camera_clock"

.field public static final KEY_CAMERA_STYLE:Ljava/lang/String; = "camera_style"

.field public static final KEY_CAPTURE_MODE:Ljava/lang/String; = "capture_mode"

.field public static final KEY_CONTRAST:Ljava/lang/String; = "contrast"

.field public static final KEY_DEFAULT_SYSTEM:Ljava/lang/String; = "default_setting"

.field public static final KEY_DEF_SETTING:Ljava/lang/String; = "default_setting"

.field public static final KEY_DE_CONTROL_AUTO:Ljava/lang/String; = "auto"

.field public static final KEY_DE_CONTROL_MANUAL:Ljava/lang/String; = "manual"

.field public static final KEY_DE_CONTROL_TYPE:Ljava/lang/String; = "de_control"

.field public static final KEY_DIGITAL_EFFECT:Ljava/lang/String; = "digital_effect"

.field public static final KEY_DROOM:Ljava/lang/String; = "dzoom"

.field public static final KEY_IMAGE_FORMAT:Ljava/lang/String; = "photo_format"

.field public static final KEY_METERMING_MODE:Ljava/lang/String; = "metering_mode"

.field public static final KEY_NOTICE_TYPE_AE_BIAS:Ljava/lang/String; = "ae_bias"

.field public static final KEY_NOTICE_TYPE_EVBIAS:Ljava/lang/String; = "EVBIAS"

.field public static final KEY_NOTICE_TYPE_SYNC:Ljava/lang/String; = "sync"

.field public static final KEY_PHOTO_MODE:Ljava/lang/String; = "capture_mode"

.field public static final KEY_PHOTO_QUALITY:Ljava/lang/String; = "photo_quality"

.field public static final KEY_PHOTO_SIZE:Ljava/lang/String; = "photo_size"

.field public static final KEY_PHOTO_STAMP:Ljava/lang/String; = "photo_stamp"

.field public static final KEY_PHOTO_TIMELAPSE:Ljava/lang/String; = "photo_timelapse"

.field public static final KEY_RECORD_AUTO_LOW_LIGHT:Ljava/lang/String; = "auto_low_light"

.field public static final KEY_RECORD_MODE:Ljava/lang/String; = "record_mode"

.field public static final KEY_RVAL:Ljava/lang/String; = "ravl"

.field public static final KEY_SATURATION:Ljava/lang/String; = "saturation"

.field public static final KEY_SAVE_LOW_RESOLUTION_CLIP:Ljava/lang/String; = "save_low_resolution_clip"

.field public static final KEY_SHARPNESS:Ljava/lang/String; = "sharpness"

.field public static final KEY_SHUTTER_TIME:Ljava/lang/String; = "shutter_time"

.field public static final KEY_STREAM_OUT_TYPE:Ljava/lang/String; = "stream_out_type"

.field public static final KEY_SYSTEM_TTYPE:Ljava/lang/String; = "system_type"

.field public static final KEY_TIMELAPSE_PHOTO:Ljava/lang/String; = "timelapse_capture"

.field public static final KEY_TIMELAPSE_VIDEO:Ljava/lang/String; = "timelapase_record"

.field public static final KEY_VIDEO_LOOP_BACK:Ljava/lang/String; = "video_loop_back"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field public static final KEY_VIDEO_SRT:Ljava/lang/String; = "video_srt"

.field public static final KEY_VIDEO_STAMP:Ljava/lang/String; = "video_stamp"

.field public static final KEY_VIDEO_STANDARD:Ljava/lang/String; = "video_standard"

.field public static final KEY_VIDEO_TIMELAPSE:Ljava/lang/String; = "video_timelapse"

.field public static final SD_STATUS:Ljava/lang/String; = "sd_status"

.field public static final VALUE_IMAGE_JPG:Ljava/lang/String; = "JPG"

.field public static final VALUE_IMAGE_RAW:Ljava/lang/String; = "JPG+DNG"

.field public static final VALUE_NTSC:Ljava/lang/String; = "NTSC"

.field public static final VALUE_ON:Ljava/lang/String; = "on"

.field public static final VALUE_PAL:Ljava/lang/String; = "PAL"

.field public static final VALUE_PHOTO_QUALITY_16V9_12M:Ljava/lang/String; = "12M (4608x2592 16:9)"

.field public static final VALUE_PHOTO_QUALITY_16V9_8M_4K:Ljava/lang/String; = "8M (4056x3040 4:3)"

.field public static final VALUE_PHOTO_QUALITY_4V3_12M_4K:Ljava/lang/String; = "12M (4056x3040 4:3)"

.field public static final VALUE_PHOTO_QUALITY_4V3_16M:Ljava/lang/String; = "16M (4608x3456 4:3)"

.field public static final VALUE_PHOTO_QUALITY_4V3_8M:Ljava/lang/String; = "8M (3264x2448 4:3)"

.field public static final VALUE_VIDEO_RESOLUTION_1080P_100F:Ljava/lang/String; = "1920x1080 100P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_1080P_25F:Ljava/lang/String; = "1920x1080 25P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_1080P_30F:Ljava/lang/String; = "1920x1080 30P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_1080P_50F:Ljava/lang/String; = "1920x1080 50P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_1080P_60F:Ljava/lang/String; = "1920x1080 60P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_1440P_60F_2K:Ljava/lang/String; = "2560x1440 30P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_2160P_24F_4K:Ljava/lang/String; = "3840x2160 24P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_2160P_30F_4K:Ljava/lang/String; = "3840x2160 30P 16:9"

.field public static final VALUE_VIDEO_RESOLUTION_720P:Ljava/lang/String; = "1280x720 120P 16:9"

.field public static final VALUE_YES:Ljava/lang/String; = "yes"

.field public static isClearData:Z

.field public static final rulerValues:[Ljava/lang/String;


# instance fields
.field private final KEY_CAMERA_ROI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-3.0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "-2.7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-2.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-1.7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-1.3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-0.7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-0.3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0.0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "+0.3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+0.7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+1.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+1.3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+1.7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "+2.0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+2.3"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "+2.7"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "+3.0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;->rulerValues:[Ljava/lang/String;

    .line 142
    sput-boolean v3, Lcom/fimi/x8sdk/command/CameraJsonCollection;->isClearData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 147
    const-string v0, "roi"

    iput-object v0, p0, Lcom/fimi/x8sdk/command/CameraJsonCollection;->KEY_CAMERA_ROI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    .locals 2
    .param p1, "msgID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/CameraJsonData;-><init>()V

    .line 150
    .local v0, "cmd":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->setMsg_id(I)V

    .line 151
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->setParam(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->setType(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->setToken(I)V

    .line 154
    return-object v0
.end method

.method public defaultSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x2

    .line 275
    const-string v3, "on"

    const-string v4, "default_setting"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 276
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 278
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 279
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 280
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 281
    const-string v3, "default_setting"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 283
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 284
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 285
    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/16 v4, 0x501

    .line 308
    const/4 v3, 0x0

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 309
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 311
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 312
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 313
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 314
    const-string v3, "1281"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 315
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 316
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 317
    return-object v0
.end method

.method public formatTFCard(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x4

    .line 257
    const-string v3, "C"

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 258
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 260
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 261
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 262
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 264
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 265
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 266
    return-object v0
.end method

.method public getCameraAWB()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 377
    const/4 v3, 0x0

    const-string v4, "awb"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 378
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 380
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 381
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 382
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 383
    const-string v3, "awb"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 385
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 386
    return-object v0
.end method

.method public getCameraCurParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0, v5, v4, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 467
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 469
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 470
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 471
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 472
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 474
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 475
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 476
    return-object v0
.end method

.method public getCameraEV()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 293
    const/4 v3, 0x0

    const-string v4, "ae_bias"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 294
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 296
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 297
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 298
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 299
    const-string v3, "ae_bias"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 301
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 302
    return-object v0
.end method

.method public getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x1

    .line 587
    const/4 v3, 0x0

    const-string v4, "dzoom"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 588
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 590
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 591
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 592
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 593
    const-string v3, "dzoom"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 595
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 596
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 597
    return-object v0
.end method

.method public getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 601
    const-string v3, "dzoom"

    invoke-virtual {p0, v4, v3, v5}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 602
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 604
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 605
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 606
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 607
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 609
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 610
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 611
    return-object v0
.end method

.method public getCameraISO()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 326
    const/4 v3, 0x0

    const-string v4, "iso"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 327
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 329
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 330
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 331
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 332
    const-string v3, "iso"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 335
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 336
    return-object v0
.end method

.method public getCameraIsoOptions()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 344
    const-string v3, "iso"

    invoke-virtual {p0, v4, v3, v5}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 345
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 347
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 348
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 349
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 350
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 352
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 353
    return-object v0
.end method

.method public getCameraKeyOptions(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 502
    invoke-virtual {p0, v4, p1, v5}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 503
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 505
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 506
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 507
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 508
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 510
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 511
    return-object v0
.end method

.method public getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 519
    invoke-virtual {p0, v4, p1, v5}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 520
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 522
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 523
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 524
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 525
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 527
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 528
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 529
    return-object v0
.end method

.method public getCameraShutter()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 395
    const/4 v3, 0x0

    const-string v4, "shutter_time"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 396
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 398
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 399
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 400
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 401
    const-string v3, "shutter_time"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 403
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 404
    return-object v0
.end method

.method public getCameraShutterOptions()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 361
    const-string v3, "shutter_time"

    invoke-virtual {p0, v4, v3, v5}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 362
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 364
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 365
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 366
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 367
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 369
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 370
    return-object v0
.end method

.method public getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v4, 0x1

    .line 558
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 559
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 561
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 562
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 563
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 564
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 566
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 567
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 568
    return-object v0
.end method

.method public setCamera(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 180
    const-string v3, "system_type"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 181
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 183
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 184
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 185
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 187
    const-string v3, "system_type"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 189
    return-object v0
.end method

.method public setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v4, 0x2

    .line 430
    const-string v3, "de_control"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 431
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 433
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 434
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 435
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 436
    const-string v3, "de_control"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 438
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 439
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 440
    return-object v0
.end method

.method public setCameraEV(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 6
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ae_bias"

    invoke-virtual {p0, v5, v3, v4}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 486
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 488
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 489
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 490
    invoke-virtual {v0, v5}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 491
    const-string v3, "ae_bias"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 493
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 494
    return-object v0
.end method

.method public setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v4, 0x2

    .line 573
    const-string v3, "dzoom"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 574
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 576
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 577
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 578
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 579
    const-string v3, "dzoom"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 581
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 582
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 583
    return-object v0
.end method

.method public setCameraIso(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 413
    const-string v3, "iso"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 414
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 416
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 417
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 418
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 419
    const-string v3, "iso"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 421
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 422
    return-object v0
.end method

.method public setCameraKeyParam(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    const/4 v4, 0x2

    .line 538
    invoke-virtual {p0, v4, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 539
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 541
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 542
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 543
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 544
    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 546
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 547
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 548
    return-object v0
.end method

.method public setCameraShutterTime(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 449
    const-string v3, "shutter_time"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 450
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 452
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 453
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 454
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 455
    const-string v3, "shutter_time"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 457
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 458
    return-object v0
.end method

.method public setInterestMetering(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 620
    const-string v3, "roi"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 621
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 623
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 624
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 625
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 626
    const-string v3, "roi"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 628
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 629
    return-object v0
.end method

.method public setPhotoFormat(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 238
    const-string v3, "photo_format"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 239
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 241
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 242
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 243
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 244
    const-string v3, "photo_format"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 246
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 247
    return-object v0
.end method

.method public setPhotoSize(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 218
    const-string v3, "photo_size"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 219
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 221
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 222
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 223
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 224
    const-string v3, "photo_size"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 226
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 227
    return-object v0
.end method

.method public setVideoResolution(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 199
    const-string v3, "video_resolution"

    invoke-virtual {p0, v4, p1, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 200
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 202
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 203
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 204
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 205
    const-string v3, "video_resolution"

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCamKey(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 207
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 208
    return-object v0
.end method

.method public startSession()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x101

    .line 162
    invoke-virtual {p0, v4, v3, v3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->createBaseCmd(ILjava/lang/String;Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/CameraJsonData;

    move-result-object v1

    .line 163
    .local v1, "jsonData":Lcom/fimi/x8sdk/dataparser/CameraJsonData;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "sendString":Ljava/lang/String;
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;-><init>()V

    .line 165
    .local v0, "baseCamJsonData":Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setAddToSendQueue(Z)V

    .line 166
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setOutTime(I)V

    .line 167
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgId(I)V

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setPayLoad([B)V

    .line 170
    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->packCmd()V

    .line 171
    return-object v0
.end method
