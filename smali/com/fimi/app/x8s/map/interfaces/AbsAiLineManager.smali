.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;
.source "AbsAiLineManager.java"


# instance fields
.field protected polylineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->polylineList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addInreterstMarker(II)V
.end method

.method public abstract addOrUpdateSmallMarkerForVideo(I)V
.end method

.method public abstract addSmallMakerByHistory()V
.end method

.method public abstract addSmallMarkerByInterest()V
.end method

.method public abstract addSmallMarkerByMap(I)V
.end method

.method public abstract changeLine()V
.end method

.method public abstract clearAiLineMarker()V
.end method

.method public abstract clearAllSmallMarker()V
.end method

.method public abstract deleteMarker(Z)V
.end method

.method public abstract getAiLineDistance()F
.end method

.method public abstract getAiLinePointSize()I
.end method

.method public abstract getDistance(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
.end method

.method public abstract getInterestPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInterstMakerLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
.end method

.method public abstract getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
.end method

.method public abstract getMapPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMapPointList(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Ljava/util/List;
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
.end method

.method public abstract getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
.end method

.method public abstract hasPointUnBind()Z
.end method

.method public abstract isFarToHome()Z
.end method

.method public abstract isInterestBeBind(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)Z
.end method

.method public abstract notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
.end method

.method public abstract notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
.end method

.method public abstract removeInterestUnBebind()V
.end method

.method public abstract removeInterstPointByRunning()V
.end method

.method public abstract setAiLineIndexPoint(I)V
.end method

.method public abstract setAiLineMark(DDFF)V
.end method

.method public abstract setAiLineMarkActionByDevice(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAiLineMarkByDevice(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract setAiLineMarkByHistory(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setAiLineMarkByHistory(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract setLineMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V
.end method

.method public abstract startAiLineProcess()V
.end method

.method public abstract updataAngle(IF)V
.end method

.method public abstract updateInterestBindPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;I)V
.end method

.method public abstract updateInterestPoint()V
.end method

.method public abstract updateSmallMarkerAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
.end method
