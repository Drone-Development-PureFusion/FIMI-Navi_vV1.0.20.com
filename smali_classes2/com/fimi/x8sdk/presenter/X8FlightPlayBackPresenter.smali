.class public Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
.super Ljava/lang/Object;
.source "X8FlightPlayBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;
    }
.end annotation


# instance fields
.field public final X8_PLAYBACK_PALYBACK:I

.field private final X8_PLAYBACK_PARSEFILE_END:I

.field public volatile currentProgress:I

.field private errorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

.field private flightPlaybackAllDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private groupId:I

.field private handler:Landroid/os/Handler;

.field private iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

.field private isDisconnectDrone:Z

.field private isDroneDisConnectState:Z

.field private isFileEnd:Z

.field private isX8FlightPlayBackEnd:Z

.field private final lengthIndex:I

.field public listLinkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

.field private msgId:I

.field private final nextTime:J

.field private offset:J

.field private p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

.field private packetLength:I

.field public play2Second:I

.field private ptsb:I

.field private randomFile:Ljava/io/RandomAccessFile;

.field private total:J

.field private totalTime:I

.field private x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->randomFile:Ljava/io/RandomAccessFile;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->offset:J

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->lengthIndex:I

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->play2Second:I

    .line 60
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    .line 63
    iput-boolean v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    .line 67
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->X8_PLAYBACK_PARSEFILE_END:I

    .line 68
    iput v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->X8_PLAYBACK_PALYBACK:I

    .line 69
    sget-object v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Payback:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    .line 70
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    .line 71
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->nextTime:J

    .line 72
    new-instance v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->errorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    .line 333
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;-><init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->offset:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->offset:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->flightPlaybackAllDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;[B)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->byte2Object([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->flightPlaybackAllDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->totalTime:I

    return v0
.end method

.method static synthetic access$1102(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->totalTime:I

    return p1
.end method

.method static synthetic access$1200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handlerOneFps(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDisconnectDrone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->randomFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->randomFile:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->total:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->total:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isFileEnd:Z

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isFileEnd:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->packetLength:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->packetLength:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isEndPacket([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->toFlightPlaybackEntity(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 46
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->ptsb:I

    return v0
.end method

.method static synthetic access$902(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->ptsb:I

    return p1
.end method

.method private byte2Object([B)Ljava/lang/Object;
    .locals 14
    .param p1, "packetData"    # [B

    .prologue
    .line 257
    if-eqz p1, :cond_4

    array-length v12, p1

    if-lez v12, :cond_4

    .line 258
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, p1

    if-ge v4, v12, :cond_4

    .line 259
    iget-object v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    aget-byte v13, p1, v4

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->unPacket(I)Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    move-result-object v6

    .line 260
    .local v6, "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    if-eqz v6, :cond_0

    .line 262
    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getGroupId()I

    move-result v12

    iput v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->groupId:I

    .line 263
    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getMsgId()I

    move-result v12

    iput v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->msgId:I

    .line 264
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->groupId:I

    const/16 v13, 0xc

    if-ne v12, v13, :cond_1

    .line 265
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->msgId:I

    packed-switch v12, :pswitch_data_0

    .line 258
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :pswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;-><init>()V

    .line 268
    .local v0, "autoFcHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    invoke-virtual {v0, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 330
    .end local v0    # "autoFcHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    .end local v4    # "i":I
    .end local v6    # "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    :goto_2
    return-object v0

    .line 273
    .restart local v4    # "i":I
    .restart local v6    # "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    :pswitch_1
    new-instance v10, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    invoke-direct {v10}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;-><init>()V

    .line 274
    .local v10, "signalStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;
    invoke-virtual {v10, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v10

    .line 276
    goto :goto_2

    .line 278
    .end local v10    # "signalStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;
    :pswitch_2
    new-instance v1, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;-><init>()V

    .line 279
    .local v1, "batteryPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;
    invoke-virtual {v1, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v1

    .line 281
    goto :goto_2

    .line 283
    .end local v1    # "batteryPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;
    :pswitch_3
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;-><init>()V

    .line 284
    .local v2, "fcErrCodePlayback":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    invoke-virtual {v2, v6}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v2

    .line 286
    goto :goto_2

    .line 288
    .end local v2    # "fcErrCodePlayback":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    :pswitch_4
    new-instance v11, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    invoke-direct {v11}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;-><init>()V

    .line 289
    .local v11, "sportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    invoke-virtual {v11, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v11

    .line 291
    goto :goto_2

    .line 293
    .end local v11    # "sportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    :pswitch_5
    new-instance v3, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;

    invoke-direct {v3}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;-><init>()V

    .line 294
    .local v3, "homeInfoPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;
    invoke-virtual {v3, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v3

    .line 296
    goto :goto_2

    .line 298
    .end local v3    # "homeInfoPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;
    :cond_1
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->groupId:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_2

    .line 299
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->msgId:I

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    .line 301
    :sswitch_0
    new-instance v9, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    invoke-direct {v9}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;-><init>()V

    .line 302
    .local v9, "rockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    invoke-virtual {v9, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v9

    .line 304
    goto :goto_2

    .line 306
    .end local v9    # "rockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    :sswitch_1
    new-instance v7, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    invoke-direct {v7}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;-><init>()V

    .line 307
    .local v7, "rcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    invoke-virtual {v7, v6}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v7

    .line 308
    goto :goto_2

    .line 310
    .end local v7    # "rcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    :cond_2
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->groupId:I

    const/16 v13, 0xe

    if-ne v12, v13, :cond_3

    .line 311
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->msgId:I

    packed-switch v12, :pswitch_data_1

    goto :goto_1

    .line 313
    :pswitch_6
    new-instance v8, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    invoke-direct {v8}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;-><init>()V

    .line 314
    .local v8, "relayHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;
    invoke-virtual {v8, v6}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v8

    .line 316
    goto :goto_2

    .line 319
    .end local v8    # "relayHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;
    :cond_3
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->groupId:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_0

    .line 320
    iget v12, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->msgId:I

    packed-switch v12, :pswitch_data_2

    goto :goto_1

    .line 322
    :pswitch_7
    new-instance v5, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    invoke-direct {v5}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;-><init>()V

    .line 323
    .local v5, "lowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    invoke-virtual {v5, v6}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    move-object v0, v5

    .line 324
    goto :goto_2

    .line 330
    .end local v4    # "i":I
    .end local v5    # "lowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    .end local v6    # "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_6
    .end packed-switch

    .line 320
    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_7
    .end packed-switch
.end method

.method private handlerOneFps(I)V
    .locals 17
    .param p1, "index"    # I

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    if-nez v14, :cond_1

    .line 443
    :cond_0
    return-void

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 380
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v11, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;

    invoke-direct {v11}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;-><init>()V

    .line 381
    .local v11, "droneStateFlightPlayback":Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;
    if-eqz v12, :cond_0

    .line 382
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 383
    .local v13, "obj":Ljava/lang/Object;
    if-eqz v13, :cond_2

    .line 384
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    if-eqz v15, :cond_6

    move-object v5, v13

    .line 385
    check-cast v5, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    .line 386
    .local v5, "autoFcHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    invoke-virtual {v11, v5}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->setFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;)V

    .line 388
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDisconnectDrone:Z

    if-eqz v15, :cond_4

    .line 389
    invoke-virtual {v11}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isOnGround()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 390
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isX8FlightPlayBackEnd:Z

    .line 392
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDisconnectDrone:Z

    .line 395
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isX8FlightPlayBackEnd:Z

    if-nez v15, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v5, v11}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;)V

    .line 398
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto :goto_0

    .line 399
    .end local v5    # "autoFcHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    :cond_6
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    if-eqz v15, :cond_7

    move-object v6, v13

    .line 400
    check-cast v6, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    .line 401
    .local v6, "autoFcSignalStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v6}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoFcSignalState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V

    .line 402
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto :goto_0

    .line 403
    .end local v6    # "autoFcSignalStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;
    :cond_7
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    if-eqz v15, :cond_8

    move-object v3, v13

    .line 404
    check-cast v3, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    .line 405
    .local v3, "autoFcBatteryPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v3}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoFcBattery(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V

    .line 406
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto :goto_0

    .line 407
    .end local v3    # "autoFcBatteryPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;
    :cond_8
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;

    if-eqz v15, :cond_9

    move-object v4, v13

    .line 408
    check-cast v4, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;

    .line 409
    .local v4, "autoFcErrCodePlayback":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->errorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-virtual {v15, v4}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErrorCode(Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->errorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->getErrooInfo()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoFcErrCode(Ljava/util/List;)V

    .line 411
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0

    .line 412
    .end local v4    # "autoFcErrCodePlayback":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    :cond_9
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    if-eqz v15, :cond_a

    move-object v7, v13

    .line 413
    check-cast v7, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .line 414
    .local v7, "autoFcSportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v7}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoFcSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V

    .line 415
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0

    .line 416
    .end local v7    # "autoFcSportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    :cond_a
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;

    if-eqz v15, :cond_b

    move-object v8, v13

    .line 417
    check-cast v8, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;

    .line 418
    .local v8, "autoHomeInfoPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v8}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoHomeInfo(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;)V

    .line 419
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0

    .line 420
    .end local v8    # "autoHomeInfoPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;
    :cond_b
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    if-eqz v15, :cond_c

    move-object v10, v13

    .line 421
    check-cast v10, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    .line 422
    .local v10, "autoRockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v10}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoRockerState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;)V

    goto/16 :goto_0

    .line 423
    .end local v10    # "autoRockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    :cond_c
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    if-eqz v15, :cond_d

    move-object v9, v13

    .line 424
    check-cast v9, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    .line 425
    .local v9, "autoRelayHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v9}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showAutoRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V

    .line 426
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0

    .line 427
    .end local v9    # "autoRelayHeartPlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;
    :cond_d
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    if-eqz v15, :cond_e

    move-object v2, v13

    .line 428
    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    .line 429
    .local v2, "ackGetRcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v2}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showGetRcMode(Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V

    goto/16 :goto_0

    .line 430
    .end local v2    # "ackGetRcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    :cond_e
    instance-of v15, v13, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    if-eqz v15, :cond_f

    move-object v1, v13

    .line 431
    check-cast v1, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    .line 432
    .local v1, "ackGetLowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15, v1}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showGetLowPowerOpt(Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V

    .line 433
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0

    .line 436
    .end local v1    # "ackGetLowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    invoke-interface {v15}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showRemoteControlDisconnectState()V

    .line 437
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->isDroneDisConnectState:Z

    goto/16 :goto_0
.end method

.method private isEndPacket([B)Z
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 484
    array-length v1, p1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v0

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private toFlightPlaybackEntity(Ljava/util/List;I)V
    .locals 1
    .param p2, "totalPtsdTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "flightPlaybackAllDatas":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;-><init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;I)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method


# virtual methods
.method public parseFileDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public playFlightPlayback()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method public readTotalPtsdTime(Ljava/lang/String;)I
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 447
    const/4 v3, 0x0

    .line 449
    .local v3, "flightDuration":I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 451
    .local v4, "fileSize":J
    const-wide/16 v10, 0xc

    sub-long v10, v4, v10

    long-to-int v8, v10

    .line 452
    .local v8, "offset":I
    int-to-long v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 453
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    .line 454
    const/16 v9, 0xc

    new-array v0, v9, [B

    .line 455
    .local v0, "bytes":[B
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    .line 456
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    const/4 v10, -0x3

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    if-ne v9, v12, :cond_0

    .line 457
    const/4 v9, 0x4

    invoke-static {v0, v9}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToInt([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .end local v0    # "bytes":[B
    :cond_0
    move v6, v3

    .end local v3    # "flightDuration":I
    .local v6, "flightDuration":I
    move v7, v3

    .line 464
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileSize":J
    .end local v6    # "flightDuration":I
    .end local v8    # "offset":I
    .local v7, "flightDuration":I
    :goto_0
    return v7

    .line 460
    .end local v7    # "flightDuration":I
    .restart local v3    # "flightDuration":I
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v3

    .end local v3    # "flightDuration":I
    .restart local v6    # "flightDuration":I
    move v7, v3

    .line 464
    .end local v6    # "flightDuration":I
    .restart local v7    # "flightDuration":I
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "flightDuration":I
    .restart local v3    # "flightDuration":I
    :catchall_0
    move-exception v9

    move v6, v3

    .end local v3    # "flightDuration":I
    .restart local v6    # "flightDuration":I
    move v7, v3

    .end local v6    # "flightDuration":I
    .restart local v7    # "flightDuration":I
    goto :goto_0
.end method

.method public removeMessages(I)V
    .locals 1
    .param p1, "whatID"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    :cond_0
    return-void
.end method

.method public sendEmptyMessageDelayed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 494
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    :cond_0
    return-void
.end method

.method public setOnFlightPlayBackAction(Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;)V
    .locals 0
    .param p1, "iFlightPlayBackAction"    # Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->iFlightPlayBackAction:Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    .line 77
    return-void
.end method

.method public setX8ProgressLoading(Lcom/fimi/kernel/percent/PercentRelativeLayout;)V
    .locals 0
    .param p1, "x8ProgressLoading"    # Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 81
    return-void
.end method

.method public stopFlightPlayback()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    return-void
.end method
