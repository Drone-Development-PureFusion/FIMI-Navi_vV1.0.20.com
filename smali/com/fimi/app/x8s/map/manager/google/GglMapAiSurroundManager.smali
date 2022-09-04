.class public Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;
.source "GglMapAiSurroundManager.java"


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
.field private context:Landroid/content/Context;

.field private gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

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

.field private line:Lcom/google/android/gms/maps/model/Polyline;

.field private mPolygon:Lcom/google/android/gms/maps/model/Polygon;

.field mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

.field private pointMarker:Lcom/google/android/gms/maps/model/Marker;

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;

.field private surroundCircle:Lcom/google/android/gms/maps/model/Circle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    .line 166
    new-instance v0, Lcom/google/android/gms/maps/model/Dash;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    .line 167
    new-instance v0, Lcom/google/android/gms/maps/model/Gap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->GAP:Lcom/google/android/gms/maps/model/PatternItem;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->GAP:Lcom/google/android/gms/maps/model/PatternItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->DASH:Lcom/google/android/gms/maps/model/PatternItem;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p3, "gglMapLocationManager"    # Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->latLngs:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 59
    iput-object p3, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .line 61
    return-void
.end method


# virtual methods
.method public addEllipse(DDFF)V
    .locals 53
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "horizontalDistance"    # F
    .param p6, "startNosePoint"    # F

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 180
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 182
    :cond_0
    const/high16 v35, 0x40000000    # 2.0f

    div-float v35, p5, v35

    const/high16 v44, 0x40000000    # 2.0f

    add-float v29, v35, v44

    .line 183
    .local v29, "radius":F
    invoke-static/range {p1 .. p4}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v12

    .line 184
    .local v12, "centerpoint":Lcom/fimi/x8sdk/entity/FLatLng;
    const/16 v20, 0x168

    .line 185
    .local v20, "numpoints":I
    const-wide v44, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v26, v44, v46

    .line 186
    .local v26, "phase":D
    new-instance v21, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    .line 187
    .local v21, "options":Lcom/google/android/gms/maps/model/PolygonOptions;
    sget-object v35, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokePattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v34

    .line 190
    .local v34, "visibleRegion":Lcom/google/android/gms/maps/model/VisibleRegion;
    move-object/from16 v0, v34

    iget-object v13, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    .line 191
    .local v13, "farLeft":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v34

    iget-object v15, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->nearRight:Lcom/google/android/gms/maps/model/LatLng;

    .line 192
    .local v15, "nearRight":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v24

    .line 193
    .local v24, "pLeft":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v25

    .line 194
    .local v25, "pRight":Landroid/graphics/Point;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v44, v0

    sub-int v28, v35, v44

    .line 196
    .local v28, "pix":I
    move/from16 v0, v28

    invoke-static {v13, v15, v0}, Lcom/fimi/app/x8s/tools/GeoTools;->getScale(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 197
    .local v30, "scale":D
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v32, v44, v30

    .line 199
    .local v32, "t":D
    move/from16 v0, v29

    float-to-double v6, v0

    .line 200
    .local v6, "a":D
    const-wide v44, 0x3fe6666666666666L    # 0.7

    mul-double v10, v6, v44

    .line 201
    .local v10, "c":D
    mul-double v44, v6, v6

    mul-double v46, v10, v10

    sub-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 203
    .local v8, "b":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v35

    new-instance v44, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v12, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v46, v0

    iget-wide v0, v12, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v48, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v22

    .line 205
    .local v22, "p1":Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v44, v0

    int-to-double v0, v14

    move-wide/from16 v46, v0

    mul-double v46, v46, v26

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v46, v46, v32

    add-double v36, v44, v46

    .line 206
    .local v36, "x1":D
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v46, v8, v6

    mul-double v46, v46, v32

    int-to-double v0, v14

    move-wide/from16 v48, v0

    mul-double v48, v48, v26

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    mul-double v46, v46, v48

    add-double v40, v44, v46

    .line 208
    .local v40, "y1":D
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v46, v0

    sub-double v46, v36, v46

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v26

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->cos(D)D

    move-result-wide v48

    mul-double v46, v46, v48

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v48, v0

    sub-double v48, v40, v48

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v26

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    sub-double v46, v46, v48

    add-double v16, v44, v46

    .line 209
    .local v16, "newX":D
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v46, v0

    sub-double v46, v36, v46

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v48, v0

    mul-double v48, v48, v26

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    mul-double v46, v46, v48

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v48, v0

    sub-double v48, v40, v48

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v26

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->cos(D)D

    move-result-wide v50

    mul-double v48, v48, v50

    add-double v46, v46, v48

    add-double v18, v44, v46

    .line 211
    .local v18, "newY":D
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    move-result-wide v44

    mul-double v44, v44, v32

    sub-double v38, v16, v44

    .line 212
    .local v38, "x2":D
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sin(D)D

    move-result-wide v44

    mul-double v44, v44, v32

    sub-double v42, v18, v44

    .line 213
    .local v42, "y2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v35

    new-instance v44, Landroid/graphics/Point;

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v45, v0

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v46, v0

    invoke-direct/range {v44 .. v46}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v23

    .line 214
    .local v23, "p2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 203
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 216
    .end local v16    # "newX":D
    .end local v18    # "newY":D
    .end local v22    # "p1":Landroid/graphics/Point;
    .end local v23    # "p2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v36    # "x1":D
    .end local v38    # "x2":D
    .end local v40    # "y1":D
    .end local v42    # "y2":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v35, v0

    const/high16 v44, 0x40400000    # 3.0f

    move-object/from16 v0, v21

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v44

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    sget v45, Lcom/fimi/app/x8s/R$color;->x8_drone_inface_line:I

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getColor(I)I

    move-result v44

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeColor(I)V

    .line 218
    return-void
.end method

.method public addPolylinescircle(ZDDDDII)V
    .locals 40
    .param p1, "cw"    # Z
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "lat1"    # D
    .param p8, "lng2"    # D
    .param p10, "radius"    # I
    .param p11, "maxRadius"    # I

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 245
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    move-object/from16 v33, v0

    new-instance v34, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v35, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v35

    move-wide/from16 v1, p6

    move-wide/from16 v3, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v33 .. v35}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;->getAngle2(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v6

    .line 255
    .local v6, "angle":F
    const-wide v22, 0x41584dae328f5c29L    # 6371000.79

    .line 256
    .local v22, "r":D
    new-instance v14, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v14}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 257
    .local v14, "options":Lcom/google/android/gms/maps/model/PolylineOptions;
    sget-object v33, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 264
    const/16 v13, 0x168

    .line 265
    .local v13, "numpoints":I
    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v13

    move-wide/from16 v36, v0

    div-double v20, v34, v36

    .line 266
    .local v20, "phase":D
    mul-int/lit8 v33, p10, 0x2

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    div-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v27, v0

    .line 267
    .local v27, "time":I
    const/16 v33, 0x32

    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_2

    .line 268
    const/16 v27, 0x32

    .line 272
    :cond_1
    :goto_0
    add-int/lit8 v33, p11, 0xa

    sub-int v33, v33, p10

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    mul-float v33, v33, v34

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 274
    .local v28, "temp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v30

    .line 275
    .local v30, "visibleRegion":Lcom/google/android/gms/maps/model/VisibleRegion;
    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    .line 276
    .local v10, "farLeft":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v30

    iget-object v12, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->nearRight:Lcom/google/android/gms/maps/model/LatLng;

    .line 277
    .local v12, "nearRight":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v17

    .line 278
    .local v17, "pLeft":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v18

    .line 279
    .local v18, "pRight":Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    .line 281
    .local v19, "pix":I
    move/from16 v0, v19

    invoke-static {v10, v12, v0}, Lcom/fimi/app/x8s/tools/GeoTools;->getScale(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)F

    move-result v24

    .line 282
    .local v24, "scale":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v33, 0x168

    move/from16 v0, v33

    if-ge v11, v0, :cond_5

    .line 285
    move/from16 v0, p10

    int-to-double v0, v0

    move-wide/from16 v34, v0

    int-to-float v0, v11

    move/from16 v33, v0

    const/high16 v36, 0x43b40000    # 360.0f

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    div-float v33, v33, v36

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v36, v36, v28

    add-double v8, v34, v36

    .line 287
    .local v8, "d":D
    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v8

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v26, v0

    .line 289
    .local v26, "t":F
    const/16 v25, 0x0

    .line 290
    .local v25, "startAngle":F
    if-nez p1, :cond_4

    .line 292
    int-to-float v0, v11

    move/from16 v33, v0

    sub-float v7, v6, v33

    .line 293
    .local v7, "cc":F
    const/16 v33, 0x0

    cmpg-float v33, v7, v33

    if-gez v33, :cond_3

    .line 294
    const/high16 v33, 0x43b40000    # 360.0f

    add-float v25, v33, v7

    .line 302
    .end local v7    # "cc":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v33

    new-instance v34, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v33 .. v34}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v15

    .line 303
    .local v15, "p1":Landroid/graphics/Point;
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v20

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v31, v0

    .line 304
    .local v31, "x1":I
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v20

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v32, v0

    .line 305
    .local v32, "y1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v33

    new-instance v34, Landroid/graphics/Point;

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v33 .. v34}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    .line 306
    .local v16, "p2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 282
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 269
    .end local v8    # "d":D
    .end local v10    # "farLeft":Lcom/google/android/gms/maps/model/LatLng;
    .end local v11    # "i":I
    .end local v12    # "nearRight":Lcom/google/android/gms/maps/model/LatLng;
    .end local v15    # "p1":Landroid/graphics/Point;
    .end local v16    # "p2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v17    # "pLeft":Landroid/graphics/Point;
    .end local v18    # "pRight":Landroid/graphics/Point;
    .end local v19    # "pix":I
    .end local v24    # "scale":F
    .end local v25    # "startAngle":F
    .end local v26    # "t":F
    .end local v28    # "temp":D
    .end local v30    # "visibleRegion":Lcom/google/android/gms/maps/model/VisibleRegion;
    .end local v31    # "x1":I
    .end local v32    # "y1":I
    :cond_2
    const/16 v33, 0xb4

    move/from16 v0, v27

    move/from16 v1, v33

    if-le v0, v1, :cond_1

    .line 270
    const/16 v27, 0xb4

    goto/16 :goto_0

    .line 296
    .restart local v7    # "cc":F
    .restart local v8    # "d":D
    .restart local v10    # "farLeft":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v11    # "i":I
    .restart local v12    # "nearRight":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v17    # "pLeft":Landroid/graphics/Point;
    .restart local v18    # "pRight":Landroid/graphics/Point;
    .restart local v19    # "pix":I
    .restart local v24    # "scale":F
    .restart local v25    # "startAngle":F
    .restart local v26    # "t":F
    .restart local v28    # "temp":D
    .restart local v30    # "visibleRegion":Lcom/google/android/gms/maps/model/VisibleRegion;
    :cond_3
    move/from16 v25, v7

    goto/16 :goto_2

    .line 299
    .end local v7    # "cc":F
    :cond_4
    int-to-float v0, v11

    move/from16 v33, v0

    add-float v25, v33, v6

    goto/16 :goto_2

    .line 309
    .end local v8    # "d":D
    .end local v25    # "startAngle":F
    .end local v26    # "t":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v33, v0

    const/high16 v34, 0x40400000    # 3.0f

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    sget v35, Lcom/fimi/app/x8s/R$color;->x8_drone_inface_line:I

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getColor(I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 311
    return-void
.end method

.method public clearSurroundMarker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 67
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 71
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 76
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mPolygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 81
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 86
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->latLngs:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->latLngs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 94
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->line:Lcom/google/android/gms/maps/model/Polyline;

    .line 96
    :cond_6
    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 97
    return-void
.end method

.method public drawAiLimit(DDD)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "radiu"    # D

    .prologue
    .line 153
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 155
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->PATTERN_POLYLINE_DOTTED:Ljava/util/List;

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokePattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_drone_inface_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->fillColor:I

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->strokeWidth:I

    int-to-float v2, v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 160
    .local v0, "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 164
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public drawAiSurroundCircle(DDD)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lnt"    # D
    .param p5, "radiu"    # D

    .prologue
    .line 222
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 224
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    .line 225
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_drone_inface_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->fillColor:I

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->strokeWidth:I

    int-to-float v2, v2

    .line 227
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 228
    .local v0, "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 232
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/CircleOptions;
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->surroundCircle:Lcom/google/android/gms/maps/model/Circle;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public getLineAngleByMapBealing(F)F
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getSurroundRadius(DDDD)F
    .locals 15
    .param p1, "lastLogitude"    # D
    .param p3, "lastLatitude"    # D
    .param p5, "currentLogitude"    # D
    .param p7, "currentLatitude"    # D

    .prologue
    .line 117
    move-wide/from16 v0, p3

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v6

    .line 118
    .local v6, "last":Lcom/fimi/x8sdk/entity/FLatLng;
    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v4

    .line 119
    .local v4, "currrent":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v6, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v10, v6, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v4, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v12, v4, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v7, v8}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v8

    double-to-float v5, v8

    .line 120
    .local v5, "distance":F
    return v5
