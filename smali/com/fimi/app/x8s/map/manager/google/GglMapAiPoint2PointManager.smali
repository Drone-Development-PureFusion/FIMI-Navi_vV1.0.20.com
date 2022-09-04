.class public Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;
.source "GglMapAiPoint2PointManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field isFollow:Z

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

.field private limitCircle:Lcom/google/android/gms/maps/model/Circle;

.field private mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

.field private point2PointMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

.field private pointMarker:Lcom/google/android/gms/maps/model/Marker;

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p3, "gglMapLocationManager"    # Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 52
    iput-object p3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .line 54
    return-void
.end method

.method private clearPointMark()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->clearMarker()V

    .line 139
    return-void
.end method

.method private setOnMarkerListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 187
    return-void
.end method


# virtual methods
.method public addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;)V
    .locals 11
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "distance"    # F
    .param p3, "deviceLocation"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 226
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v5, :cond_2

    .line 227
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    iput-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 228
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    const/high16 v6, 0x40a00000    # 5.0f

    iput v6, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 229
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    .line 230
    .local v1, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v0

    .line 232
    .local v0, "alt":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 233
    .local v3, "h":I
    const/4 v5, 0x5

    if-le v3, v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    int-to-float v6, v3

    iput v6, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 238
    .end local v0    # "alt":F
    .end local v3    # "h":I
    :cond_0
    new-instance v2, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    invoke-direct {v2}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;-><init>()V

    .line 239
    .local v2, "gdCustemMarkerView":Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_point2:I

    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v7, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v8, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerViewForP2P(Landroid/content/Context;IFI)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    .line 240
    .local v4, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v6, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3f666666    # 0.9f

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 241
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 242
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 246
    .end local v1    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    .end local v2    # "gdCustemMarkerView":Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
    .end local v4    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_0
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 247
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput p2, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    .line 248
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->point2PointMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v5, :cond_1

    .line 249
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->point2PointMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v6, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-interface {v5, v9, v6, v7, v10}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onMarkerSelect(ZFLcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 251
    :cond_1
    iput-boolean v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->isFollow:Z

    .line 252
    return-void

    .line 244
    :cond_2
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public calcDistance()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 220
    .local v0, "des":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v2

    double-to-float v1, v2

    .line 221
    .local v1, "distanceDes":F
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput v1, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    goto :goto_0
.end method

.method public changeDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLngDevice"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 278
    return-void
.end method

.method public changeLine()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->isFollow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->changeDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 177
    :cond_0
    return-void
.end method

.method public clearMarker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 144
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 148
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 152
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    :cond_3
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->clearFlyPolyLine()V

    .line 161
    return-void
.end method

.method public clearPoint2PointMarker()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->clearPointMark()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->isFollow:Z

    .line 131
    return-void
.end method

.method public drawAiLimit(DDD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "radiu"    # D

    .prologue
    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->lineLimitColor:I

    .line 100
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->fillColor:I

    .line 101
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->strokeWidth:I

    int-to-float v2, v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 103
    .local v0, "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 107
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLngDevice"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 257
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 258
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-nez v2, :cond_1

    .line 261
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 262
    .local v1, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 263
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_drone_inface_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 264
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 265
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 269
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    sget-object v3, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->PATTERN_DASHED:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPattern(Ljava/util/List;)V

    .line 272
    .end local v1    # "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->latLngs:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 274
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    return-void
.end method

.method public getLineAngleByMapBealing(F)F
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 6

    .prologue
    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/x8sdk/util/GpsCorrect;->Mars_To_Earth0(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    .line 113
    .local v0, "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 116
    .end local v0    # "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    return-object v1
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->onMapClickForAiP2P(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 192
    return-void
.end method

.method public onMapClickForAiP2P(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 9
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    .line 196
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 199
    .local v0, "d":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1, v0}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v4

    double-to-float v1, v4

    .line 200
    .local v1, "distance":F
    const/4 v3, 0x0

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_1

    cmpg-float v3, v1, v6

    if-gtz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;)V

    .line 214
    .end local v0    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "distance":F
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v1    # "distance":F
    :cond_1
    cmpl-float v3, v1, v6

    if-lez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_point_to_point_far:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public removeMapClickListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 87
    return-void
.end method

.method public resetMapEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 93
    return-void
.end method

.method public setMarkerByDevice(DDI)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D
    .param p5, "altitude"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 167
    .local v0, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;)V

    .line 168
    int-to-float v1, p5

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->setMarkerViewInfo(F)V

    .line 170
    .end local v0    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method public setMarkerViewInfo(F)V
    .locals 6
    .param p1, "height"    # F

    .prologue
    .line 58
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput p1, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 62
    new-instance v0, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    invoke-direct {v0}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;-><init>()V

    .line 63
    .local v0, "gdCustemMarkerView":Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
    const/4 v2, 0x0

    .line 64
    .local v2, "res":I
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-boolean v3, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v3, :cond_1

    .line 65
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_point:I

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v4, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerViewForP2P(Landroid/content/Context;IFI)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 70
    .local v1, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 67
    .end local v1    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_point2:I

    goto :goto_1
.end method

.method public setOnMapClickListener()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->setOnMarkerListener()V

    .line 81
    return-void
.end method

.method public setPoint2PointMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->point2PointMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    .line 123
    return-void
.end method

.method public setRunning()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->isFollow:Z

    .line 182
    return-void
.end method
