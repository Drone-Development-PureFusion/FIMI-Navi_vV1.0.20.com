.class public Lcom/fimi/x8sdk/modulestate/ErrorCodeState;
.super Ljava/lang/Object;
.source "ErrorCodeState.java"


# static fields
.field public static a:J

.field public static appTest:Z


# instance fields
.field private atc:I

.field private lastAtc:I

.field private lastMtc:I

.field private lastNfzs:I

.field private lastRcs:I

.field private lastSystemStatusCodA:J

.field private lastSystemStatusCodB:J

.field private lastSystemStatusCodC:J

.field private mtc:I

.field private nfzs:I

.field private rcs:I

.field private systemStatusCodA:J

.field private systemStatusCodB:J

.field private systemStatusCodC:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->appTest:Z

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static setErrorCode(J)V
    .locals 0
    .param p0, "n"    # J

    .prologue
    .line 36
    sput-wide p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->a:J

    .line 37
    return-void
.end method

.method private setErrorCode(JJJ)V
    .locals 1
    .param p1, "systemStatusCodA"    # J
    .param p3, "systemStatusCodB"    # J
    .param p5, "systemStatusCodC"    # J

    .prologue
    .line 45
    sget-boolean v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->appTest:Z

    if-eqz v0, :cond_0

    .line 46
    sget-wide p3, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->a:J

    .line 50
    :cond_0
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodA:J

    .line 52
    iput-wide p3, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodB:J

    .line 53
    iput-wide p5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodC:J

    .line 55
    return-void
.end method


# virtual methods
.method public getErrooInfo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x20

    const/4 v10, 0x0

    const-wide/16 v8, 0x1

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodA:J

    iput-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    .line 83
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodB:J

    iput-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    .line 84
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodC:J

    iput-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodC:J

    .line 85
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->mtc:I

    iput v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastMtc:I

    .line 86
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->atc:I

    iput v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastAtc:I

    .line 87
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->rcs:I

    iput v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastRcs:I

    .line 88
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->nfzs:I

    iput v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastNfzs:I

    .line 89
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    cmp-long v5, v12, v6

    if-eqz v5, :cond_1

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_1

    .line 91
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    shr-long v0, v6, v2

    .line 92
    .local v0, "code":J
    and-long v6, v0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 93
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    invoke-direct {v4, v10, v2}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(II)V

    .line 94
    .local v4, "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "code":J
    .end local v2    # "i":I
    :cond_1
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    cmp-long v5, v12, v6

    if-eqz v5, :cond_3

    .line 103
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 104
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    shr-long v0, v6, v2

    .line 105
    .restart local v0    # "code":J
    and-long v6, v0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 106
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(II)V

    .line 107
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "code":J
    .end local v2    # "i":I
    :cond_3
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodC:J

    cmp-long v5, v12, v6

    if-eqz v5, :cond_5

    .line 113
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v11, :cond_5

    .line 114
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodC:J

    shr-long v0, v6, v2

    .line 115
    .restart local v0    # "code":J
    and-long v6, v0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 116
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(II)V

    .line 117
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v0    # "code":J
    .end local v2    # "i":I
    :cond_5
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastMtc:I

    if-eqz v5, :cond_6

    .line 123
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x3

    iget v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastMtc:I

    invoke-direct {v4, v5, v6, v10}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(IIZ)V

    .line 124
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_6
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastAtc:I

    if-eqz v5, :cond_7

    .line 129
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x4

    iget v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastAtc:I

    invoke-direct {v4, v5, v6, v10}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(IIZ)V

    .line 130
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_7
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastRcs:I

    if-eqz v5, :cond_9

    .line 134
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    const/16 v5, 0x8

    if-ge v2, v5, :cond_9

    .line 135
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastRcs:I

    shr-int/2addr v5, v2

    int-to-long v0, v5

    .line 136
    .restart local v0    # "code":J
    and-long v6, v0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    .line 137
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v2}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(II)V

    .line 138
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    .end local v0    # "code":J
    .end local v2    # "i":I
    :cond_9
    iget v5, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastNfzs:I

    if-eqz v5, :cond_a

    .line 143
    new-instance v4, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    const/4 v5, 0x6

    iget v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastNfzs:I

    invoke-direct {v4, v5, v6, v10}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;-><init>(IIZ)V

    .line 144
    .restart local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v4    # "mX8ErrorCodeInfo":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_a
    return-object v3
.end method

.method public getErrorCode()V
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodA:J

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    .line 59
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodB:J

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    .line 60
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodC:J

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodC:J

    .line 61
    return-void
.end method

