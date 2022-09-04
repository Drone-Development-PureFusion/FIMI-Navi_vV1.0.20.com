.class public Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;
.source "GglMapAiLineManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# instance fields
.field private final MAX:I

.field private arrowMarkerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

.field private gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private interestMarkerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private isClick:Z

.field private limitCircle:Lcom/google/android/gms/maps/model/Circle;

.field private lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

.field private mMapPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

.field private nPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p3, "gglMapLocationManager"    # Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;-><init>()V

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->MAX:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isClick:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 63
    iput-object p3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .line 64
    new-instance v0, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    invoke-direct {v0}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    .line 65
    return-void
.end method

.method private clearPointMark()V
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 676
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 678
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 679
    .restart local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_1

    .line 681
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 682
    .restart local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_2

    .line 685
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearMarker()V

    .line 686
    return-void
.end method

.method private deleteMarker(ZLcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "isMapPoint"    # Z
    .param p2, "homeLocation"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v2, 0x0

    .line 1424
    if-nez p1, :cond_3

    .line 1426
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_2

    .line 1431
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1432
    .local v0, "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-boolean v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1434
    .end local v0    # "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1436
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->deleteSmallMaker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 1437
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->removeLinePoint(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1438
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    .line 1442
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1446
    .restart local v0    # "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-boolean v1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-nez v1, :cond_6

    .line 1448
    iget-object v1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v1, :cond_4

    .line 1449
    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 1451
    :cond_4
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->resetArrowList(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 1452
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->removeLinePoint(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1453
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1454
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 1457
    :cond_5
    iget v1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v1, :cond_0

    .line 1458
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addSmallMarkerByInterest()V

    goto/16 :goto_0

    .line 1461
    :cond_6
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->removeInterestPoint()V

    goto/16 :goto_0
.end method

.method private setOnMarkerListener()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 672
    return-void
.end method


# virtual methods
.method public addInreterstMarker(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 567
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v7

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 568
    .local v3, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v4}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 569
    .local v4, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-boolean v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    .line 570
    iput-boolean v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    .line 571
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 572
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v1

    .line 573
    .local v1, "height":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 574
    .local v0, "h":I
    const/4 v7, 0x5

    if-le v0, v7, :cond_1

    .line 579
    :goto_0
    int-to-float v7, v0

    iput v7, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 580
    iget-wide v8, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v8, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 581
    iget-wide v8, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v8, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 582
    int-to-float v7, v0

    invoke-virtual {p0, v3, v7, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addInterestMarker(Lcom/google/android/gms/maps/model/LatLng;FLcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 583
    .local v2, "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 584
    invoke-virtual {v2, v6}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 585
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v7, :cond_0

    .line 587
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_2

    :goto_1
    invoke-interface {v7, v5}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onInterestSizeEnable(Z)V

    .line 589
    :cond_0
    iput-boolean v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isClick:Z

    .line 590
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 591
    return-void

    .line 577
    .end local v2    # "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .restart local v2    # "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    move v5, v6

    .line 587
    goto :goto_1
.end method

.method public addInterestByDevice(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V
    .locals 9
    .param p1, "point"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .prologue
    const/4 v8, 0x1

    .line 594
    new-instance v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v1}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 595
    .local v1, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-boolean v8, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    .line 596
    iput-boolean v8, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    .line 597
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 598
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitudePOI()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 599
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitudePOI()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 600
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitudePOI()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 601
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v6, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v3, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addInterestMarker(Lcom/google/android/gms/maps/model/LatLng;FLcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 602
    .local v0, "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 603
    invoke-virtual {v0, v8}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 604
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    return-void
.end method

.method public addInterestMarker(Lcom/google/android/gms/maps/model/LatLng;FLcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;
    .locals 7
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "h"    # F
    .param p3, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 1945
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max1:I

    .line 1946
    .local v2, "res":I
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v5, p3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerView(Landroid/content/Context;IFI)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 1948
    .local v1, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 1949
    .local v0, "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1950
    return-object v0
.end method

.method public addInterestMarkerByHistory(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;
    .locals 12
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/4 v6, 0x0

    .line 1955
    const/4 v9, 0x0

    .line 1956
    .local v9, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    const/4 v2, 0x0

    .line 1957
    .local v2, "res":I
    iget-boolean v0, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_0

    .line 1958
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max2:I

    .line 1962
    :goto_0
    const v7, 0x3f3cef81

    .line 1963
    .local v7, "anchorY":F
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    .line 1964
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v10, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v8

    .line 1965
    .local v8, "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1966
    return-object v8

    .line 1960
    .end local v7    # "anchorY":F
    .end local v8    # "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max1:I

    goto :goto_0
.end method

.method public addOrUpdateSmallMarkerForVideo(I)V
    .locals 17
    .param p1, "type"    # I

    .prologue
    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearAllSmallMarker()V

    .line 1086
    const/4 v3, 0x0

    .line 1088
    .local v3, "j":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    .line 1089
    .local v7, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1091
    .local v10, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    if-eqz v3, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1093
    .local v9, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v5, 0x0

    .line 1094
    .local v5, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v14, v3, -0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v11, v15}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 1095
    .local v4, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    const/4 v11, 0x2

    new-array v1, v11, [F

    const/4 v11, 0x0

    iget v13, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v13, v1, v11

    const/4 v11, 0x1

    iget v13, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v13, v1, v11

    .line 1096
    .local v1, "angleArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v11, v4

    if-ge v2, v11, :cond_0

    .line 1097
    new-instance v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1098
    .local v8, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1099
    aget v11, v1, v2

    invoke-virtual {v8, v11}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v14, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v15, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .line 1101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v13, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v13}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v14, v4, v2

    invoke-virtual {v13, v14}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    .line 1102
    .local v6, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v6, v8}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1103
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1107
    .end local v1    # "angleArray":[F
    .end local v2    # "i":I
    .end local v4    # "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v6    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v8    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v9    # "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1109
    goto/16 :goto_0

    .line 1111
    .end local v7    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v10    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;ZF)V
    .locals 11
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "distance"    # F
    .param p3, "deviceLocation"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "isMapPoint"    # Z
    .param p5, "angle"    # F

    .prologue
    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .end local v3    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-direct {v3}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 844
    .restart local v3    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 845
    const/4 v7, 0x0

    .line 846
    .local v7, "height":F
    if-eqz p4, :cond_3

    .line 847
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 848
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v7

    .line 849
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 850
    const/high16 v7, 0x40a00000    # 5.0f

    .line 862
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->getOration()I

    move-result v0

    iput v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 863
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 865
    .local v6, "h":I
    int-to-float v4, v6

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addPointMarker(ZLcom/google/android/gms/maps/model/LatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;FF)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v9

    .line 866
    .local v9, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 867
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 868
    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iput p2, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    .line 871
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 873
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onMarkerSizeChange(I)V

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isClick:Z

    .line 876
    if-eqz p4, :cond_4

    .line 877
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->getOration()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 878
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 879
    .local v10, "size":I
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v1, v10, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addSmallMakerByMap1(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V

    .line 887
    .end local v10    # "size":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v9}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 888
    return-void

    .line 853
    .end local v6    # "h":I
    .end local v9    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 854
    .local v8, "lastMpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v7, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 855
    goto/16 :goto_0

    .line 857
    .end local v8    # "lastMpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v7

    .line 858
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 859
    const/high16 v7, 0x40a00000    # 5.0f

    goto/16 :goto_0

    .line 882
    .restart local v6    # "h":I
    .restart local v9    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 884
    .restart local v10    # "size":I
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v1, v10, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addSmallMaker(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V

    goto :goto_1
.end method

.method public addPointMarker(ZLcom/google/android/gms/maps/model/LatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;FF)Lcom/google/android/gms/maps/model/Marker;
    .locals 14
    .param p1, "isMapPoint"    # Z
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p4, "h"    # F
    .param p5, "angle"    # F

    .prologue
    .line 1913
    const/4 v10, 0x0

    .line 1914
    .local v10, "anchorY":F
    const/4 v11, 0x0

    .line 1915
    .local v11, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    const/4 v13, 0x0

    .line 1916
    .local v13, "res":I
    if-eqz p1, :cond_0

    .line 1917
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle1:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move-object/from16 v0, p3

    iget-boolean v7, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v8, 0x0

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    .line 1918
    move/from16 v0, p4

    move-object/from16 v1, p3

    iput v0, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 1919
    move-object/from16 v0, p3

    iput-boolean p1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    .line 1920
    const v10, 0x3f249249

    move v4, v13

    .line 1930
    .end local v13    # "res":I
    .local v4, "res":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v3, v5, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v12

    .line 1931
    .local v12, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1932
    return-object v12

    .line 1922
    .end local v4    # "res":I
    .end local v12    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .restart local v13    # "res":I
    :cond_0
    move/from16 v0, p5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->angle:F

    .line 1923
    move/from16 v0, p5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 1924
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    .line 1925
    .end local v13    # "res":I
    .restart local v4    # "res":I
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move-object/from16 v0, p3

    iget v6, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    move-object/from16 v0, p3

    iget-boolean v8, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    .line 1926
    move/from16 v0, p4

    move-object/from16 v1, p3

    iput v0, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 1927
    move-object/from16 v0, p3

    iput-boolean p1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    .line 1928
    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public addPointMarkerByHistory(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;
    .locals 13
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 1970
    const/4 v10, 0x0

    .line 1971
    .local v10, "anchorY":F
    const/4 v11, 0x0

    .line 1972
    .local v11, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    const/4 v2, 0x0

    .line 1973
    .local v2, "res":I
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->getOration()I

    move-result v0

    if-nez v0, :cond_1

    .line 1974
    iget-object v0, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1977
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    .line 1978
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    .line 1979
    const v10, 0x3f249249

    .line 1991
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v12

    .line 1992
    .local v12, "marker":Lcom/google/android/gms/maps/model/Marker;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1993
    return-object v12

    .line 1982
    .end local v12    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle1:I

    iget v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v7, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v8, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    .line 1983
    const v10, 0x3f249249

    goto :goto_0

    .line 1987
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    .line 1988
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    .line 1989
    const v10, 0x3f249249

    goto :goto_0
.end method

.method public addSmallMaker(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 13
    .param p1, "marker1"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "marker2"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 918
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 919
    .local v6, "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 920
    .local v7, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v8, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v8, :cond_1

    .line 946
    :cond_0
    return-void

    .line 923
    :cond_1
    const/4 v3, 0x0

    .line 924
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v8, v9, v10, v11}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 925
    .local v2, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    const/4 v8, 0x2

    new-array v0, v8, [F

    .line 926
    .local v0, "angleArray":[F
    iget v8, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 928
    invoke-virtual {p0, v6, v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v8

    iput v8, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 929
    const/4 v8, 0x0

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    .line 930
    const/4 v8, 0x1

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    .line 936
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 937
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 938
    .local v5, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 939
    aget v8, v0, v1

    invoke-virtual {v5, v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 940
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v10, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 941
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v10, v2, v1

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 942
    .local v4, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 943
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 944
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    .end local v1    # "i":I
    .end local v4    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    iget v8, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 933
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    iget v9, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget v10, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget v11, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getAnlgesByRoration(FFI)[F

    move-result-object v0

    goto :goto_0
.end method

.method public addSmallMakerByHistory()V
    .locals 6

    .prologue
    .line 2001
    const/4 v0, 0x0

    .line 2002
    .local v0, "i":I
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 2003
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 2005
    .local v2, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    if-eqz v0, :cond_0

    .line 2006
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addSmallMakerByMap(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V

    .line 2008
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2009
    goto :goto_0

    .line 2010
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public addSmallMakerByMap(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 12
    .param p1, "marker1"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "marker2"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1046
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1047
    .local v6, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v3, 0x0

    .line 1048
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v7, v8, v9, v10}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 1049
    .local v2, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    const/4 v7, 0x2

    new-array v0, v7, [F

    const/4 v7, 0x0

    iget v8, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v8, v0, v7

    const/4 v7, 0x1

    iget v8, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v8, v0, v7

    .line 1050
    .local v0, "angleArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1051
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1052
    .local v5, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1053
    aget v7, v0, v1

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1054
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v9, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v10, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 1055
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v9, v2, v1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 1056
    .local v4, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1057
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1058
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    .end local v4    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    return-void
.end method

.method public addSmallMakerByMap1(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 13
    .param p1, "marker1"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "marker2"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 897
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 898
    .local v6, "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 899
    .local v7, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v3, 0x0

    .line 900
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v8, v9, v10, v11}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 901
    .local v2, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v6, v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 902
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    invoke-interface {v8}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->getOration()I

    move-result v8

    iput v8, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 903
    const/4 v8, 0x2

    new-array v0, v8, [F

    const/4 v8, 0x0

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    const/4 v8, 0x1

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    .line 904
    .local v0, "angleArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 905
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 906
    .local v5, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 907
    aget v8, v0, v1

    invoke-virtual {v5, v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 908
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v10, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 909
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v10, v2, v1

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 910
    .local v4, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 911
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 912
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v4    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    return-void
.end method

.method public addSmallMarkerByInterest()V
    .locals 17

    .prologue
    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearAllSmallMarker()V

    .line 1116
    const/4 v3, 0x0

    .line 1118
    .local v3, "j":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    .line 1120
    .local v7, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-lez v3, :cond_1

    .line 1121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v13, v3, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1122
    .local v9, "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1124
    .local v10, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v11, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v11, :cond_1

    .line 1125
    const/4 v5, 0x0

    .line 1126
    .local v5, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v14, v3, -0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v11, v15}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 1128
    .local v4, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    const/4 v11, 0x2

    new-array v1, v11, [F

    .line 1129
    .local v1, "angleArray":[F
    iget-object v11, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-nez v11, :cond_0

    .line 1130
    const/4 v11, 0x0

    iget v13, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v13, v1, v11

    .line 1131
    const/4 v11, 0x1

    iget v13, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v13, v1, v11

    .line 1136
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v4

    if-ge v2, v11, :cond_1

    .line 1137
    new-instance v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1138
    .local v8, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1139
    aget v11, v1, v2

    invoke-virtual {v8, v11}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v14, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v15, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .line 1141
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v13, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v13}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v14, v4, v2

    invoke-virtual {v13, v14}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    .line 1142
    .local v6, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v6, v8}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1143
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1134
    .end local v2    # "i":I
    .end local v6    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v8    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    iget v13, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget v14, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getAnlgesByRoration(FFI)[F

    move-result-object v1

    goto :goto_1

    .line 1149
    .end local v1    # "angleArray":[F
    .end local v4    # "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v9    # "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v10    # "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1150
    goto/16 :goto_0

    .line 1151
    .end local v7    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    return-void
.end method

.method public addSmallMarkerByMap(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 1001
    if-nez p1, :cond_1

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearAllInterestMarker()V

    .line 1004
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1005
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1006
    .local v2, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearAllInterestMarkerByMap(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 1007
    invoke-virtual {p0, v1, v2, v6, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeViewBySetPoints(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;ZZ)V

    .line 1009
    if-eqz v0, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addSmallMakerByMap(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;)V

    .line 1012
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1013
    goto :goto_0

    .line 1015
    .end local v0    # "i":I
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public changeAngleOrOnAngle(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 10
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p3, "isRelation"    # Z

    .prologue
    .line 1693
    const v8, 0x3f249249

    .line 1694
    .local v8, "anchorY":F
    const/4 v2, 0x0

    .line 1695
    .local v2, "res":I
    const/4 v9, 0x0

    .line 1696
    .local v9, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1697
    :cond_0
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_1

    .line 1698
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1702
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    .line 1711
    :goto_1
    invoke-virtual {p1, v9}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1712
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v8}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 1713
    return-void

    .line 1700
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_0

    .line 1704
    :cond_2
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_3

    .line 1705
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 1709
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    goto :goto_1

    .line 1707
    :cond_3
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle1:I

    goto :goto_2
.end method

.method public changeLine()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1200
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 1202
    .local v0, "c":Lcom/google/android/gms/maps/model/Polyline;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v1, "mLatLng":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 1208
    .end local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    .end local v1    # "mLatLng":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :cond_0
    return-void
.end method

.method public changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V
    .locals 6
    .param p1, "marker1"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "marker2"    # Lcom/google/android/gms/maps/model/Marker;
    .param p3, "angle"    # F
    .param p4, "type"    # I

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1883
    const/4 v0, 0x0

    .line 1884
    .local v0, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    const/4 v1, 0x0

    .line 1885
    .local v1, "res":I
    if-nez p4, :cond_1

    .line 1886
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    .line 1893
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-boolean v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    invoke-virtual {v3, v4, v1, p3, v2}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 1894
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1895
    invoke-virtual {p1, v5, v5}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 1897
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-boolean v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    invoke-virtual {v3, v4, v1, p3, v2}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 1898
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1899
    invoke-virtual {p2, v5, v5}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 1900
    return-void

    .line 1887
    :cond_1
    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    .line 1888
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small3:I

    goto :goto_0

    .line 1889
    :cond_2
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    .line 1890
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small2:I

    goto :goto_0
.end method

.method public changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 12
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p3, "isRelation"    # Z

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1650
    const/4 v9, 0x0

    .line 1651
    .local v9, "anchorY":F
    const/4 v2, 0x0

    .line 1653
    .local v2, "res":I
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    if-eqz v0, :cond_4

    .line 1654
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v0, :cond_1

    .line 1656
    const/4 v10, 0x0

    .line 1657
    .local v10, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_0

    .line 1658
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max2:I

    .line 1662
    :goto_0
    const v9, 0x3f3cef81

    .line 1663
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1664
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1665
    invoke-virtual {p1, v11, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 1688
    .end local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_1
    return-void

    .line 1660
    .restart local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_0
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max1:I

    goto :goto_0

    .line 1668
    .end local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_1
    iget-object v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_3

    .line 1670
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1671
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_2

    .line 1672
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1676
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-object v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v7, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointWithPioView(Landroid/content/Context;IFIIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1677
    .restart local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1678
    invoke-virtual {p1, v11, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_1

    .line 1674
    .end local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_2

    .line 1681
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeAngleOrOnAngle(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_1

    .line 1686
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeAngleOrOnAngle(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_1
.end method

.method public changeViewByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 12
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 1836
    const/4 v3, 0x0

    .line 1837
    .local v3, "res":I
    const/4 v9, 0x0

    .line 1838
    .local v9, "anchorY":F
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v0, :cond_0

    .line 1876
    :goto_0
    return-void

    .line 1841
    :cond_0
    iget-object v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_3

    .line 1842
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v0, :cond_1

    .line 1843
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1847
    :goto_1
    const v9, 0x3f2f4450

    .line 1849
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isExecuteCurveProcess"

    invoke-virtual {v0, v1, v8}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1850
    const/4 v2, -0x1

    .line 1854
    .local v2, "actionRes":I
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v7, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointEventWithPioView(Landroid/content/Context;IIFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1855
    .local v10, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1856
    invoke-virtual {p1, v11, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_0

    .line 1845
    .end local v2    # "actionRes":I
    .end local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_1
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    goto :goto_1

    .line 1852
    :cond_2
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getCurrentPointActionRes(I)I

    move-result v2

    .restart local v2    # "actionRes":I
    goto :goto_2

    .line 1858
    .end local v2    # "actionRes":I
    :cond_3
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v0, :cond_4

    .line 1859
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 1863
    :goto_3
    const v9, 0x3f4bd648

    .line 1865
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isExecuteCurveProcess"

    invoke-virtual {v0, v1, v8}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1866
    const/4 v2, -0x1

    .line 1870
    .restart local v2    # "actionRes":I
    :goto_4
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v7, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointEventNoPioView(Landroid/content/Context;IIFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1871
    .restart local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1872
    invoke-virtual {p1, v11, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_0

    .line 1861
    .end local v2    # "actionRes":I
    .end local v10    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_4
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    goto :goto_3

    .line 1868
    :cond_5
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getCurrentPointActionRes(I)I

    move-result v2

    .restart local v2    # "actionRes":I
    goto :goto_4
.end method

.method public changeViewBySetPoints(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;ZZ)V
    .locals 11
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p3, "isRelation"    # Z
    .param p4, "isRun"    # Z

    .prologue
    .line 1716
    const/4 v9, 0x0

    .line 1717
    .local v9, "anchorY":F
    const/4 v2, 0x0

    .line 1718
    .local v2, "res":I
    const/4 v10, 0x0

    .line 1719
    .local v10, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    if-eqz v0, :cond_c

    .line 1720
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v0, :cond_0

    .line 1721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 1833
    :goto_0
    return-void

    .line 1723
    :cond_0
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v0, :cond_6

    .line 1725
    iget-object v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_3

    .line 1727
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1728
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_1

    .line 1729
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1738
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-object v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v7, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointWithPioView(Landroid/content/Context;IFIIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1757
    :goto_2
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1758
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_0

    .line 1731
    :cond_1
    if-eqz p4, :cond_2

    .line 1732
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_angle1:I

    goto :goto_1

    .line 1734
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_1

    .line 1742
    :cond_3
    const v9, 0x3f249249

    .line 1743
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_4

    .line 1744
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 1753
    :goto_3
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1754
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1755
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_2

    .line 1746
    :cond_4
    if-eqz p4, :cond_5

    .line 1747
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_no_angle1:I

    goto :goto_3

    .line 1749
    :cond_5
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle1:I

    goto :goto_3

    .line 1761
    :cond_6
    iget-object v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_9

    .line 1763
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1764
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_7

    .line 1765
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1773
    :goto_4
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-object v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v7, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointWithPioView(Landroid/content/Context;IFIIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1792
    :goto_5
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1793
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto/16 :goto_0

    .line 1767
    :cond_7
    if-eqz p4, :cond_8

    .line 1768
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_angle1:I

    goto :goto_4

    .line 1770
    :cond_8
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_4

    .line 1777
    :cond_9
    const v9, 0x3f249249

    .line 1778
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_a

    .line 1779
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1788
    :goto_6
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_5

    .line 1781
    :cond_a
    if-eqz p4, :cond_b

    .line 1782
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_angle1:I

    goto :goto_6

    .line 1784
    :cond_b
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_6

    .line 1798
    :cond_c
    iget v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v0, :cond_f

    .line 1800
    const v9, 0x3f249249

    .line 1801
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_d

    .line 1802
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 1811
    :goto_7
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-boolean v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1812
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1813
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto/16 :goto_0

    .line 1804
    :cond_d
    if-eqz p4, :cond_e

    .line 1805
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_no_angle1:I

    goto :goto_7

    .line 1807
    :cond_e
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle1:I

    goto :goto_7

    .line 1816
    :cond_f
    const v9, 0x3f249249

    .line 1817
    iget-boolean v0, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v0, :cond_10

    .line 1818
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle2:I

    .line 1827
    :goto_8
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget v5, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget-boolean v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    .line 1828
    invoke-virtual {p1, v10}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1829
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto/16 :goto_0

    .line 1820
    :cond_10
    if-eqz p4, :cond_11

    .line 1821
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_run_angle1:I

    goto :goto_8

    .line 1823
    :cond_11
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    goto :goto_8
.end method

.method public clearAiLineMarker()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->clearPointMark()V

    .line 299
    return-void
.end method

.method public clearAllInterestMarker()V
    .locals 4

    .prologue
    .line 1018
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1020
    .local v0, "lastMp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-boolean v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v2, :cond_0

    .line 1021
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1025
    .end local v0    # "lastMp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1026
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1028
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1029
    return-void
.end method

.method public clearAllInterestMarkerByMap(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 2
    .param p1, "tmp"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 1035
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, "isRelation":Z
    return-void
.end method

.method public clearAllSmallMarker()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1064
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1065
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1067
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, "i":I
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1071
    .restart local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1072
    .local v2, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-boolean v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1073
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v3, v2, :cond_1

    .line 1075
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1077
    :cond_1
    invoke-virtual {p0, v1, v2, v5, v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeViewBySetPoints(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;ZZ)V

    .line 1078
    add-int/lit8 v0, v0, 0x1

    .line 1079
    goto :goto_1

    .line 1081
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    return-void
.end method

.method public clearMarker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1337
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 1339
    .local v0, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    .line 1342
    .end local v0    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v1, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1344
    iput-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 1349
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1350
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1351
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1352
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1353
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1354
    iput-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1355
    return-void
.end method

.method public deleteMarker(Z)V
    .locals 1
    .param p1, "isMapPoint"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->deleteMarker(ZLcom/google/android/gms/maps/model/LatLng;)V

    .line 153
    return-void
.end method

.method public deleteSmallMaker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 7
    .param p1, "deleteMarker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 949
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 950
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 951
    .local v4, "target":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v0, v5, -0x1

    .line 952
    .local v0, "index":I
    if-nez v0, :cond_1

    .line 965
    .end local v0    # "index":I
    .end local v4    # "target":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    :goto_0
    return-void

    .line 955
    .restart local v0    # "index":I
    .restart local v4    # "target":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v3, v5, 0x2

    .line 956
    .local v3, "n":I
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_0

    .line 957
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 958
    .local v1, "m1":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 959
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 960
    .local v2, "m2":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 961
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 962
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public drawAiLimit(DDD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "radiu"    # D

    .prologue
    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineLimitColor:I

    .line 109
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->fillColor:I

    .line 110
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->strokeWidth:I

    int-to-float v2, v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 112
    .local v0, "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 116
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5
    .param p1, "latLngDevice"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1164
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1165
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1166
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 1167
    .local v1, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    .line 1169
    .end local v1    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1171
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1172
    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 1174
    .local v2, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    if-nez v0, :cond_2

    .line 1175
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1176
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1182
    :goto_2
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineDefaultColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1183
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1184
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    .line 1185
    .restart local v1    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    sget-object v3, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->PATTERN_DASHED:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPattern(Ljava/util/List;)V

    .line 1188
    :try_start_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1178
    .end local v1    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 1179
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_2

    .line 1195
    .end local v0    # "i":I
    .end local v2    # "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    :cond_3
    return-void

    .line 1189
    .restart local v0    # "i":I
    .restart local v1    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    .restart local v2    # "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public findIndexByInterest(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)I
    .locals 4
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 475
    const/4 v2, -0x1

    .line 477
    .local v2, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 479
    .local v0, "current":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v3, :cond_1

    .line 480
    add-int/lit8 v2, v2, 0x1

    .line 481
    if-ne p1, v0, :cond_1

    .line 486
    .end local v0    # "current":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    return v2

    .line 477
    .restart local v0    # "current":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findInterestPoint(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;Ljava/util/List;)I
    .locals 8
    .param p1, "point"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 608
    .local p2, "interestPoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;>;"
    const/4 v0, -0x1

    .line 609
    .local v0, "i":I
    const/4 v1, 0x0

    .line 610
    .local v1, "isFind":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .line 611
    .local v2, "o":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    add-int/lit8 v0, v0, 0x1

    .line 612
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitudePOI()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitudePOI()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitudePOI()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitudePOI()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitudePOI()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitudePOI()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 614
    const/4 v1, 0x1

    .line 619
    .end local v2    # "o":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    :cond_1
    if-nez v1, :cond_2

    .line 620
    const/4 v0, -0x1

    .line 622
    :cond_2
    return v0
.end method

.method public findInterestPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Ljava/util/List;)V
    .locals 6
    .param p1, "point"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1246
    .local p2, "interests":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1247
    .local v0, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    iget-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 1248
    iget-object v1, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1252
    .end local v0    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public getAiLineDistance()F
    .locals 7

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "distance":F
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 164
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v4

    double-to-float v0, v4

    move v1, v0

    .end local v0    # "distance":F
    .local v1, "distance":F
    move v2, v0

    .line 172
    .end local v1    # "distance":F
    .local v2, "distance":F
    :goto_0
    return v2

    .line 167
    .end local v2    # "distance":F
    .restart local v0    # "distance":F
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 168
    if-eqz v3, :cond_1

    .line 169
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v0, v4

    .line 167
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .end local v0    # "distance":F
    .restart local v1    # "distance":F
    move v2, v0

    .line 172
    .end local v1    # "distance":F
    .restart local v2    # "distance":F
    goto :goto_0
.end method

.method public getAiLinePointSize()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPointActionRes(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 1387
    :goto_0
    return v0

    .line 1361
    :pswitch_0
    const/4 v0, -0x1

    .line 1363
    goto :goto_0

    .line 1366
    :pswitch_1
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_na1:I

    .line 1367
    goto :goto_0

    .line 1369
    :pswitch_2
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_hover1:I

    .line 1370
    goto :goto_0

    .line 1372
    :pswitch_3
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_record1:I

    .line 1373
    goto :goto_0

    .line 1375
    :pswitch_4
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_4x_slow1:I

    .line 1376
    goto :goto_0

    .line 1378
    :pswitch_5
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_one_photo1:I

    .line 1379
    goto :goto_0

    .line 1381
    :pswitch_6
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_5s_photo1:I

    .line 1382
    goto :goto_0

    .line 1384
    :pswitch_7
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_action_three_photo1:I

    goto :goto_0

    .line 1359
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDistance(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
    .locals 8
    .param p1, "points1"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "points2"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 1315
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v2

    double-to-float v0, v2

    .line 1316
    .local v0, "distance":F
    return v0
.end method

.method public getInterestPointList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-object v1
.end method

.method public getInterstMakerLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineAngleByMapBealing(F)F
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    sub-float/2addr p1, v0

    .line 83
    return p1
.end method

.method public getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 2

    .prologue
    .line 558
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 562
    :goto_0
    return-object v0

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 562
    .local v0, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    goto :goto_0
.end method

.method public getMapPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    return-object v0
.end method

.method public getMapPointList(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Ljava/util/List;
    .locals 4
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 184
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v3, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-nez v3, :cond_1

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object v3, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v3, p1, :cond_0

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    return-object v0
.end method

.method public getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
    .locals 9
    .param p1, "from"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "to"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/high16 v8, 0x43b40000    # 360.0f

    .line 641
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v6, p2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getAngle(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 643
    .local v0, "angle":F
    rem-float/2addr v0, v8

    .line 644
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 645
    add-float/2addr v0, v8

    .line 647
    :cond_0
    return v0
.end method

.method public getPolyline(ILcom/google/android/gms/maps/model/Polyline;I)Lcom/google/android/gms/maps/model/Polyline;
    .locals 4
    .param p1, "index"    # I
    .param p2, "pl"    # Lcom/google/android/gms/maps/model/Polyline;
    .param p3, "color"    # I

    .prologue
    .line 490
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 491
    .local v1, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 492
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 493
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 494
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    .line 495
    .local v0, "line":Lcom/google/android/gms/maps/model/Polyline;
    sget-object v2, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->PATTERN_DASHED:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/Polyline;->setPattern(Ljava/util/List;)V

    .line 496
    return-object v0
.end method

.method public hasPointUnBind()Z
    .locals 5

    .prologue
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/4 v2, 0x0

    .line 250
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 251
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v4, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-nez v4, :cond_0

    .line 252
    const/4 v2, 0x1

    .line 256
    .end local v1    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return v2
.end method

.method public isFarToHome()Z
    .locals 8

    .prologue
    .line 1321
    const/4 v2, 0x0

    .line 1322
    .local v2, "isFar":Z
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 1323
    .local v4, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    .line 1324
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1325
    .local v1, "hoem":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 1326
    .local v3, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v3, v1}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v6

    double-to-float v0, v6

    .line 1327
    .local v0, "distanceHome":F
    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_0

    .line 1328
    const/4 v2, 0x1

    .line 1332
    .end local v0    # "distanceHome":F
    .end local v1    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    return v2
.end method

.method public isFullSize()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterestBeBind(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Z
    .locals 5
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/4 v2, 0x0

    .line 199
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 200
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v4, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v4, p1, :cond_0

    .line 201
    const/4 v2, 0x1

    .line 205
    .end local v1    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return v2
.end method

.method public isValid(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 12
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 127
    const/4 v2, 0x1

    .line 128
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    move v3, v2

    .end local v2    # "ret":Z
    .local v3, "ret":Z
    move v4, v2

    .line 139
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 131
    .end local v4    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 132
    .local v1, "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-wide v10, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v6}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v6

    double-to-float v0, v6

    .line 133
    .local v0, "distance":F
    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_1

    .line 134
    const/4 v2, 0x0

    .end local v0    # "distance":F
    .end local v1    # "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    move v3, v2

    .end local v2    # "ret":Z
    .restart local v3    # "ret":Z
    move v4, v2

    .line 139
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public lightInterestPointByRunning(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 4
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "isLight"    # Z

    .prologue
    .line 774
    iget-boolean v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    if-eqz v2, :cond_1

    .line 776
    iget-object v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v2, :cond_1

    .line 777
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 778
    .local v0, "interest":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-object v1, v2

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 779
    .local v1, "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v2, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v2, v1, :cond_0

    .line 780
    iput-boolean p2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 781
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 788
    .end local v0    # "interest":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 5
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "isRelation"    # Z

    .prologue
    .line 743
    iget-boolean v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    if-eqz v3, :cond_3

    .line 744
    iget-boolean v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v3, :cond_1

    .line 745
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 747
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-object v2, v3

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 748
    .local v2, "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v3, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v3, p1, :cond_0

    .line 749
    invoke-virtual {p0, v1, v2, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_0

    .line 754
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    iget-object v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v3, :cond_3

    .line 755
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 756
    .local v0, "interest":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-object v2, v3

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 757
    .restart local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v3, v2, :cond_2

    .line 758
    invoke-virtual {p0, v0, v2, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 765
    .end local v0    # "interest":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    return-void
.end method

.method public notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 4
    .param p1, "des"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 657
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 658
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 659
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    if-ne p1, v1, :cond_0

    .line 660
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 661
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 665
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 0
    .param p1, "des"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "isRelation"    # Z

    .prologue
    .line 652
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 653
    return-void
.end method

.method public onAiLineAddPoint(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1622
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1623
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 1625
    .local v6, "d":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    .line 1626
    .local v8, "hoem":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1, v8}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v0

    double-to-float v7, v0

    .line 1627
    .local v7, "distanceHome":F
    cmpg-float v0, v7, v3

    if-gtz v0, :cond_2

    .line 1628
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isValid(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    invoke-static {p1, v6}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v0

    double-to-float v2, v0

    .line 1630
    .local v2, "distance":F
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;ZF)V

    .line 1643
    .end local v2    # "distance":F
    .end local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "distanceHome":F
    .end local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-void

    .line 1632
    .restart local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v7    # "distanceHome":F
    .restart local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_magin:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3, v5, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1633
    .local v9, "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-static {v0, v9, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1636
    .end local v9    # "t":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_point_to_point_far:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1637
    .restart local v9    # "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-static {v0, v9, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1641
    .end local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "distanceHome":F
    .end local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    .end local v9    # "t":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_max:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAiLineAddPoint(Lcom/google/android/gms/maps/model/LatLng;FF)V
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "height"    # F
    .param p3, "angle"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1398
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 1401
    .local v6, "d":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    .line 1402
    .local v8, "hoem":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1, v8}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v0

    double-to-float v7, v0

    .line 1403
    .local v7, "distanceHome":F
    cmpg-float v0, v7, v3

    if-gtz v0, :cond_2

    .line 1404
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isValid(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    invoke-static {p1, v6}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v0

    double-to-float v2, v0

    .line 1406
    .local v2, "distance":F
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addPointLatLng(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;ZF)V

    .line 1421
    .end local v2    # "distance":F
    .end local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "distanceHome":F
    .end local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-void

    .line 1408
    .restart local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v7    # "distanceHome":F
    .restart local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_magin:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3, v4, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1409
    .local v9, "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-static {v0, v9, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1413
    .end local v9    # "t":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_point_to_point_far:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1414
    .restart local v9    # "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    invoke-static {v0, v9, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1419
    .end local v6    # "d":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "distanceHome":F
    .end local v8    # "hoem":Lcom/google/android/gms/maps/model/LatLng;
    .end local v9    # "t":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_max:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMapClickForAiLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 691
    return-void
.end method

.method public onMapClickForAiLine(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isOnMapClickValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1614
    :goto_0
    return-void

    .line 1613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onAiLineAddPoint(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 695
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isOnMarkerClickValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v8

    .line 698
    :cond_1
    const/4 v3, 0x0

    .line 700
    .local v3, "res":I
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 701
    .local v2, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    if-eqz v2, :cond_0

    .line 704
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v4, :cond_3

    .line 705
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 706
    iput-boolean v6, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 707
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 708
    invoke-virtual {p0, p1, v2, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 709
    invoke-virtual {p0, v2, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 729
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-boolean v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    iget v6, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget-boolean v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isClick:Z

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onMarkerSelect(ZFLcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 730
    iput-boolean v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->isClick:Z

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 713
    .local v0, "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 714
    .local v1, "lastMp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-boolean v6, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 715
    invoke-virtual {p0, v0, v1, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 716
    invoke-virtual {p0, v1, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 718
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 719
    iput-boolean v8, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 720
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v4, v2, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 721
    invoke-virtual {p0, v2, v8}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_1

    .line 724
    .end local v0    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "lastMp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 725
    iput-boolean v8, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 726
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v4, v2, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 727
    invoke-virtual {p0, v2, v8}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 800
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v3, :cond_0

    .line 801
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    invoke-interface {v3}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->getDeletePosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 802
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 803
    .local v0, "mLatlng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 805
    .local v1, "mPoint":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_0

    .line 808
    .end local v0    # "mLatlng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "mPoint":Landroid/graphics/Point;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 12
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v5, 0x0

    .line 812
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max1:I

    .line 813
    .local v2, "res":I
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 814
    .local v9, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    .line 815
    .local v8, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p1, v8}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 816
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 817
    .local v11, "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isInrertestPointActive:Z

    .line 818
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v0, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 819
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v0, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 821
    const/4 v7, 0x0

    .line 822
    .local v7, "i":I
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 823
    .local v10, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v11, v0, :cond_0

    .line 825
    invoke-virtual {p0, v10, v11}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 826
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v0, v10, v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 828
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 829
    goto :goto_0

    .line 830
    .end local v10    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 792
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max2:I

    .line 793
    .local v2, "res":I
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 794
    .local v8, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget v3, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v4, v8, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    .line 795
    .local v7, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p1, v7}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 796
    return-void
.end method

.method public removeInterestPoint()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1583
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1584
    .local v4, "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v0, 0x0

    .line 1585
    .local v0, "i":I
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1586
    .local v2, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v4, v5, :cond_0

    .line 1587
    iput-object v8, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1589
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v5, v2, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 1591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1592
    goto :goto_0

    .line 1593
    .end local v2    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1594
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1596
    const/4 v0, 0x0

    .line 1597
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1598
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    add-int/lit8 v0, v0, 0x1

    .line 1599
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1600
    .local v3, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1601
    invoke-virtual {p0, v1, v3, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_1

    .line 1603
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    iput-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1604
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v5, :cond_3

    .line 1605
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v8, 0x14

    if-ge v5, v8, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v7, v5}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onInterestSizeEnable(Z)V

    .line 1607
    :cond_3
    return-void

    :cond_4
    move v5, v6

    .line 1605
    goto :goto_2
.end method

.method public removeInterestUnBebind()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "tmp":Lcom/google/android/gms/maps/model/Marker;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 212
    .local v2, "m":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 213
    .local v4, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v1, 0x0

    .line 214
    .local v1, "isFind":Z
    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 215
    .local v5, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v11, :cond_1

    iget-object v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v11, v4, :cond_1

    .line 216
    const/4 v1, 0x1

    .line 221
    .end local v5    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    if-nez v1, :cond_0

    .line 222
    move-object v7, v2

    .line 226
    .end local v1    # "isFind":Z
    .end local v2    # "m":Lcom/google/android/gms/maps/model/Marker;
    .end local v4    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    if-eqz v7, :cond_5

    .line 227
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    const/4 v6, 0x0

    .line 232
    .local v6, "res":I
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 233
    .local v3, "marker":Lcom/google/android/gms/maps/model/Marker;
    add-int/lit8 v0, v0, 0x1

    .line 234
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 235
    .restart local v5    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 236
    invoke-virtual {p0, v3, v5, v8}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_0

    .line 238
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_4
    const/4 v7, 0x0

    .line 240
    .end local v0    # "i":I
    .end local v6    # "res":I
    :cond_5
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v9, :cond_7

    .line 241
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x14

    if-ge v10, v11, :cond_6

    const/4 v8, 0x1

    :cond_6
    invoke-interface {v9, v8}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onInterestSizeEnable(Z)V

    .line 243
    :cond_7
    return-void
.end method

.method public removeInterstPointByRunning()V
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 635
    .local v0, "m":Lcom/google/android/gms/maps/model/Marker;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    goto :goto_0

    .line 637
    .end local v0    # "m":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    return-void
.end method

.method public removeLinePoint(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 12
    .param p1, "homeLocation"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1544
    const/4 v5, 0x0

    .line 1545
    .local v5, "removeMapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1546
    .local v2, "mMapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1547
    .local v1, "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v10, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 1549
    move-object v5, v2

    .line 1553
    .end local v1    # "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "mMapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    if-eqz v5, :cond_2

    .line 1554
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1557
    :cond_2
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 1558
    .local v3, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-ne v8, v3, :cond_3

    .line 1562
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_4
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1563
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "i":I
    const/4 v6, 0x0

    .line 1568
    .local v6, "res":I
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 1569
    .restart local v3    # "marker":Lcom/google/android/gms/maps/model/Marker;
    add-int/lit8 v0, v0, 0x1

    .line 1570
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1571
    .local v4, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput v0, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1572
    const/4 v8, 0x0

    invoke-virtual {p0, v3, v4, v8}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_0

    .line 1574
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v4    # "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1575
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1576
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onMarkerSizeChange(I)V

    .line 1579
    return-void
.end method

.method public removeMapClickListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 95
    return-void
.end method

.method public removeMarkerListener()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 120
    return-void
.end method

.method public resetArrowList(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 8
    .param p1, "tmp"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/4 v7, 0x1

    .line 1472
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1473
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1475
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1476
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v4, v5, 0x2

    .line 1477
    .local v4, "n":I
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-ge v5, v6, :cond_1

    .line 1515
    .end local v4    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 1478
    .restart local v4    # "n":I
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 1479
    .local v0, "m1":Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1480
    .local v1, "m2":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1481
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1482
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1483
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1484
    .end local v0    # "m1":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "m2":Lcom/google/android/gms/maps/model/Marker;
    .end local v4    # "n":I
    :cond_2
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    if-ne v5, v7, :cond_3

    .line 1485
    const/4 v4, 0x0

    .line 1486
    .restart local v4    # "n":I
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 1487
    .restart local v0    # "m1":Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1488
    .restart local v1    # "m2":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1489
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1490
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1491
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1494
    .end local v0    # "m1":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "m2":Lcom/google/android/gms/maps/model/Marker;
    .end local v4    # "n":I
    :cond_3
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v4, v5, 0x2

    .line 1495
    .restart local v4    # "n":I
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-lt v5, v6, :cond_0

    .line 1496
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 1497
    .restart local v0    # "m1":Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1498
    .restart local v1    # "m2":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1499
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1500
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1501
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1503
    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v4, v5, 0x2

    .line 1504
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 1505
    .local v2, "m3":Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 1506
    .local v3, "m4":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1507
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1508
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1509
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1510
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget v7, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v5, v6, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->resetSmallMakerByMap(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;I)V

    goto/16 :goto_0
.end method

.method public resetMapEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->removeMarkerListener()V

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 102
    return-void
.end method

.method public resetSmallMakerByMap(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;I)V
    .locals 13
    .param p1, "marker1"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "marker2"    # Lcom/google/android/gms/maps/model/Marker;
    .param p3, "n"    # I

    .prologue
    .line 1524
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1525
    .local v6, "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1526
    .local v7, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v3, 0x0

    .line 1527
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v8, v9, v10, v11}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getLineLatLngInterval(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 1528
    .local v2, "latLng":[Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v6, v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1529
    const/4 v8, 0x2

    new-array v0, v8, [F

    const/4 v8, 0x0

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    const/4 v8, 0x1

    iget v9, v7, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    aput v9, v0, v8

    .line 1530
    .local v0, "angleArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 1531
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1532
    .local v5, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 1533
    aget v8, v0, v1

    invoke-virtual {v5, v8}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1534
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v10, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 1535
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    aget-object v10, v2, v1

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 1536
    .local v4, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1537
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1538
    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int v9, p3, v1

    invoke-interface {v8, v9, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1541
    .end local v4    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    return-void
.end method

.method public setAiLineIndexPoint(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 336
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-eq v9, p1, :cond_0

    .line 338
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 339
    move v2, p1

    .line 341
    .local v2, "i":I
    if-ltz v2, :cond_5

    .line 343
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 344
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v3, :cond_1

    .line 469
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    :goto_1
    return-void

    .line 346
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_1
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 347
    .local v4, "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 348
    .local v5, "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 349
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v4, v5, v9, v10}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeViewBySetPoints(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;ZZ)V

    .line 350
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightInterestPointByRunning(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    .end local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-ge v3, v2, :cond_5

    .line 354
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v3, :cond_0

    .line 356
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 357
    .restart local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 358
    .restart local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v9, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v9, :cond_4

    .line 359
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 360
    iget-object v9, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v9, :cond_3

    .line 362
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->findIndexByInterest(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)I

    move-result v8

    .line 363
    .local v8, "nIindex":I
    mul-int/lit8 v7, v8, 0x2

    .line 364
    .local v7, "n":I
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v7, 0x1

    if-le v9, v10, :cond_3

    .line 365
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x2

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    .line 353
    .end local v7    # "n":I
    .end local v8    # "nIindex":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 371
    :cond_4
    mul-int/lit8 v7, v3, 0x2

    .line 372
    .restart local v7    # "n":I
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v7, 0x1

    if-le v9, v10, :cond_3

    .line 373
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x2

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    goto :goto_3

    .line 381
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v7    # "n":I
    :cond_5
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-ltz v9, :cond_6

    .line 383
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 384
    .restart local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 385
    .restart local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 386
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v4, v5, v9, v10}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeViewBySetPoints(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;ZZ)V

    .line 387
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightInterestPointByRunning(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 390
    .end local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_6
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 391
    .local v1, "currentMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 392
    .local v6, "mapPointLatLng":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 394
    invoke-virtual {p0, v1, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeViewByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 396
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightInterestPointByRunning(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 397
    iput p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    .line 399
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v9, :cond_7

    .line 400
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    add-int/lit8 v10, p1, 0x1

    iget v11, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    invoke-interface {v9, v10, v11}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onRunIndex(II)V

    .line 402
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 403
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-ne v2, v9, :cond_8

    .line 404
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 405
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 406
    .local v0, "c":Lcom/google/android/gms/maps/model/Polyline;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    iget v11, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineRunningColor:I

    invoke-virtual {p0, v10, v0, v11}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPolyline(ILcom/google/android/gms/maps/model/Polyline;I)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 407
    .end local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    :cond_8
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-ge v2, v9, :cond_9

    .line 408
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 409
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 410
    .restart local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    iget v11, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineRunColor:I

    invoke-virtual {p0, v10, v0, v11}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPolyline(ILcom/google/android/gms/maps/model/Polyline;I)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 412
    .end local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    :cond_9
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 413
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 414
    .restart local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->polylineList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    iget v11, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineDefaultColor:I

    invoke-virtual {p0, v10, v0, v11}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPolyline(ILcom/google/android/gms/maps/model/Polyline;I)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 417
    .end local v0    # "c":Lcom/google/android/gms/maps/model/Polyline;
    :cond_a
    iget v9, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    if-nez v9, :cond_c

    .line 419
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 420
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-lez v9, :cond_0

    .line 421
    const/4 v7, 0x0

    .line 422
    .restart local v7    # "n":I
    iget-object v9, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v9, :cond_b

    .line 424
    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->findIndexByInterest(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)I

    move-result p1

    .line 425
    if-ltz p1, :cond_b

    .line 426
    mul-int/lit8 v7, p1, 0x2

    .line 427
    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 428
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    .line 432
    :cond_b
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_0

    .line 434
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 435
    .restart local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 436
    .restart local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v9, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v9, :cond_0

    .line 437
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->findIndexByInterest(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)I

    move-result p1

    .line 438
    mul-int/lit8 v7, p1, 0x2

    .line 439
    if-ltz p1, :cond_0

    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 440
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x2

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    goto/16 :goto_1

    .line 449
    .end local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v7    # "n":I
    :cond_c
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 450
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    if-lez v9, :cond_0

    .line 451
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    add-int/lit8 p1, v9, -0x1

    .line 452
    mul-int/lit8 v7, p1, 0x2

    .line 453
    .restart local v7    # "n":I
    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 454
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    .line 455
    if-lez v7, :cond_0

    .line 456
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    iget v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 457
    .restart local v4    # "lastMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 458
    .restart local v5    # "lastMarkerPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    add-int/lit8 p1, v9, -0x2

    .line 459
    mul-int/lit8 v7, p1, 0x2

    .line 460
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v7, 0x1

    if-le v9, v10, :cond_0

    .line 461
    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/Marker;

    iget v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    const/4 v12, 0x2

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLineSmallMarkerByRunning(Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FI)V

    goto/16 :goto_1
.end method

.method public setAiLineMark(DDFF)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D
    .param p5, "height"    # F
    .param p6, "angle"    # F

    .prologue
    .line 144
    invoke-static {p1, p2, p3, p4}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    .line 145
    .local v0, "fLatLng":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 146
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v2, -0x1

    iput v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    .line 147
    invoke-virtual {p0, v1, p5, p6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onAiLineAddPoint(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 148
    return-void
.end method

.method public setAiLineMarkActionByDevice(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;>;"
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 504
    .local v0, "m":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 505
    .local v1, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;

    .line 506
    .local v2, "pointsAction":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
    iget v5, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v2, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->pos:I

    if-ne v5, v6, :cond_1

    .line 507
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->getAction()I

    move-result v4

    iput v4, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    goto :goto_0

    .line 513
    .end local v0    # "m":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v2    # "pointsAction":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
    :cond_2
    return-void
.end method

.method public setAiLineMarkByDevice(Ljava/util/List;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;>;"
    .local p2, "interestPoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .line 1259
    .local v21, "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addInterestByDevice(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V

    goto :goto_0

    .line 1262
    .end local v21    # "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    :cond_0
    const/4 v15, 0x0

    .line 1263
    .local v15, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .line 1264
    .restart local v21    # "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    const/16 v20, 0x0

    .line 1265
    .local v20, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v20, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .end local v20    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-direct/range {v20 .. v20}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1266
    .restart local v20    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getYawMode()B

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 1267
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->findInterestPoint(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;Ljava/util/List;)I

    move-result v16

    .line 1268
    .local v16, "index":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1271
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitude()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1275
    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v14

    .line 1276
    .local v14, "fLatLng":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v17, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v14, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v8, v14, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1278
    .local v17, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 1279
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 1282
    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAngle()F

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1283
    const/16 v18, 0x0

    .line 1285
    .local v18, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    const v13, 0x3f249249

    .line 1287
    .local v13, "anchorY":F
    invoke-virtual/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getYawMode()B

    move-result v4

    if-nez v4, :cond_2

    .line 1288
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 1292
    .local v6, "res":I
    :goto_2
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v4, :cond_3

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v9, v9, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    move-object/from16 v0, v20

    iget-boolean v11, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointWithPioView(Landroid/content/Context;IFIIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v18

    .line 1298
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7, v13}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v19

    .line 1300
    .local v19, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1301
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    .line 1305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1290
    .end local v6    # "res":I
    .end local v19    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    .restart local v6    # "res":I
    goto :goto_2

    .line 1295
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    move-object/from16 v0, v20

    iget-boolean v10, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v18

    goto :goto_3

    .line 1308
    .end local v6    # "res":I
    .end local v13    # "anchorY":F
    .end local v14    # "fLatLng":Lcom/fimi/x8sdk/entity/FLatLng;
    .end local v16    # "index":I
    .end local v17    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v18    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v20    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v21    # "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1311
    :cond_5
    return-void
.end method

.method public setAiLineMarkByHistory(Ljava/util/List;I)V
    .locals 13
    .param p2, "mapTpye"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    const/high16 v12, 0x3f000000    # 0.5f

    .line 517
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .line 518
    .local v4, "point":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    const/4 v3, 0x0

    .line 519
    .local v3, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .end local v3    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-direct {v3}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 520
    .restart local v3    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v1, 0x0

    .line 522
    .local v1, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYawMode()I

    move-result v7

    if-nez v7, :cond_0

    .line 523
    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_no_angle2:I

    .line 528
    .local v5, "res":I
    :goto_1
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v5, v9}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerView2(Landroid/content/Context;II)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 529
    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitude()I

    move-result v7

    int-to-float v7, v7

    iput v7, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 530
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 531
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitude()D

    move-result-wide v10

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 532
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 534
    .local v2, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v8, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 535
    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v8, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 536
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 537
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 538
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v7, 0x0

    iput v7, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    .line 540
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 525
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "res":I
    :cond_0
    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_with_angle1:I

    .restart local v5    # "res":I
    goto :goto_1

    .line 543
    .end local v1    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v3    # "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v4    # "point":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .end local v5    # "res":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 544
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 546
    :cond_2
    return-void
.end method

.method public setAiLineMarkByHistory(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    .local p2, "interests":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/4 v0, 0x0

    .line 1215
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1216
    .local v3, "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    add-int/lit8 v0, v0, 0x1

    .line 1217
    iput v0, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1218
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addInterestMarkerByHistory(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 1219
    .local v1, "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1220
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1221
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1224
    .end local v1    # "interestMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "mpl":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1225
    .local v4, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->addPointMarkerByHistory(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 1226
    .local v2, "mMarker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v6, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v6, :cond_1

    .line 1227
    invoke-virtual {p0, v4, p2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->findInterestPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Ljava/util/List;)V

    .line 1229
    :cond_1
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 1230
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    const/4 v6, 0x0

    iput v6, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    .line 1232
    iget-object v6, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1234
    .end local v2    # "mMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v4    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1235
    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawPointLine(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1237
    :cond_3
    return-void
.end method

.method public setLineMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    .line 294
    return-void
.end method

.method public setMarkerViewInfo(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 69
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 73
    .local v0, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-boolean v1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    if-eqz v1, :cond_0

    .line 76
    iput p1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    goto :goto_0
.end method

.method public setOnMapClickListener()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->setOnMarkerListener()V

    .line 89
    return-void
.end method

.method public startAiLineProcess()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 307
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->nPos:I

    .line 328
    return-void
.end method

.method public updataAngle(IF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "angle"    # F

    .prologue
    .line 551
    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 552
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 553
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput p2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 554
    return-void
.end method

.method public updateInterestBindPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;I)V
    .locals 6
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "index"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 262
    if-ne v0, p2, :cond_3

    .line 263
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMapPointList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 264
    .local v2, "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput-object p1, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 265
    const/4 v1, 0x1

    .line 266
    .local v1, "isRelation":Z
    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p0, v2, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 269
    const/4 v1, 0x1

    .line 273
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, v3, v2, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changePointMarker(Lcom/google/android/gms/maps/model/Marker;Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 277
    .end local v1    # "isRelation":Z
    .end local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    if-eqz v3, :cond_1

    .line 278
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lineMarkerSelectListener:Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->interestMarkerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x14

    if-ge v3, v5, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v4, v3}, Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;->onInterestSizeEnable(Z)V

    .line 280
    :cond_1
    return-void

    .line 271
    .restart local v1    # "isRelation":Z
    .restart local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 261
    .end local v1    # "isRelation":Z
    .end local v2    # "tmp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateInterestPoint()V
    .locals 2

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mSelectMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1156
    .local v0, "mp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-boolean v1, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v1, :cond_0

    .line 1157
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->lightPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 1160
    :cond_0
    return-void
.end method

.method public updateSmallMarkerAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 13
    .param p1, "target"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    .line 968
    iget v7, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    add-int/lit8 v1, v7, -0x1

    .line 969
    .local v1, "index":I
    if-nez v1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v6, v7, 0x2

    .line 973
    .local v6, "n":I
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    if-lt v7, v8, :cond_0

    .line 975
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 976
    .local v4, "mpl1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 978
    .local v5, "mpl2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mMarkerList:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 980
    .local v2, "m1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    const/4 v3, 0x0

    .line 981
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    iget v8, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget v9, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    iget v10, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getAnlgesByRoration(FFI)[F

    move-result-object v0

    .line 983
    .local v0, "angleArray":[F
    iput-boolean v11, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 984
    const/4 v7, 0x0

    aget v7, v0, v7

    invoke-virtual {v4, v7}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 985
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v9, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v10, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 986
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 987
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v12, v12}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 989
    iput-boolean v11, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isSelect:Z

    .line 990
    aget v7, v0, v11

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 991
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->gdCustemMarkerView:Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    iget-object v8, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->context:Landroid/content/Context;

    sget v9, Lcom/fimi/app/x8s/R$drawable;->x8_ai_line_point_small1:I

    iget v10, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 992
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 993
    iget-object v7, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->arrowMarkerList:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v12, v12}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto/16 :goto_0
.end method
