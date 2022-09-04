.class public Lcom/fimi/app/x8s/tools/X8MapCalcAngle;
.super Ljava/lang/Object;
.source "X8MapCalcAngle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSlope(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 8
    .param p1, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 18
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 19
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 22
    :goto_0
    return-wide v0

    .line 21
    :cond_0
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    .line 22
    .local v0, "slope":D
    goto :goto_0
.end method

.method private getSpecialAngle(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 6
    .param p1, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 33
    const/high16 v0, 0x42b40000    # 90.0f

    .line 34
    .local v0, "angle":F
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 35
    const/high16 v0, 0x42b40000    # 90.0f

    .line 39
    :goto_0
    return v0

    .line 37
    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0
.end method

.method private toSceenAngle(DLcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 9
    .param p1, "angle"    # D
    .param p3, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-wide v6, 0x4056800000000000L    # 90.0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "a":F
    iget-wide v2, p4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 53
    sub-double v2, v6, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-float v0, v1

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double v4, v6, p1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-float v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAngle(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 8
    .param p1, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getSlope(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    .line 63
    .local v2, "k":D
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "angle":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v0, v4, v6

    .line 70
    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->toSceenAngle(DLcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v4

    float-to-double v0, v4

    .line 71
    double-to-float v4, v0

    return v4

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getSpecialAngle(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v4

    float-to-double v0, v4

    goto :goto_0
.end method

.method public getAngle2(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 12
    .param p1, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide/16 v8, 0x0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getSlope(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    .line 189
    .local v2, "k":D
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "angle":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v0, v4, v6

    .line 197
    :goto_0
    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_2

    .line 198
    cmpl-double v4, v0, v8

    if-lez v4, :cond_1

    .line 199
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v0, v4, v0

    .line 208
    :goto_1
    double-to-float v4, v0

    return v4

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getSpecialAngle(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v4

    float-to-double v0, v4

    goto :goto_0

    .line 201
    :cond_1
    neg-double v0, v0

    goto :goto_1

    .line 205
    :cond_2
    sub-double v0, v10, v0

    goto :goto_1
.end method

.method public getAnlgesByRoration(FFI)[F
    .locals 8
    .param p1, "angle1"    # F
    .param p2, "angle2"    # F
    .param p3, "roration"    # I

    .prologue
    const/high16 v7, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x43b40000    # 360.0f

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "tempAngle":F
    add-float v2, p1, v3

    rem-float p1, v2, v3

    .line 115
    add-float v2, p2, v3

    rem-float p2, v2, v3

    .line 117
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 119
    sub-float v1, p2, p1

    .line 120
    cmpl-float v2, v1, v6

    if-ltz v2, :cond_0

    .line 124
    :goto_0
    div-float/2addr v1, v4

    .line 125
    add-float v2, p1, v1

    rem-float p1, v2, v3

    .line 126
    mul-float v2, v1, v5

    div-float/2addr v2, v4

    add-float/2addr v2, p1

    rem-float p2, v2, v3

    .line 162
    :goto_1
    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->switchScreenAngle2DroneAngle(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->switchScreenAngle2DroneAngle(F)F

    move-result v3

    aput v3, v0, v2

    .line 163
    .local v0, "angleArray":[F
    return-object v0

    .line 122
    .end local v0    # "angleArray":[F
    :cond_0
    add-float/2addr v1, v3

    goto :goto_0

    .line 127
    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 129
    sub-float v1, p1, p2

    .line 130
    cmpl-float v2, v1, v6

    if-ltz v2, :cond_2

    .line 134
    :goto_2
    div-float/2addr v1, v4

    .line 135
    add-float v2, p2, v1

    rem-float p2, v2, v3

    .line 136
    mul-float v2, v1, v5

    div-float/2addr v2, v4

    add-float/2addr v2, p2

    rem-float p1, v2, v3

    goto :goto_1

    .line 132
    :cond_2
    add-float/2addr v1, v3

    goto :goto_2

    .line 139
    :cond_3
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 140
    cmpl-float v2, v1, v7

    if-lez v2, :cond_4

    .line 141
    sub-float v1, v3, v1

    .line 146
    :cond_4
    div-float/2addr v1, v4

    .line 147
    cmpl-float v2, p2, p1

    if-lez v2, :cond_5

    .line 148
    add-float v2, p1, v1

    rem-float p1, v2, v3

    .line 149
    mul-float v2, v1, v5

    div-float/2addr v2, v4

    add-float/2addr v2, p1

    rem-float p2, v2, v3

    goto :goto_1

    .line 151
    :cond_5
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 152
    add-float v2, p1, v1

    rem-float p1, v2, v3

    .line 153
    mul-float v2, v1, v5

    div-float/2addr v2, v4

    add-float/2addr v2, p1

    rem-float p2, v2, v3

    goto :goto_1

    .line 155
    :cond_6
    add-float v2, p2, v1

    rem-float p2, v2, v3

    .line 156
    mul-float v2, v1, v5

    div-float/2addr v2, v4

    add-float/2addr v2, p2

    rem-float p1, v2, v3

    goto :goto_1
.end method

.method public getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;
    .locals 18
    .param p1, "fromPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "toPoint"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "count"    # I

    .prologue
    .line 83
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_1

    .line 84
    const/4 v5, 0x0

    .line 109
    :cond_0
    return-object v5

    .line 86
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getSlope(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v6

    .line 87
    .local v6, "k":D
    add-int/lit8 v13, p3, -0x1

    new-array v5, v13, [Lcom/google/android/gms/maps/model/LatLng;

    .line 90
    .local v5, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v13, v6, v14

    if-eqz v13, :cond_2

    .line 91
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 92
    .local v2, "d":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 93
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v10, v14, v16

    .line 94
    .local v10, "lng":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    sub-double v16, v16, v10

    mul-double v16, v16, v6

    sub-double v8, v14, v16

    .line 95
    .local v8, "lat":D
    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v12, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 96
    .local v12, "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    add-int/lit8 v13, v4, -0x1

    aput-object v12, v5, v13

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "d":D
    .end local v4    # "i":I
    .end local v8    # "lat":D
    .end local v10    # "lng":D
    .end local v12    # "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 101
    .restart local v2    # "d":D
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 102
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v8, v14, v16

    .line 103
    .restart local v8    # "lat":D
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v10, v8, v9, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 104
    .local v10, "lng":Lcom/google/android/gms/maps/model/LatLng;
    add-int/lit8 v13, v4, -0x1

    aput-object v10, v5, v13

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public switchScreenAngle2DroneAngle(F)F
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 173
    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 178
    :goto_0
    return p1

    .line 176
    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr p1, v0

    goto :goto_0
.end method
