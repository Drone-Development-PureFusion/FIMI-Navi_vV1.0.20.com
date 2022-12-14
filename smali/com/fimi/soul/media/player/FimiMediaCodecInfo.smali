.class public Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
.super Ljava/lang/Object;
.source "FimiMediaCodecInfo.java"


# static fields
.field public static RANK_ACCEPTABLE:I = 0x0

.field public static RANK_LAST_CHANCE:I = 0x0

.field public static RANK_MAX:I = 0x0

.field public static RANK_NON_STANDARD:I = 0x0

.field public static RANK_NO_SENSE:I = 0x0

.field public static RANK_SECURE:I = 0x0

.field public static RANK_SOFTWARE:I = 0x0

.field public static RANK_TESTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FimiMediaCodecInfo"

.field private static sKnownCodecList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCodecInfo:Landroid/media/MediaCodecInfo;

.field public mMimeType:Ljava/lang/String;

.field public mRank:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x3e8

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_MAX:I

    .line 19
    const/16 v0, 0x320

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    .line 20
    const/16 v0, 0x2bc

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_ACCEPTABLE:I

    .line 21
    const/16 v0, 0x258

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_LAST_CHANCE:I

    .line 22
    const/16 v0, 0x12c

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SECURE:I

    .line 23
    const/16 v0, 0xc8

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    .line 24
    const/16 v0, 0x64

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NON_STANDARD:I

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NO_SENSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    return-void
.end method

