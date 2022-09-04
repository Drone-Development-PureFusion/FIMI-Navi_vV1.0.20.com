.class public Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckNoFlyNormal.java"


# instance fields
.field a1:Lcom/fimi/x8sdk/entity/FLatLng;

.field a2:Lcom/fimi/x8sdk/entity/FLatLng;

.field attributeByte:S

.field b1:Lcom/fimi/x8sdk/entity/FLatLng;

.field b2:Lcom/fimi/x8sdk/entity/FLatLng;

.field c1:Lcom/fimi/x8sdk/entity/FLatLng;

.field c2:Lcom/fimi/x8sdk/entity/FLatLng;

.field center:Lcom/fimi/x8sdk/entity/FLatLng;

.field d1:Lcom/fimi/x8sdk/entity/FLatLng;

.field d2:Lcom/fimi/x8sdk/entity/FLatLng;

.field endDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

.field endDirAngleLat:D

.field endDirAngleLon:D

.field forbiddenType:I

.field heightLimit:I

.field heightLimitRadius:I

.field nfzPointA1Lat:D

.field nfzPointA1Lon:D

.field nfzPointA2Lat:D

.field nfzPointA2lon:D

.field nfzPointB1Lat:D

.field nfzPointB1Lon:D

.field nfzPointB2Lat:D

.field nfzPointB2Lon:D

.field nfzPointC1Lat:D

.field nfzPointC1Lon:D

.field nfzPointC2Lat:D

.field nfzPointC2Lon:D

.field nfzPointD1Lat:D

.field nfzPointD1Lon:D

.field nfzPointD2Lat:D

.field nfzPointD2Lon:D

.field nfzPointLat:D

.field nfzPointLon:D

.field noflyRadius:I

.field numEudges:I

.field points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/FLatLng;",
            ">;"
        }
    .end annotation
.end field

.field polygonShape:I

.field startDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

.field startDirAngleLat:D

.field startDirAngleLon:D

.field userType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getA1()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a1:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getA2()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a2:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getAttributeByte()S
    .locals 1

    .prologue
    .line 207
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    return v0
.end method

.method public getB1()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b1:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getB2()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b2:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getC1()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c1:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getC2()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c2:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getCenter()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->center:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getD1()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d1:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getD2()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d2:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getEndDirAngle()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getForbiddenType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->forbiddenType:I

    return v0
.end method

.method public getHeightLimit()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimit:I

    return v0
.end method

.method public getHeightLimitRadius()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimitRadius:I

    return v0
.end method

.method public getNfzPointA1Lat()D
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lat:D

    return-wide v0
.end method

.method public getNfzPointA1Lon()D
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lon:D

    return-wide v0
.end method

.method public getNfzPointA2Lat()D
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2Lat:D

    return-wide v0
.end method

.method public getNfzPointA2lon()D
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2lon:D

    return-wide v0
.end method

.method public getNfzPointB1Lat()D
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lat:D

    return-wide v0
.end method

.method public getNfzPointB1Lon()D
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lon:D

    return-wide v0
.end method

.method public getNfzPointB2Lat()D
    .locals 2

    .prologue
    .line 360
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lat:D

    return-wide v0
.end method

.method public getNfzPointB2Lon()D
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lon:D

    return-wide v0
.end method

.method public getNfzPointC1Lat()D
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lat:D

    return-wide v0
.end method

.method public getNfzPointC1Lon()D
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lon:D

    return-wide v0
.end method

.method public getNfzPointC2Lat()D
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lat:D

    return-wide v0
.end method

.method public getNfzPointC2Lon()D
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lon:D

    return-wide v0
.end method

.method public getNfzPointD1Lat()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lat:D

    return-wide v0
.end method

.method public getNfzPointD1Lon()D
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lon:D

    return-wide v0
.end method

.method public getNfzPointD2Lat()D
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lat:D

    return-wide v0
.end method

.method public getNfzPointD2Lon()D
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lon:D

    return-wide v0
.end method

.method public getNfzPointLat()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLat:D

    return-wide v0
.end method

.method public getNfzPointLon()D
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLon:D

    return-wide v0
.end method

