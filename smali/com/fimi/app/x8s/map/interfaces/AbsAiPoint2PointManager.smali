.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;
.source "AbsAiPoint2PointManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calcDistance()V
.end method

.method public abstract changeLine()V
.end method

.method public abstract clearPoint2PointMarker()V
.end method

.method public abstract getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
.end method

.method public abstract setMarkerByDevice(DDI)V
.end method

.method public abstract setPoint2PointMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V
.end method

.method public abstract setRunning()V
.end method
