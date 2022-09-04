.class public Lcom/fimi/app/x8s/map/model/GoogleMapPoint;
.super Ljava/lang/Object;
.source "GoogleMapPoint.java"


# instance fields
.field A1:Lcom/google/android/gms/maps/model/LatLng;

.field A2:Lcom/google/android/gms/maps/model/LatLng;

.field B1:Lcom/google/android/gms/maps/model/LatLng;

.field B2:Lcom/google/android/gms/maps/model/LatLng;

.field C1:Lcom/google/android/gms/maps/model/LatLng;

.field C2:Lcom/google/android/gms/maps/model/LatLng;

.field D1:Lcom/google/android/gms/maps/model/LatLng;

.field D2:Lcom/google/android/gms/maps/model/LatLng;

.field center:Lcom/google/android/gms/maps/model/LatLng;

.field private isNoFly:Z

.field latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private limitHight:I

.field nfzType:I

.field private points:[Lcom/fimi/app/x8s/map/model/MapPointLatLng;

.field private radius:I

.field private type:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->latLngs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getA1()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->A1:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getA2()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->A2:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getB1()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->B1:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getB2()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->B2:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getC1()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->C1:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getC2()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->C2:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->center:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getD1()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->D1:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getD2()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->D2:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLatLngs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->latLngs:Ljava/util/List;

    return-object v0
.end method

.method public getLimitHight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->limitHight:I

    return v0
.end method

.method public getNfzType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->nfzType:I

    return v0
.end method

.method public getPoints()[Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->points:[Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->radius:I

    return v0
.end method

.method public getType()Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->type:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    return-object v0
.end method

.method public isNoFly()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->isNoFly:Z

    return v0
.end method

.method public setA1(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "a1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->A1:Lcom/google/android/gms/maps/model/LatLng;

    .line 92
    return-void
.end method

.method public setA2(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "a2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->A2:Lcom/google/android/gms/maps/model/LatLng;

    .line 100
    return-void
.end method

.method public setB1(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "b1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->B1:Lcom/google/android/gms/maps/model/LatLng;

    .line 124
    return-void
.end method

.method public setB2(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "b2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->B2:Lcom/google/android/gms/maps/model/LatLng;

    .line 132
    return-void
.end method

.method public setC1(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "c1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->C1:Lcom/google/android/gms/maps/model/LatLng;

    .line 108
    return-void
.end method

.method public setC2(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "c2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->C2:Lcom/google/android/gms/maps/model/LatLng;

    .line 116
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 156
    return-void
.end method

.method public setD1(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "d1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->D1:Lcom/google/android/gms/maps/model/LatLng;

    .line 140
    return-void
.end method

.method public setD2(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "d2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->D2:Lcom/google/android/gms/maps/model/LatLng;

    .line 148
    return-void
.end method

.method public setLatLngs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->latLngs:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setLimitHight(I)V
    .locals 0
    .param p1, "limitHight"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->limitHight:I

    .line 68
    return-void
.end method

.method public setNfzType(I)V
    .locals 0
    .param p1, "nfzType"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->nfzType:I

    .line 52
    return-void
.end method

.method public setNoFly(Z)V
    .locals 0
    .param p1, "noFly"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->isNoFly:Z

    .line 41
    return-void
.end method

.method public setPoints([Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 0
    .param p1, "points"    # [Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->points:[Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 84
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->radius:I

    .line 76
    return-void
.end method

.method public setType(Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V
    .locals 0
    .param p1, "type"    # Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->type:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .line 60
    return-void
.end method
