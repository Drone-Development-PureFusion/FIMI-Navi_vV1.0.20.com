.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;
.super Ljava/lang/Object;
.source "AbsMapNoFlyZone.java"


# instance fields
.field protected fillColor:I

.field protected fillColorHeightLimit:I

.field protected mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

.field protected strokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/16 v2, 0xcc

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/tools/GpsPointTools;

    invoke-direct {v0}, Lcom/fimi/app/x8s/tools/GpsPointTools;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    .line 9
    const/16 v0, 0x63

    const/16 v1, 0x4f

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;->strokeColor:I

    .line 10
    const/16 v0, 0x80

    const/16 v1, 0x24

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;->fillColor:I

    .line 11
    const/16 v0, 0x12

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;->fillColorHeightLimit:I

    return-void
.end method
