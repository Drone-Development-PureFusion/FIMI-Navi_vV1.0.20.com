.class public Lcom/fimi/x8sdk/X8FcLogManager;
.super Ljava/lang/Object;
.source "X8FcLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/X8FcLogManager$LogState;
    }
.end annotation


# static fields
.field public static final FLIGHT_PLAYBACK:Ljava/lang/String; = "playback"

.field public static final FLIGHT_PLAYBACK_SIGN:B = -0x3t

.field public static final LENGTH_OF:I = 0xc

.field public static final NA:F = -1000.0f

.field private static currentWrite:Ljava/lang/String;

.field private static volatile log:Lcom/fimi/x8sdk/X8FcLogManager;

.field public static prexAPP:Ljava/lang/String;

.field public static prexCM:Ljava/lang/String;

.field public static prexFC:Ljava/lang/String;

.field public static prexFcStatus:Ljava/lang/String;

.field public static prexSD:Ljava/lang/String;

.field private static rn:[B


# instance fields
.field private final MILEAGE_FLIGHT_PLAYBACK_LOG_MESSAGE:I

.field private final MILEAGE_LAND_FLIGHT_PLAYBACK_LOG_MESSAGE:I

.field private final REBUILD_FC_LOG_MESSAGE:I

.field private final REBUILD_FLIGHT_PLAYBACK_LOG_MESSAGE:I

.field private appLogOutputStream:Ljava/io/FileOutputStream;

.field private autoFcSportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

.field public closeRebuildFCLog:Z

.field public closeRebuildflightPlaybackLog:Z

.field private cmOutputStream:Ljava/io/OutputStream;

.field private currentWriteFile:Ljava/lang/String;

.field private fcOutputStream:Ljava/io/OutputStream;

.field private flightPlaybackLogOutputStream:Ljava/io/OutputStream;

.field handler:Landroid/os/Handler;

.field private isPreLandDown:Z

.field private isWriteFirst:Z

.field private isWriteFlightPlaybackFirst:Z

.field private volatile lowPowerData:[B

.field private originalDistance:F

.field public prexCollect:Ljava/lang/String;

.field private volatile rockerLandDownData:[B

.field private volatile rockerModeData:[B

.field private volatile rockerStateData:[B

.field private startTime:J

.field public state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "fc"

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->prexFC:Ljava/lang/String;

    .line 33
    const-string v0, "relay"

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->prexCM:Ljava/lang/String;

    .line 35
    const-string v0, "setting"

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->prexAPP:Ljava/lang/String;

    .line 37
    const-string v0, "fcStatus"

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->prexFcStatus:Ljava/lang/String;

    .line 39
    const-string v0, "_sd"

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->currentWrite:Ljava/lang/String;

    .line 61
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->rn:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "_collect"

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->autoFcSportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 62
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    .line 68
    iput v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->REBUILD_FC_LOG_MESSAGE:I

    .line 69
    iput v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->REBUILD_FLIGHT_PLAYBACK_LOG_MESSAGE:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->MILEAGE_FLIGHT_PLAYBACK_LOG_MESSAGE:I

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->MILEAGE_LAND_FLIGHT_PLAYBACK_LOG_MESSAGE:I

    .line 73
    iput-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildflightPlaybackLog:Z

    .line 74
    iput-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildFCLog:Z

    .line 77
    iput-boolean v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isPreLandDown:Z

    .line 360
    new-instance v0, Lcom/fimi/x8sdk/X8FcLogManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/X8FcLogManager$1;-><init>(Lcom/fimi/x8sdk/X8FcLogManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/X8FcLogManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->originalDistance:F

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->originalDistance:F

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/X8FcLogManager;)Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->autoFcSportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/x8sdk/X8FcLogManager;Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->autoFcSportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/X8FcLogManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerModeData:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerModeData:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/X8FcLogManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerStateData:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerStateData:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/x8sdk/X8FcLogManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->lowPowerData:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->lowPowerData:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/fimi/x8sdk/X8FcLogManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerLandDownData:[B

    return-object v0
.end method

.method static synthetic access$502(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p1, "x1"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerLandDownData:[B

    return-object p1
.end method

.method public static getInstance()Lcom/fimi/x8sdk/X8FcLogManager;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->log:Lcom/fimi/x8sdk/X8FcLogManager;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lcom/fimi/x8sdk/X8FcLogManager;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->log:Lcom/fimi/x8sdk/X8FcLogManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/X8FcLogManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->log:Lcom/fimi/x8sdk/X8FcLogManager;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->log:Lcom/fimi/x8sdk/X8FcLogManager;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logDesData([B)[B
    .locals 10
    .param p1, "bytes"    # [B

    .prologue
    const/4 v9, 0x0

    .line 300
    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v7

    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v8

    iget-object v8, v8, Lcom/fimi/kernel/utils/DesEncryptUtil;->ENCRYPT_KEY_BYTES_TWO:[B

    invoke-virtual {v7, p1, v8}, Lcom/fimi/kernel/utils/DesEncryptUtil;->desCbcEncrypt([B[B)[B

    move-result-object v1

    .line 301
    .local v1, "desCbcEncrypts":[B
    array-length v7, v1

    add-int/lit8 v7, v7, 0x3

    new-array v0, v7, [B

    .line 302
    .local v0, "bytesSave":[B
    const/4 v4, -0x3

    .line 303
    .local v4, "magic":B
    array-length v7, v0

    int-to-short v5, v7

    .line 304
    .local v5, "msgLen":S
    const/4 v2, 0x0

    .line 305
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput-byte v4, v0, v2

    .line 306
    invoke-static {v5}, Lcom/fimi/kernel/utils/ByteUtil;->shortToByte(S)[B

    move-result-object v6

    .line 307
    .local v6, "short2byte":[B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v7, v6, v9

    aput-byte v7, v0, v3

    .line 308
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    const/4 v7, 0x1

    aget-byte v7, v6, v7

    aput-byte v7, v0, v2

    .line 309
    array-length v7, v1

    invoke-static {v1, v9, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    return-object v0
.end method


# virtual methods
.method public addFlightPlaybackData([B)[B
    .locals 14
    .param p1, "bytes"    # [B

    .prologue
    .line 423
    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v10

    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v11

    iget-object v11, v11, Lcom/fimi/kernel/utils/DesEncryptUtil;->ENCRYPT_KEY_BYTES:[B

    invoke-virtual {v10, p1, v11}, Lcom/fimi/kernel/utils/DesEncryptUtil;->desCbcEncrypt([B[B)[B

    move-result-object v1

    .line 424
    .local v1, "desCbcEncrypts":[B
    array-length v10, v1

    add-int/lit8 v10, v10, 0x8

    new-array v0, v10, [B

    .line 425
    .local v0, "bytesSave":[B
    const/4 v5, -0x3

    .line 426
    .local v5, "magic":B
    const/4 v9, 0x0

    .line 427
    .local v9, "type":B
    array-length v10, v0

    int-to-short v6, v10

    .line 428
    .local v6, "msgLen":S
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/fimi/x8sdk/X8FcLogManager;->startTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 429
    .local v7, "ptsb":I
    const/4 v2, 0x0

    .line 430
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput-byte v5, v0, v2

    .line 431
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-byte v9, v0, v3

    .line 432
    invoke-static {v6}, Lcom/fimi/kernel/utils/ByteUtil;->shortToByte(S)[B

    move-result-object v8

    .line 433
    .local v8, "short2byte":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    aput-byte v10, v0, v2

    .line 434
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/4 v10, 0x1

    aget-byte v10, v8, v10

    aput-byte v10, v0, v3

    .line 435
    invoke-static {v7}, Lcom/fimi/kernel/utils/ByteUtil;->intToByte(I)[B

    move-result-object v4

    .line 436
    .local v4, "int2byte":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    aput-byte v10, v0, v2

    .line 437
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    aput-byte v10, v0, v3

    .line 438
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    aput-byte v10, v0, v2

    .line 439
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/4 v10, 0x3

    aget-byte v10, v4, v10

    aput-byte v10, v0, v3

    .line 440
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v0, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    return-object v0
.end method

.method public addFlightPlaybackDataDistance()[B
    .locals 18

    .prologue
    .line 445
    const/16 v13, 0xc

    new-array v2, v13, [B

    .line 446
    .local v2, "bytesSave":[B
    const/4 v8, -0x3

    .line 447
    .local v8, "magic":B
    const/4 v12, 0x1

    .line 448
    .local v12, "type":B
    array-length v13, v2

    int-to-short v9, v13

    .line 449
    .local v9, "msgLen":S
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/x8sdk/X8FcLogManager;->startTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v10, v14

    .line 450
    .local v10, "ptsb":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fimi/x8sdk/X8FcLogManager;->originalDistance:F

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v3, v13, v14

    .line 451
    .local v3, "distance":F
    const/4 v4, 0x0

    .line 452
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput-byte v8, v2, v4

    .line 453
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v12, v2, v5

    .line 454
    invoke-static {v9}, Lcom/fimi/kernel/utils/ByteUtil;->shortToByte(S)[B

    move-result-object v11

    .line 455
    .local v11, "short2byte":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v13, 0x0

    aget-byte v13, v11, v13

    aput-byte v13, v2, v4

    .line 456
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/4 v13, 0x1

    aget-byte v13, v11, v13

    aput-byte v13, v2, v5

    .line 457
    invoke-static {v10}, Lcom/fimi/kernel/utils/ByteUtil;->intToByte(I)[B

    move-result-object v6

    .line 458
    .local v6, "int2byte":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v13, 0x0

    aget-byte v13, v6, v13

    aput-byte v13, v2, v4

    .line 459
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/4 v13, 0x1

    aget-byte v13, v6, v13

    aput-byte v13, v2, v5

    .line 460
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v13, 0x2

    aget-byte v13, v6, v13

    aput-byte v13, v2, v4

    .line 461
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/4 v13, 0x3

    aget-byte v13, v6, v13

    aput-byte v13, v2, v5

    .line 462
    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v7

    .line 463
    .local v7, "int2byteDistance":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v13, 0x0

    aget-byte v13, v7, v13

    aput-byte v13, v2, v4

    .line 464
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/4 v13, 0x1

    aget-byte v13, v7, v13

    aput-byte v13, v2, v5

    .line 465
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v13, 0x2

    aget-byte v13, v7, v13

    aput-byte v13, v2, v4

    .line 466
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/4 v13, 0x3

    aget-byte v13, v7, v13

    aput-byte v13, v2, v5

    .line 468
    return-object v2
.end method

.method public appAllLogWrite()V
    .locals 4

    .prologue
    .line 316
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v3, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v2, v3, :cond_0

    .line 319
    :try_start_0
    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DataJsonFactory;->getAllDataJsonString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "jsonString":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public appValueBoleanChange(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "oldV"    # Z
    .param p3, "newV"    # Z

    .prologue
    .line 339
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v3, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v2, v3, :cond_0

    .line 341
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/fimi/x8sdk/appsetting/DataJsonFactory;->onValueBooleanChange(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public appValueFloatChange(Ljava/lang/String;FF)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "oldV"    # F
    .param p3, "newV"    # F

    .prologue
    .line 328
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v3, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v2, v3, :cond_0

    .line 330
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/fimi/x8sdk/appsetting/DataJsonFactory;->onValueChange(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "oldV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .param p3, "newV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 350
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v3, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v2, v3, :cond_0

    .line 352
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/fimi/x8sdk/appsetting/DataJsonFactory;->appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeFileOutputStream()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->currentWriteFile:Ljava/lang/String;

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isPreLandDown:Z

    .line 164
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    const-string v1, ""

    sput-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->currentWrite:Ljava/lang/String;

    .line 169
    iput-boolean v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFirst:Z

    .line 170
    iput-boolean v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFlightPlaybackFirst:Z

    .line 171
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iput-object v3, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_1
    iput-object v3, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 190
    :try_start_2
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :goto_2
    iput-object v3, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/fimi/x8sdk/X8FcLogManager;->addFlightPlaybackDataDistance()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 200
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    :goto_3
    iput-object v3, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    .line 206
    iput-object v3, p0, Lcom/fimi/x8sdk/X8FcLogManager;->autoFcSportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 216
    :cond_3
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public cmLogWrite([BJF)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "l"    # J
    .param p4, "distance"    # F

    .prologue
    .line 219
    iget-object v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v5, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v4, v5, :cond_0

    .line 221
    :try_start_0
    invoke-static {p2, p3}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->getLongBytes(J)[B

    move-result-object v3

    .line 222
    .local v3, "time":[B
    invoke-static {p4}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v1

    .line 223
    .local v1, "d":[B
    array-length v4, p1

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 224
    .local v0, "bytesSave":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    const/4 v4, 0x0

    array-length v5, p1

    array-length v6, v3

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v4, 0x0

    array-length v5, p1

    array-length v6, v3

    add-int/2addr v5, v6

    array-length v6, v1

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "bytesSave":[B
    .end local v1    # "d":[B
    .end local v3    # "time":[B
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public fcLogWrite([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v1, v2, :cond_1

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/X8FcLogManager;->logDesData([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 277
    iget-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFirst:Z

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appAllLogWrite()V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFirst:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildFCLog:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v1, v2, :cond_0

    .line 288
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 289
    iput-boolean v4, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildFCLog:Z

    goto :goto_0
.end method

.method public flightPlaybackLogWrite([BZ)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "isFc"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    if-nez p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v1, v2, :cond_5

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFlightPlaybackFirst:Z

    if-eqz v1, :cond_3

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fimi/x8sdk/X8FcLogManager;->startTime:J

    .line 248
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFlightPlaybackFirst:Z

    .line 249
    iget-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isPreLandDown:Z

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/X8FcLogManager;->addFlightPlaybackData([B)[B

    move-result-object p1

    .line 256
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 262
    :cond_5
    iget-boolean v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildflightPlaybackLog:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v1, v2, :cond_0

    .line 264
    invoke-virtual {p0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 265
    iput-boolean v5, p0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildflightPlaybackLog:Z

    goto :goto_0
.end method

.method public getCurrentWrite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager;->currentWrite:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWriteFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->currentWriteFile:Ljava/lang/String;

    return-object v0
.end method

.method public initFileOutputStream()V
    .locals 14

    .prologue
    .line 114
    iget-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    if-eqz v11, :cond_0

    .line 159
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v11, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-static {v12, v13, v11}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "dirPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v11, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v12, v13, v11}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "dirPathPlayback":Ljava/lang/String;
    sput-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->currentWrite:Ljava/lang/String;

    .line 123
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8B2oxPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 125
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "uuid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 129
    .local v9, "flightPlaybackPath":Ljava/io/File;
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 130
    new-instance v9, Ljava/io/File;

    .end local v9    # "flightPlaybackPath":Ljava/io/File;
    invoke-static {v10}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v9    # "flightPlaybackPath":Ljava/io/File;
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 135
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 138
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/fimi/x8sdk/X8FcLogManager;->prexFC:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "fcName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/fimi/x8sdk/X8FcLogManager;->prexCM:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "cmName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/fimi/x8sdk/X8FcLogManager;->prexAPP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "appName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/fimi/x8sdk/X8FcLogManager;->prexFcStatus:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "fcStatesName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "playback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "flightPlayback":Ljava/lang/String;
    iput-object v8, p0, Lcom/fimi/x8sdk/X8FcLogManager;->currentWriteFile:Ljava/lang/String;

    .line 147
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->fcOutputStream:Ljava/io/OutputStream;

    .line 148
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->cmOutputStream:Ljava/io/OutputStream;

    .line 149
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->appLogOutputStream:Ljava/io/FileOutputStream;

    .line 150
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogOutputStream:Ljava/io/OutputStream;

    .line 153
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFirst:Z

    .line 154
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isWriteFlightPlaybackFirst:Z

    .line 155
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/fimi/x8sdk/X8FcLogManager;->startTime:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "cmName":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fcName":Ljava/lang/String;
    .end local v7    # "fcStatesName":Ljava/lang/String;
    .end local v8    # "flightPlayback":Ljava/lang/String;
    .end local v9    # "flightPlaybackPath":Ljava/io/File;
    .end local v10    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 132
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "flightPlaybackPath":Ljava/io/File;
    .restart local v10    # "uuid":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/File;

    .end local v9    # "flightPlaybackPath":Ljava/io/File;
    invoke-static {v10}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8flightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v9    # "flightPlaybackPath":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public onDeviceStateChange(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v0, v1, :cond_1

    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    .line 101
    invoke-virtual {p0}, Lcom/fimi/x8sdk/X8FcLogManager;->initFileOutputStream()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    if-ne v0, v1, :cond_0

    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    iput-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager;->state:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    .line 107
    invoke-virtual {p0}, Lcom/fimi/x8sdk/X8FcLogManager;->closeFileOutputStream()V

    goto :goto_0
.end method

.method public setLowPowerData([B)V
    .locals 0
    .param p1, "lowPowerData"    # [B

    .prologue
    .line 492
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->lowPowerData:[B

    .line 493
    return-void
.end method

.method public setOriginalDistance(F)V
    .locals 0
    .param p1, "originalDistance"    # F

    .prologue
    .line 496
    iput p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->originalDistance:F

    .line 497
    return-void
.end method

.method public setPreLandDown(Z)V
    .locals 0
    .param p1, "preLandDown"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->isPreLandDown:Z

    .line 481
    return-void
.end method

.method public setRockerLandDownData([B)V
    .locals 0
    .param p1, "rockerLandDownData"    # [B

    .prologue
    .line 484
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerLandDownData:[B

    .line 485
    return-void
.end method

.method public setRockerModeData([B)V
    .locals 0
    .param p1, "rockerModeData"    # [B

    .prologue
    .line 472
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerModeData:[B

    .line 473
    return-void
.end method

.method public setRockerStateData([B)V
    .locals 0
    .param p1, "rockerStateData"    # [B

    .prologue
    .line 476
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager;->rockerStateData:[B

    .line 477
    return-void
.end method
