.class public Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "PlayBackMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/fimi/app/x8s/interfaces/GoogleMapSyncReady;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final DASH:Lcom/google/android/gms/maps/model/PatternItem;

.field private static final GAP:Lcom/google/android/gms/maps/model/PatternItem;

.field private static final PATTERN_POLYLINE_DOTTED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private circleb:Lcom/google/android/gms/maps/model/Circle;

.field private circlemid:Lcom/google/android/gms/maps/model/Circle;

.field private conf:Landroid/graphics/Bitmap$Config;

.field private droneMarker:Lcom/google/android/gms/maps/model/Marker;

.field private dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

.field private homeMarker:Lcom/google/android/gms/maps/model/Marker;

.field private isChangeCamera:Z

.field private listCircle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile listDronePoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field protected mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

.field private sharepre:Landroid/content/SharedPreferences;

.field private textMarker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    .line 64
    new-instance v0, Lcom/google/android/gms/maps/model/Dash;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    .line 65
    new-instance v0, Lcom/google/android/gms/maps/model/Gap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->GAP:Lcom/google/android/gms/maps/model/PatternItem;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->GAP:Lcom/google/android/gms/maps/model/PatternItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->isChangeCamera:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listCircle:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized FormatValueEightPoint(D)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    const-string v0, "%.8f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method private addTextToGoogleMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/Marker;
    .locals 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/16 v2, 0x14

    .line 433
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_0
    return-object v1

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->conf:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, "bmpText":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 438
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 439
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40800000    # 4.0f

    .line 440
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 437
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    goto :goto_0
.end method

