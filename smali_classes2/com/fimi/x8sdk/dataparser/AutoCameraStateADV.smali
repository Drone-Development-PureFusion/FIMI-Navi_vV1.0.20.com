.class public Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoCameraStateADV.java"


# static fields
.field public static final CAMERA_STATE_DELAY_PHOTOGRAPHY_START:B = 0xbt

.field public static final CAMERA_STATE_DELAY_PHOTOGRAPHY_SUCCEED:B = 0xct

.field public static final CAMERA_STATE_EXCEPTION:B = 0x6t

.field public static final CAMERA_STATE_NORMAL:B = 0x0t

.field public static final CAMERA_STATE_POWEROFF_FINLISH:B = 0xat

.field public static final CAMERA_STATE_POWEROFF_RUNNING:B = 0x7t

.field public static final CAMERA_STATE_READY:B = 0x1t

.field public static final CAMERA_STATE_REBOOT:B = 0x8t

.field public static final CAMERA_STATE_RECORDING:B = 0x2t

.field public static final CAMERA_STATE_SNAPSHOT:B = 0x9t

.field public static final CAMERA_STATE_SNAPSHOT_FAILED:B = 0x10t

.field public static final CAMERA_STATE_TAKING_PHOTO:B = 0x4t

.field public static final CAMERA_STOP_RECORDING:B = 0x3t

.field public static final CAMERA_STOP_TAKING_PHOTO:B = 0x5t

.field public static final CARD_STATE_FULLED:B = 0x5t

.field public static final CARD_STATE_FULLING:B = 0x4t

.field public static final CARD_STATE_LOWSPEED:B = 0x1t

.field public static final CARD_STATE_NORMAL:B = 0x0t

.field public static final CARD_STATE_NO_EXIST:B = 0x3t

.field public static final CARD_STATE_PARAMETERS_ERR:B = 0x2t

.field public static final CARD_STATE_SYTEM_ERR:B = 0x6t

.field public static final RECORDING_MODE_CONTINOU:B = 0x21t

.field public static final RECORDING_MODE_NORMAL:B = 0x20t

.field public static final RECORDING_MODE_SLOWMOTION:B = 0x22t

.field public static final RECORDING_MODE_TAKEPHOTO:B = 0x24t

.field public static final TAKEPHOTO_MODE_CONTINOU:B = 0x11t

.field public static final TAKEPHOTO_MODE_FULLVIEW:B = 0x14t

.field public static final TAKEPHOTO_MODE_NORMAL:B = 0x10t

.field public static final TAKEPHOTO_MODE_TIMELAPSE:B = 0x13t


# instance fields
.field private freeSpace:I

.field private info:I

.field private mode:I

.field private recHour:I

.field private recMinute:I

.field private recSecond:I

.field private recTime:S

.field private state:I

.field private totalSpace:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeSpace()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->freeSpace:I

    return v0
.end method

.method public getInfo()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->info:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->mode:I

    return v0
.end method

.method public getRecHour()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recHour:I

    return v0
.end method

.method public getRecMinute()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recMinute:I

    return v0
.end method

.method public getRecSecond()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recSecond:I

    return v0
.end method

.method public getRecTime()S
    .locals 1

    .prologue
    .line 110
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->state:I

    return v0
.end method

.method public getTotalSpace()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->totalSpace:I

    return v0
.end method

.method public isCardInfo()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->info:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelayedPhotography()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->state:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoTFCard()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->info:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreeSpace(I)V
    .locals 0
    .param p1, "freeSpace"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->freeSpace:I

    .line 131
    return-void
.end method

.method public setTotalSpace(I)V
    .locals 0
    .param p1, "totalSpace"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->totalSpace:I

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoCameraStateADV{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->info:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->freeSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->totalSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 76
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->state:I

    .line 77
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->mode:I

    .line 78
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->info:I

    .line 79
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    .line 81
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recSecond:I

    .line 82
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recMinute:I

    .line 83
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recTime:S

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->recHour:I

    .line 84
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->freeSpace:I

    .line 85
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->totalSpace:I

    .line 86
    return-void
.end method
