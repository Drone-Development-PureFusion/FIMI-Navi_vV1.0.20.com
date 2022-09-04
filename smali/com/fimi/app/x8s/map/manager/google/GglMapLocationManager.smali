.class public Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;
.super Lcom/google/android/gms/location/LocationCallback;
.source "GglMapLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private accuracy:F

.field private context:Landroid/content/Context;

.field private deviceMarker:Lcom/google/android/gms/maps/model/Marker;

.field private flyPolyLine:Lcom/google/android/gms/maps/model/Polyline;

.field private home:Lcom/google/android/gms/maps/model/Marker;

.field private latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field locationMarker:Lcom/google/android/gms/maps/model/Marker;

.field private locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .locals 4
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x3e8

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->latLngs:Ljava/util/List;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->state:I

    .line 67
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 68
    iput-object p2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->buildGoogleApiClient()V

    .line 71
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v1, "Current Position"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->location_map:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 75
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getCity(Landroid/location/Location;)V

    return-void
.end method

.method private getCity(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 366
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v1, "ge":Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 369
    .local v7, "addList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 374
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 375
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 376
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 377
    .local v0, "ad":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    .line 375
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 370
    .end local v0    # "ad":Landroid/location/Address;
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 372
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->state:I

    .line 381
    return-void
.end method

.method private startMoveLocationAndMap(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 186
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const-string/jumbo v1, "\u4f4d\u7f6e"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latLng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public addDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->icon_fly_handpiece_location:I

    .line 222
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v3, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public addFlyPolyLine(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D

    .prologue
    .line 328
    return-void
.end method

.method public addHomeLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->home_point:I

    .line 211
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public animatePersonLocation()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 356
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 358
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method protected declared-synchronized buildGoogleApiClient()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public chaneDeviceAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 299
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 300
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 303
    return-void
.end method

.method public clearFlyPolyLine()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->flyPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->flyPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->flyPolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 315
    :cond_0
    return-void
.end method

.method public clearMarker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 263
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 267
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->clearFlyPolyLine()V

    .line 275
    return-void
.end method

.method public drawFlyLine()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->accuracy:F

    return v0
.end method

.method public getCityThread(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 386
    sget-object v0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 387
    const-string v0, ""

    sput-object v0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    .line 389
    :cond_0
    sget-object v0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->state:I

    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->state:I

    .line 395
    new-instance v0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;-><init>(Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;Landroid/location/Location;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDevLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevicePosition()[D
    .locals 6

    .prologue
    .line 405
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->deviceMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 407
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v2, 0x2

    new-array v1, v2, [D

    const/4 v2, 0x0

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v4, v1, v2

    .line 410
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->home:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationRequest()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;

    .line 123
    return-void
.end method

.method public moveCameraByDevice()V
    .locals 11

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 234
    .local v3, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v8, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 239
    .local v8, "zoom":F
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v7

    .line 240
    .local v7, "visibleRegion":Lcom/google/android/gms/maps/model/VisibleRegion;
    iget-object v2, v7, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    .line 243
    .local v2, "farLeft":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, v7, Lcom/google/android/gms/maps/model/VisibleRegion;->nearRight:Lcom/google/android/gms/maps/model/LatLng;

    .line 248
    .local v4, "nearRight":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v5

    .line 249
    .local v5, "point":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v6

    .line 250
    .local v6, "topLeft":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 252
    .local v1, "bottomRight":Landroid/graphics/Point;
    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->x:I

    if-gt v9, v10, :cond_2

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->x:I

    if-gt v9, v10, :cond_2

    iget v9, v6, Landroid/graphics/Point;->y:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    if-gt v9, v10, :cond_2

    iget v9, v5, Landroid/graphics/Point;->y:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    if-gt v9, v10, :cond_2

    const/4 v0, 0x1

    .line 254
    .local v0, "b":Z
    :goto_1
    if-nez v0, :cond_0

    .line 255
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v3, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    .line 252
    .end local v0    # "b":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 109
    const-string/jumbo v0, "\u4f4d\u7f6e"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLocationAvailability(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->requestLocationUpdates()V

    .line 111
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 155
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 3
    .param p1, "locationAvailability"    # Lcom/google/android/gms/location/LocationAvailability;

    .prologue
    .line 145
    const-string/jumbo v0, "\u4f4d\u7f6e"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationAvailability: isLocationAvailable =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->startMoveLocationAndMap(Landroid/location/Location;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "verticalAccuracyMeter":F
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmLongitude(D)V

    .line 168
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmLatitude(D)V

    .line 169
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmAltitude(D)V

    .line 170
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmHorizontalAccuracyMeters(F)V

    .line 171
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmVerticalAccuracyMeters(F)V

    .line 172
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmSpeed(F)V

    .line 173
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setmBearing(F)V

    .line 174
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setHasLocation(Z)V

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->accuracy:F

    .line 177
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getCityThread(Landroid/location/Location;)V

    .line 178
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 7
    .param p1, "result"    # Lcom/google/android/gms/location/LocationResult;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 126
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/TimeStampState;->getInstance()Lcom/fimi/x8sdk/modulestate/TimeStampState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fimi/x8sdk/modulestate/TimeStampState;->setTimeStamp(J)V

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 131
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->location_map:I

    .line 132
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v6, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 141
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onSensorChanged(F)V
    .locals 3
    .param p1, "degree"    # F

    .prologue
    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 205
    .local v0, "bearing":F
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationMarker:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->requestLocationUpdates()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/common/api/PendingResult;

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 88
    :cond_0
    return-void
.end method

.method public requestLocationUpdates()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->locationRequest()V

    .line 118
    :cond_0
    return-void
.end method
