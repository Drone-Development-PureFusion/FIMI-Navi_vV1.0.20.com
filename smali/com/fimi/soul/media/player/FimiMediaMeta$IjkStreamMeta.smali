.class public Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;
.super Ljava/lang/Object;
.source "FimiMediaMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/FimiMediaMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IjkStreamMeta"
.end annotation


# instance fields
.field public mBitrate:J

.field public mChannelLayout:J

.field public mCodecLongName:Ljava/lang/String;

.field public mCodecName:Ljava/lang/String;

.field public mCodecProfile:Ljava/lang/String;

.field public mFpsDen:I

.field public mFpsNum:I

.field public mHeight:I

.field public mIndex:I

.field public mMeta:Landroid/os/Bundle;

.field public mSampleRate:I

.field public mSarDen:I

.field public mSarNum:I

.field public mTbrDen:I

.field public mTbrNum:I

.field public mType:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mIndex:I

    .line 266
    return-void
.end method


# virtual methods
.method public getBitrateInline()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 334
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mBitrate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 335
    const-string v0, "N/A"

    .line 339
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mBitrate:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 337
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d bit/s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mBitrate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d kb/s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mBitrate:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChannelLayoutInline()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 353
    const-string v0, "N/A"

    .line 360
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 356
    const-string v0, "mono"

    goto :goto_0

    .line 357
    :cond_1
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 358
    const-string v0, "stereo"

    goto :goto_0

    .line 360
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mChannelLayout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCodecLongNameInline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    .line 310
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_1
    const-string v0, "N/A"

    goto :goto_0
.end method

.method public getFpsInline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mFpsNum:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mFpsDen:I

    if-gtz v0, :cond_1

    .line 327
    :cond_0
    const-string v0, "N/A"

    .line 329
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mFpsNum:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mFpsDen:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 282
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 289
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 298
    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getResolutionInline()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mHeight:I

    if-gtz v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "N/A"

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_1
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSarNum:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSarDen:I

    if-gtz v0, :cond_3

    .line 318
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d x %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d x %d [SAR %d:%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mHeight:I

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSarNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget v4, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSarDen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 320
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSampleRateInline()Ljava/lang/String;
    .locals 5

    .prologue
    .line 344
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSampleRate:I

    if-gtz v0, :cond_0

    .line 345
    const-string v0, "N/A"

    .line 347
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d Hz"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mSampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaMeta$IjkStreamMeta;->mMeta:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
