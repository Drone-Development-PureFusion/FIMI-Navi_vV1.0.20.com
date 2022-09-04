.class public Lcom/fimi/x8sdk/map/googlemap/GoogleMapShowInfo;
.super Ljava/lang/Object;
.source "GoogleMapShowInfo.java"

# interfaces
.implements Lcom/fimi/x8sdk/map/IShowInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomePosition(DD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 14
    new-instance v0, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    return-object v0
.end method