.method private static declared-synchronized getKnownCodecList()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit v1

    return-object v0

    .line 37
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode.secure"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SECURE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Intel.hw_vd.h264"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Intel.VideoDecoder.AVC"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.qcom.video.decoder.avc"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ittiam.video.decoder.avc"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NO_SENSE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.dec"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.AVC.Decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avcdec"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.sw.dec"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Exynos.avc.dec"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Exynos.AVC.Decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.k3.video.decoder.avc"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.IMG.MSVDX.Decoder.AVC"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.TI.DUCATI1.VIDEO.DECODER"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.rk.video_decoder.avc"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.amlogic.avc.decoder.awesome"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.H264DECODER"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.BRCM.vc4.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.hw.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ST.VFM.H264Dec"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.allwinner.video.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MS.AVC.Decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.hantro.81x0.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.hisi.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.cosmo.video.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.duos.h264.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.bluestacks.hw.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.google.h264.decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.google.h264.lc.decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.k3.ffmpeg.decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ffmpeg.video.decoder"

    sget v3, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLevelName(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 244
    sparse-switch p0, :sswitch_data_0

    .line 280
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 246
    :sswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 248
    :sswitch_1
    const-string v0, "1b"

    goto :goto_0

    .line 250
    :sswitch_2
    const-string v0, "11"

    goto :goto_0

    .line 252
    :sswitch_3
    const-string v0, "12"

    goto :goto_0

    .line 254
    :sswitch_4
    const-string v0, "13"

    goto :goto_0

    .line 256
    :sswitch_5
    const-string v0, "2"

    goto :goto_0

    .line 258
    :sswitch_6
    const-string v0, "21"

    goto :goto_0

    .line 260
    :sswitch_7
    const-string v0, "22"

    goto :goto_0

    .line 262
    :sswitch_8
    const-string v0, "3"

    goto :goto_0

    .line 264
    :sswitch_9
    const-string v0, "31"

    goto :goto_0

    .line 266
    :sswitch_a
    const-string v0, "32"

    goto :goto_0

    .line 268
    :sswitch_b
    const-string v0, "4"

    goto :goto_0

    .line 270
    :sswitch_c
    const-string v0, "41"

    goto :goto_0

    .line 272
    :sswitch_d
    const-string v0, "42"

    goto :goto_0

    .line 274
    :sswitch_e
    const-string v0, "5"

    goto :goto_0

    .line 276
    :sswitch_f
    const-string v0, "51"

    goto :goto_0

    .line 278
    :sswitch_10
    const-string v0, "52"

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch
.end method

.method public static getProfileLevelName(II)Ljava/lang/String;
    .locals 5
    .param p0, "profile"    # I
    .param p1, "level"    # I

    .prologue
    .line 218
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " %s Profile Level %s (%d,%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 219
    invoke-static {p0}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->getLevelName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 218
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileName(I)Ljava/lang/String;
    .locals 1
    .param p0, "profile"    # I

    .prologue
    .line 223
    sparse-switch p0, :sswitch_data_0

    .line 239
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 225
    :sswitch_0
    const-string v0, "Baseline"

    goto :goto_0

    .line 227
    :sswitch_1
    const-string v0, "Main"

    goto :goto_0

    .line 229
    :sswitch_2
    const-string v0, "Extends"

    goto :goto_0

    .line 231
    :sswitch_3
    const-string v0, "High"

    goto :goto_0

    .line 233
    :sswitch_4
    const-string v0, "High10"

    goto :goto_0

    .line 235
    :sswitch_5
    const-string v0, "High422"

    goto :goto_0

    .line 237
    :sswitch_6
    const-string v0, "High444"

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method public static setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    .locals 8
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    if-eqz p0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 139
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NO_SENSE:I

    .line 140
    .local v5, "rank":I
    const-string v6, "omx."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NON_STANDARD:I

    .line 180
    :goto_1
    new-instance v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;

    invoke-direct {v0}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;-><init>()V

    .line 181
    .local v0, "candidate":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    iput-object p0, v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 182
    iput v5, v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    .line 183
    iput-object p1, v0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 142
    .end local v0    # "candidate":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    :cond_2
    const-string v6, "omx.pv"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    goto :goto_1

    .line 144
    :cond_3
    const-string v6, "omx.google."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    goto :goto_1

    .line 146
    :cond_4
    const-string v6, "omx.ffmpeg."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    goto :goto_1

    .line 148
    :cond_5
    const-string v6, "omx.k3.ffmpeg."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 149
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    goto :goto_1

    .line 150
    :cond_6
    const-string v6, "omx.avcodec."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 151
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_SOFTWARE:I

    goto :goto_1

    .line 152
    :cond_7
    const-string v6, "omx.ittiam."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 154
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NO_SENSE:I

    goto :goto_1

    .line 155
    :cond_8
    const-string v6, "omx.mtk."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 158
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_9

    .line 159
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_NO_SENSE:I

    goto :goto_1

    .line 161
    :cond_9
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_TESTED:I

    goto :goto_1

    .line 163
    :cond_a
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->getKnownCodecList()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 164
    .local v3, "knownRank":Ljava/lang/Integer;
    if-eqz v3, :cond_b

    .line 165
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    .line 169
    :cond_b
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 170
    .local v1, "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v1, :cond_c

    .line 171
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_ACCEPTABLE:I

    goto :goto_1

    .line 173
    :cond_c
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_LAST_CHANCE:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v1    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Throwable;
    sget v5, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_LAST_CHANCE:I

    goto/16 :goto_1
.end method


# virtual methods
.method public dumpProfileLevels(Ljava/lang/String;)V
    .locals 11
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 189
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    .line 215
    :goto_0
    return-void

    .line 193
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 194
    invoke-virtual {v6, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 195
    .local v0, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v3, 0x0

    .line 196
    .local v3, "maxProfile":I
    const/4 v2, 0x0

    .line 197
    .local v2, "maxLevel":I
    if-eqz v0, :cond_2

    .line 198
    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v6, :cond_2

    .line 199
    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 200
    .local v4, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    if-nez v4, :cond_1

    .line 199
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    :cond_1
    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 204
    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 209
    .end local v4    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2
    const-string v5, "FimiMediaCodecInfo"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 211
    invoke-static {v3, v2}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->getProfileLevelName(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 210
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "maxLevel":I
    .end local v3    # "maxProfile":I
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "FimiMediaCodecInfo"

    const-string v6, "profile-level: exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