.end method

.method public reSetAiSurroundCircle(DDF)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D
    .param p5, "radius"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->limitCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 319
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->setAiSurroundCircle(DDF)V

    .line 320
    return-void
.end method

.method public removeMapClickListener()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public resetMapEvent()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setAiSurroundCircle(DDF)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D
    .param p5, "radius"    # F

    .prologue
    .line 125
    invoke-static {p1, p2, p3, p4}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    .line 126
    .local v0, "fLatLng":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v8, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 128
    .local v8, "lats":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v2, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    float-to-double v6, p5

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->drawAiSurroundCircle(DDD)V

    .line 129
    return-void
.end method

.method public setAiSurroundMark(DD)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 101
    invoke-static {p1, p2, p3, p4}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    .line 102
    .local v0, "fLatLng":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iget-wide v6, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 103
    .local v2, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v4, :cond_0

    .line 104
    new-instance v1, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;

    invoke-direct {v1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;-><init>()V

    .line 105
    .local v1, "gdCustemMarkerView":Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->context:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_follow_point2:I

    invoke-virtual {v1, v4, v5}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerView(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 106
    .local v3, "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    new-instance v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v4}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 107
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 108
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v5, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->mp:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 113
    .end local v1    # "gdCustemMarkerView":Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
    .end local v3    # "mBitmapDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->pointMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public setOnMapClickListener()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