.method private declared-synchronized bearAngle()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 238
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    if-eqz v0, :cond_0

    .line 239
    iget v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0    # "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 243
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createDroneMarker(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/Marker;
    .locals 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    sget v2, Lcom/fimi/app/x8s/R$drawable;->icon_fly_handpiece_location:I

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    goto :goto_0
.end method

.method private createDronePolyline(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/Polyline;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 306
    :goto_0
    return-object v1

    .line 303
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 304
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    const/16 v2, 0xf2

    const/16 v3, 0xbc

    const/16 v4, 0xd

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 305
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 306
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    goto :goto_0
.end method

.method private createRadius(Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 11
    .param p1, "position"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "flyzonetype"    # I

    .prologue
    const/16 v10, 0x7f

    const/16 v9, 0x36

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 357
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    const-string v2, "Amptype"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 359
    .local v0, "type":I
    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    .line 360
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 362
    int-to-double v2, p2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    add-int/lit8 v2, p2, 0x64

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 383
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listCircle:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 384
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 385
    int-to-double v2, p2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    int-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 400
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listCircle:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listCircle:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_2
    return-void

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 368
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 369
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    add-int/lit8 v3, p2, 0x64

    int-to-double v4, v3

    .line 370
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 371
    invoke-static {v10, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 372
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v3

    if-ne v6, v0, :cond_4

    const/16 v1, 0xcc

    const/16 v4, 0xc6

    const/16 v5, 0xc8

    const/16 v6, 0xcb

    .line 373
    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 368
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    goto :goto_0

    .line 373
    :cond_4
    const/16 v1, 0xcc

    const/16 v4, 0x65

    const/16 v5, 0x68

    const/16 v6, 0x6a

    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_2

    .line 377
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    goto/16 :goto_0

    .line 389
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 391
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    int-to-double v4, p2

    .line 392
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const/16 v3, 0xff

    .line 393
    invoke-static {v10, v3, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v8}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const/16 v3, 0x33

    const/16 v4, 0xff

    .line 395
    invoke-static {v3, v4, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    goto/16 :goto_1
.end method

.method private initMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DroneMapType"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 95
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->conf:Landroid/graphics/Bitmap$Config;

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;->update(I)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    .line 104
    .local v0, "mUiSettings":Lcom/google/android/gms/maps/UiSettings;
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 117
    return-void
.end method


# virtual methods
.method public changeDroneMarkerAngle(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->bearAngle()F

    move-result v0

    .line 227
    .local v0, "currentMapAngle":F
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 228
    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr p1, v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 232
    .end local v0    # "currentMapAngle":F
    :cond_1
    return-void
.end method

.method public changeMapType()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    const-string v2, "DroneMapType"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DroneMapType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    const/4 v0, 0x2

    .line 134
    .local v0, "valuetype":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 138
    :cond_0
    return v0

    .line 130
    .end local v0    # "valuetype":I
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DroneMapType"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    const/4 v0, 0x1

    .restart local v0    # "valuetype":I
    goto :goto_0
.end method

.method public changePolyLineList(Ljava/util/List;)V
    .locals 3
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .line 275
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-nez v0, :cond_2

    .line 280
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->createDronePolyline(Ljava/util/List;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 285
    :goto_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->isChangeCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->setChangeCamera(Z)V

    .line 287
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    goto :goto_1
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 312
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 317
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 322
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 324
    :cond_2
    return-void
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->play_back_inforwindow:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/app/x8s/R$id;->drone_location:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, "droneLocation":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-object v1
.end method

.method public getListDronePoint()Ljava/util/List;
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
    .line 424
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listDronePoint:Ljava/util/List;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listDronePoint:Ljava/util/List;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listDronePoint:Ljava/util/List;

    return-object v0
.end method

.method public handlerDroneMarker(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V
    .locals 9
    .param p1, "autoFcSportStatePlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 191
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getDeviceLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getDeviceLongitude()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 192
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getListDronePoint()Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "listDronePoint":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v4, :cond_2

    .line 197
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->createDroneMarker(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 198
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4, v8, v8}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 206
    :cond_1
    :goto_0
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->FormatValueEightPoint(D)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "limitLatitude":Ljava/lang/String;
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {p0, v4, v5}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->FormatValueEightPoint(D)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "limitLongitude":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v4, :cond_3

    .line 209
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->addTextToGoogleMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 220
    :goto_1
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->changePolyLineList(Ljava/util/List;)V

    .line 221
    return-void

    .line 202
    .end local v1    # "limitLatitude":Ljava/lang/String;
    .end local v2    # "limitLongitude":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getDeviceAngle()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->changeDroneMarkerAngle(F)V

    .line 203
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 211
    .restart local v1    # "limitLatitude":Ljava/lang/String;
    .restart local v2    # "limitLongitude":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 212
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->textMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_1
.end method

.method public handlerHomePoint(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;)V
    .locals 6
    .param p1, "autoHomeInfoPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;->getHomeLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;->getHomeLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 180
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    sget v3, Lcom/fimi/app/x8s/R$drawable;->home_point:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public isChangeCamera()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->isChangeCamera:Z

    return v0
.end method

.method public isReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 409
    return-void
.end method

.method public moveDroneMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V
    .locals 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listDronePoint":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/high16 v3, 0x3f000000    # 0.5f

    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 261
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_2

    .line 263
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->FormatValueEightPoint(D)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "limitLatitude":Ljava/lang/String;
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {p0, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->FormatValueEightPoint(D)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "limitLongitude":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 271
    .end local v0    # "limitLatitude":Ljava/lang/String;
    .end local v1    # "limitLongitude":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->changePolyLineList(Ljava/util/List;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->createDroneMarker(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 258
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2, v3, v3}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    check-cast p1, Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->sharepre:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 88
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    if-eqz v0, :cond_0

    .line 145
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mUpdateChangeMapTypeInterface:Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 149
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->homeMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 154
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->droneMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 159
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->dronePolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 164
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circleb:Lcom/google/android/gms/maps/model/Circle;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 169
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->circlemid:Lcom/google/android/gms/maps/model/Circle;

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->listCircle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onDestroy()V

    .line 175
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 415
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->initMap()V

    .line 417
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public setChangeCamera(Z)V
    .locals 0
    .param p1, "changeCamera"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->isChangeCamera:Z

    .line 346
    return-void
.end method