.method public getNoflyRadius()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->noflyRadius:I

    return v0
.end method

.method public getNumEudges()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/FLatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->points:Ljava/util/List;

    return-object v0
.end method

.method public getPolygonShape()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    return v0
.end method

.method public getStartDirAngle()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->userType:I

    return v0
.end method

.method public setA1(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "a1"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 439
    return-void
.end method

.method public setA2(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "a2"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 447
    return-void
.end method

.method public setAttributeByte(S)V
    .locals 0
    .param p1, "attributeByte"    # S

    .prologue
    .line 211
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    .line 212
    return-void
.end method

.method public setB1(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "b1"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 423
    return-void
.end method

.method public setB2(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "b2"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 463
    return-void
.end method

.method public setC1(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "c1"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 431
    return-void
.end method

.method public setC2(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "c2"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 455
    return-void
.end method

.method public setCenter(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "center"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->center:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 407
    return-void
.end method

.method public setD1(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "d1"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 415
    return-void
.end method

.method public setD2(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "d2"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 471
    return-void
.end method

.method public setEndDirAngle(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "endDirAngle"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 261
    return-void
.end method

.method public setForbiddenType(I)V
    .locals 0
    .param p1, "forbiddenType"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->forbiddenType:I

    .line 180
    return-void
.end method

.method public setHeightLimit(I)V
    .locals 0
    .param p1, "heightLimit"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimit:I

    .line 479
    return-void
.end method

.method public setHeightLimitRadius(I)V
    .locals 0
    .param p1, "heightLimitRadius"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimitRadius:I

    .line 237
    return-void
.end method

.method public setNfzPointA1Lat(D)V
    .locals 1
    .param p1, "nfzPointA1Lat"    # D

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lat:D

    .line 317
    return-void
.end method

.method public setNfzPointA1Lon(D)V
    .locals 1
    .param p1, "nfzPointA1Lon"    # D

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lon:D

    .line 325
    return-void
.end method

.method public setNfzPointA2Lat(D)V
    .locals 1
    .param p1, "nfzPointA2Lat"    # D

    .prologue
    .line 332
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2Lat:D

    .line 333
    return-void
.end method

.method public setNfzPointA2lon(D)V
    .locals 1
    .param p1, "nfzPointA2lon"    # D

    .prologue
    .line 340
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2lon:D

    .line 341
    return-void
.end method

.method public setNfzPointB1Lat(D)V
    .locals 1
    .param p1, "nfzPointB1Lat"    # D

    .prologue
    .line 284
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lat:D

    .line 285
    return-void
.end method

.method public setNfzPointB1Lon(D)V
    .locals 1
    .param p1, "nfzPointB1Lon"    # D

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lon:D

    .line 293
    return-void
.end method

.method public setNfzPointB2Lat(D)V
    .locals 1
    .param p1, "nfzPointB2Lat"    # D

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lat:D

    .line 365
    return-void
.end method

.method public setNfzPointB2Lon(D)V
    .locals 1
    .param p1, "nfzPointB2Lon"    # D

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lon:D

    .line 373
    return-void
.end method

.method public setNfzPointC1Lat(D)V
    .locals 1
    .param p1, "nfzPointC1Lat"    # D

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lat:D

    .line 301
    return-void
.end method

.method public setNfzPointC1Lon(D)V
    .locals 1
    .param p1, "nfzPointC1Lon"    # D

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lon:D

    .line 309
    return-void
.end method

.method public setNfzPointC2Lat(D)V
    .locals 1
    .param p1, "nfzPointC2Lat"    # D

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lat:D

    .line 349
    return-void
.end method

.method public setNfzPointC2Lon(D)V
    .locals 1
    .param p1, "nfzPointC2Lon"    # D

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lon:D

    .line 357
    return-void
.end method

.method public setNfzPointD1Lat(D)V
    .locals 1
    .param p1, "nfzPointD1Lat"    # D

    .prologue
    .line 268
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lat:D

    .line 269
    return-void
.end method

.method public setNfzPointD1Lon(D)V
    .locals 1
    .param p1, "nfzPointD1Lon"    # D

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lon:D

    .line 277
    return-void
.end method

.method public setNfzPointD2Lat(D)V
    .locals 1
    .param p1, "nfzPointD2Lat"    # D

    .prologue
    .line 380
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lat:D

    .line 381
    return-void
.end method

.method public setNfzPointD2Lon(D)V
    .locals 1
    .param p1, "nfzPointD2Lon"    # D

    .prologue
    .line 388
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lon:D

    .line 389
    return-void
.end method

.method public setNfzPointLat(D)V
    .locals 1
    .param p1, "nfzPointLat"    # D

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLat:D

    .line 220
    return-void
.end method

.method public setNfzPointLon(D)V
    .locals 1
    .param p1, "nfzPointLon"    # D

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLon:D

    .line 228
    return-void
.end method

.method public setNoflyRadius(I)V
    .locals 0
    .param p1, "noflyRadius"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->noflyRadius:I

    .line 245
    return-void
.end method

.method public setNumEudges(I)V
    .locals 0
    .param p1, "numEudges"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    .line 204
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/FLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/FLatLng;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->points:Ljava/util/List;

    .line 399
    return-void
.end method

.method public setPolygonShape(I)V
    .locals 0
    .param p1, "polygonShape"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    .line 196
    return-void
.end method

.method public setStartDirAngle(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "startDirAngle"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 253
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->userType:I

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckNoFlyNormal{, forbiddenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->forbiddenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->userType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", polygonShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numEudges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributeByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightLimitRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimitRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noflyRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->noflyRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDirAngleLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDirAngleLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDirAngleLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDirAngleLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointB1Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointB1Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointC1Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointC1Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointA1Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointA1Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointA2Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointA2lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointC2Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointC2Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointB2Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointB2Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointD1Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointD1Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointD2Lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nfzPointD2Lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 10
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 89
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    .line 90
    .local v1, "payLoad4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v3

    iput-short v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    .line 91
    iget-short v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    and-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->forbiddenType:I

    .line 92
    iget-short v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->userType:I

    .line 93
    iget-short v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    .line 94
    iget-short v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->attributeByte:S

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x1f

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    .line 97
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v3

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimit:I

    .line 99
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v6, v3

    iput-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLat:D

    .line 100
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v6, v3

    iput-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLon:D

    .line 101
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLat:D

    iget-wide v8, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointLon:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->center:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 103
    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_0
    iget v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    if-nez v6, :cond_3

    :goto_1
    or-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->heightLimitRadius:I

    .line 107
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->noflyRadius:I

    .line 110
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLon:D

    .line 111
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLat:D

    .line 112
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngleLon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->startDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 115
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLon:D

    .line 116
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLat:D

    .line 117
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngleLon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->endDirAngle:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 120
    :cond_0
    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lat:D

    .line 123
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lon:D

    .line 124
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB1Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 127
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lat:D

    .line 128
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lon:D

    .line 129
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC1Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 132
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lat:D

    .line 133
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lon:D

    .line 134
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA1Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 137
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2Lat:D

    .line 138
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2lon:D

    .line 139
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointA2lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->a2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 142
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lat:D

    .line 143
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lon:D

    .line 144
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointC2Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->c2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 147
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lat:D

    .line 148
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lon:D

    .line 149
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointB2Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->b2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 152
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lat:D

    .line 153
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lon:D

    .line 154
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD1Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d1:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 157
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lat:D

    .line 158
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lon:D

    .line 159
    new-instance v3, Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v4, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lat:D

    iget-wide v6, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->nfzPointD2Lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->d2:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 163
    :cond_1
    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->polygonShape:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    if-lez v3, :cond_4

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->numEudges:I

    if-ge v0, v3, :cond_4

    .line 165
    new-instance v2, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct {v2}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>()V

    .line 166
    .local v2, "point":Lcom/fimi/x8sdk/entity/FLatLng;
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, v2, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    .line 167
    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, v2, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    .line 168
    iget-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "point":Lcom/fimi/x8sdk/entity/FLatLng;
    :cond_2
    move v3, v5

    .line 103
    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto/16 :goto_1

    .line 172
    :cond_4
    return-void
.end method
