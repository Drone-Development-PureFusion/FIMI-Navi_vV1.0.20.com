.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;
.super Ljava/lang/Object;
.source "AbsBaseManager.java"


# static fields
.field private static DASH:Lcom/google/android/gms/maps/model/Dash; = null

.field private static GAP:Lcom/google/android/gms/maps/model/Gap; = null

.field public static final MAX_DISTANCE:I = 0x3e8

.field public static PATTERN_DASHED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field private static PATTERN_DASH_LENGTH_PX:I

.field private static PATTERN_GAP_LENGTH_PX:I


# instance fields
.field protected fillColor:I

.field protected lineDefaultColor:I

.field protected lineLimitColor:I

.field protected lineRunColor:I

.field protected lineRunningColor:I

.field protected mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

.field private onMapClickValid:Z

.field private onMarkerClickValid:Z

.field protected strokeColor:I

.field protected strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x32

    sput v0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->PATTERN_DASH_LENGTH_PX:I

    .line 26
    const/16 v0, 0x14

    sput v0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->PATTERN_GAP_LENGTH_PX:I

    .line 27
    new-instance v0, Lcom/google/android/gms/maps/model/Dash;

    sget v1, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->PATTERN_DASH_LENGTH_PX:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->DASH:Lcom/google/android/gms/maps/model/Dash;

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/Gap;

    sget v1, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->PATTERN_GAP_LENGTH_PX:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    sput-object v0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->GAP:Lcom/google/android/gms/maps/model/Gap;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->DASH:Lcom/google/android/gms/maps/model/Dash;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->GAP:Lcom/google/android/gms/maps/model/Gap;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->PATTERN_DASHED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    invoke-direct {v0}, Lcom/fimi/app/x8s/tools/X8MapCalcAngle;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->mapCalcAngle:Lcom/fimi/app/x8s/tools/X8MapCalcAngle;

    .line 31
    const/16 v0, 0x63

    const/16 v1, 0x4f

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->strokeColor:I

    .line 32
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->fillColor:I

    .line 33
    const/16 v0, 0x9b

    invoke-static {v0, v3, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->lineLimitColor:I

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->strokeWidth:I

    .line 35
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_ai_line_default:I

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->lineDefaultColor:I

    .line 36
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_ai_line_runing:I

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->lineRunningColor:I

    .line 37
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_ai_line_run:I

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->lineRunColor:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->onMarkerClickValid:Z

    return-void
.end method


# virtual methods
.method public abstract drawAiLimit(DDD)V
.end method

.method public abstract getLineAngleByMapBealing(F)F
.end method

.method public isOnMapClickValid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->onMapClickValid:Z

    return v0
.end method

.method public isOnMarkerClickValid()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->onMarkerClickValid:Z

    return v0
.end method

.method public abstract removeMapClickListener()V
.end method

.method public abstract resetMapEvent()V
.end method

.method public abstract setMarkerViewInfo(F)V
.end method

.method public abstract setOnMapClickListener()V
.end method

.method public setOnMapClickValid(Z)V
    .locals 0
    .param p1, "onMapClickValid"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->onMapClickValid:Z

    .line 60
    return-void
.end method

.method public setOnMarkerClickValid(Z)V
    .locals 0
    .param p1, "onMarkerClickValid"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;->onMarkerClickValid:Z

    .line 49
    return-void
.end method
