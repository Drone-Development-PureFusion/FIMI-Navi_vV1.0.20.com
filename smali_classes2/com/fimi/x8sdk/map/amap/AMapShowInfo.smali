.class public Lcom/fimi/x8sdk/map/amap/AMapShowInfo;
.super Ljava/lang/Object;
.source "AMapShowInfo.java"

# interfaces
.implements Lcom/fimi/x8sdk/map/IShowInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomePosition(DD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 15
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p3, p4, p1, p2}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    goto :goto_0
.end method