.method public isBatteryError()Z
    .locals 14

    .prologue
    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, "ret":Z
    const/4 v9, 0x7

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 267
    .local v3, "indexA":[I
    const/4 v5, 0x0

    .line 268
    .local v5, "n":I
    const-wide/16 v0, 0x0

    .line 269
    .local v0, "code":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_1

    .line 270
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v3, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 271
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 272
    aget v9, v3, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 273
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .local v7, "ret":Z
    move v8, v6

    .line 287
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_1
    return v8

    .line 269
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/16 v9, 0x8

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 279
    .local v4, "indexB":[I
    const/4 v2, 0x0

    :goto_2
    array-length v9, v4

    if-ge v2, v9, :cond_3

    .line 280
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v4, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 281
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 282
    aget v9, v4, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 283
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 284
    .restart local v8    # "ret":I
    goto :goto_1

    .line 279
    .end local v7    # "ret":Z
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 287
    .restart local v8    # "ret":I
    goto :goto_1

    .line 266
    :array_0
    .array-data 4
        0x7
        0x8
        0x12
        0x13
        0x19
        0x1a
        0x1b
    .end array-data

    .line 277
    :array_1
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x17
        0x1b
    .end array-data
.end method

.method public isCampError()Z
    .locals 14

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, "ret":Z
    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 215
    .local v3, "indexA":[I
    const/4 v5, 0x0

    .line 216
    .local v5, "n":I
    const-wide/16 v0, 0x0

    .line 217
    .local v0, "code":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_1

    .line 218
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v3, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 219
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 220
    aget v9, v3, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 221
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .local v7, "ret":Z
    move v8, v6

    .line 235
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_1
    return v8

    .line 217
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v9, 0x3

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 227
    .local v4, "indexB":[I
    const/4 v2, 0x0

    :goto_2
    array-length v9, v4

    if-ge v2, v9, :cond_3

    .line 228
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v4, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 229
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 230
    aget v9, v4, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 231
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 232
    .restart local v8    # "ret":I
    goto :goto_1

    .line 227
    .end local v7    # "ret":Z
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 235
    .restart local v8    # "ret":I
    goto :goto_1

    .line 214
    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 225
    :array_1
    .array-data 4
        0x1
        0x3
        0x1c
    .end array-data
.end method

.method public isGimbalError()Z
    .locals 14

    .prologue
    .line 291
    const/4 v6, 0x0

    .line 292
    .local v6, "ret":Z
    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 293
    .local v3, "indexA":[I
    const/4 v5, 0x0

    .line 294
    .local v5, "n":I
    const-wide/16 v0, 0x0

    .line 295
    .local v0, "code":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_1

    .line 296
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v3, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 297
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 298
    aget v9, v3, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 299
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .local v7, "ret":Z
    move v8, v6

    .line 313
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_1
    return v8

    .line 295
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v9, 0x6

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 305
    .local v4, "indexB":[I
    const/4 v2, 0x0

    :goto_2
    array-length v9, v4

    if-ge v2, v9, :cond_3

    .line 306
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v4, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 307
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 308
    aget v9, v4, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 309
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 310
    .restart local v8    # "ret":I
    goto :goto_1

    .line 305
    .end local v7    # "ret":Z
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 313
    .restart local v8    # "ret":I
    goto :goto_1

    .line 292
    nop

    :array_0
    .array-data 4
        0xe
        0x10
    .end array-data

    .line 303
    :array_1
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
    .end array-data
.end method

.method public isGpsError()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "ret":Z
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v2, v6

    .line 188
    .local v2, "n":I
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v8, v2

    and-long v0, v6, v8

    .line 189
    .local v0, "code":J
    cmp-long v6, v0, v10

    if-nez v6, :cond_0

    .line 190
    const/4 v3, 0x1

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":Z
    move v5, v3

    .line 198
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 193
    .end local v5    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v8, v2

    and-long v0, v6, v8

    .line 194
    cmp-long v6, v0, v10

    if-nez v6, :cond_1

    .line 195
    const/4 v3, 0x1

    move v4, v3

    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    move v5, v3

    .line 196
    .restart local v5    # "ret":I
    goto :goto_0

    .end local v4    # "ret":Z
    .end local v5    # "ret":I
    .restart local v3    # "ret":Z
    :cond_1
    move v4, v3

    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    move v5, v3

    .line 198
    .restart local v5    # "ret":I
    goto :goto_0
.end method

.method public isImuError()Z
    .locals 14

    .prologue
    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, "ret":Z
    const/4 v9, 0x2

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 241
    .local v3, "indexA":[I
    const/4 v5, 0x0

    .line 242
    .local v5, "n":I
    const-wide/16 v0, 0x0

    .line 243
    .local v0, "code":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_1

    .line 244
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v3, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 245
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 246
    aget v9, v3, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 247
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .local v7, "ret":Z
    move v8, v6

    .line 261
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_1
    return v8

    .line 243
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v9, 0x2

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 253
    .local v4, "indexB":[I
    const/4 v2, 0x0

    :goto_2
    array-length v9, v4

    if-ge v2, v9, :cond_3

    .line 254
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget v9, v4, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v5, v10

    .line 255
    iget-wide v10, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v12, v5

    and-long v0, v10, v12

    .line 256
    aget v9, v4, v2

    shr-long v10, v0, v9

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 257
    const/4 v6, 0x1

    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 258
    .restart local v8    # "ret":I
    goto :goto_1

    .line 253
    .end local v7    # "ret":Z
    .end local v8    # "ret":I
    .restart local v6    # "ret":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v7, v6

    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    move v8, v6

    .line 261
    .restart local v8    # "ret":I
    goto :goto_1

    .line 240
    nop

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public isLowPower()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 163
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 164
    .local v3, "n":I
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v8, v3

    and-long v4, v6, v8

    .line 166
    .local v4, "code":J
    const/4 v0, 0x1

    .line 167
    .local v0, "b":Z
    const/4 v6, 0x7

    shr-long v6, v4, v6

    cmp-long v6, v6, v12

    if-nez v6, :cond_0

    .line 168
    const/4 v0, 0x0

    move v1, v0

    .end local v0    # "b":Z
    .local v1, "b":Z
    move v2, v0

    .line 178
    .end local v1    # "b":Z
    .local v2, "b":I
    :goto_0
    return v2

    .line 172
    .end local v2    # "b":I
    .restart local v0    # "b":Z
    :cond_0
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 173
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v8, v3

    and-long v4, v6, v8

    .line 174
    const/16 v6, 0xb

    shr-long v6, v4, v6

    cmp-long v6, v6, v12

    if-nez v6, :cond_1

    .line 175
    const/4 v0, 0x0

    move v1, v0

    .end local v0    # "b":Z
    .restart local v1    # "b":Z
    move v2, v0

    .line 176
    .restart local v2    # "b":I
    goto :goto_0

    .end local v1    # "b":Z
    .end local v2    # "b":I
    .restart local v0    # "b":Z
    :cond_1
    move v1, v0

    .end local v0    # "b":Z
    .restart local v1    # "b":Z
    move v2, v0

    .line 178
    .restart local v2    # "b":I
    goto :goto_0
.end method

.method public isMagneticError()Z
    .locals 10

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "ret":Z
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v2, v6

    .line 204
    .local v2, "n":I
    iget-wide v6, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodA:J

    int-to-long v8, v2

    and-long v0, v6, v8

    .line 205
    .local v0, "code":J
    const/16 v6, 0x14

    shr-long v6, v0, v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 206
    const/4 v3, 0x1

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":Z
    move v5, v3

    .line 209
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .end local v5    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    move v4, v3

    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    move v5, v3

    .restart local v5    # "ret":I
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 317
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodA:J

    .line 318
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodB:J

    .line 319
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->systemStatusCodC:J

    .line 320
    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->mtc:I

    .line 321
    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->atc:I

    .line 322
    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->rcs:I

    .line 323
    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->nfzs:I

    .line 325
    return-void
.end method

.method public setErroCodeAtcAndMtc(II)V
    .locals 1
    .param p1, "mtc"    # I
    .param p2, "atc"    # I

    .prologue
    .line 68
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->mtc:I

    .line 69
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->atc:I

    .line 70
    return-void
.end method

.method public setErrorCode(Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;)V
    .locals 8
    .param p1, "fcErrCode"    # Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->getSystemStatusCodA()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->getSystemStatusCodB()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->getSystemStatusCodC()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErrorCode(JJJ)V

    .line 65
    return-void
.end method

.method public setErrorCodeRcs(I)V
    .locals 0
    .param p1, "rcs"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->rcs:I

    .line 74
    return-void
.end method

.method public setNfzErrorCode(I)V
    .locals 0
    .param p1, "nfzs"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->nfzs:I

    .line 78
    return-void
.end method

.method public unMountCloud()Z
    .locals 8

    .prologue
    .line 156
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 157
    .local v2, "n":I
    iget-wide v4, p0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->lastSystemStatusCodB:J

    int-to-long v6, v2

    and-long v0, v4, v6

    .line 158
    .local v0, "code":J
    const/4 v3, 0x7

    shr-long v4, v0, v3

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
