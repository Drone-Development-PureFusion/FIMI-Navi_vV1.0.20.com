.class public Lcom/fimi/x8sdk/map/MapProxy;
.super Ljava/lang/Object;
.source "MapProxy.java"


# static fields
.field public static proxy:Lcom/fimi/x8sdk/map/MapProxy;


# instance fields
.field showInfo:Lcom/fimi/x8sdk/map/IShowInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x8sdk/map/MapProxy;->proxy:Lcom/fimi/x8sdk/map/MapProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/x8sdk/map/MapProxy;->showInfo:Lcom/fimi/x8sdk/map/IShowInfo;

    .line 20
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    .line 21
    .local v0, "globalConfig":Lcom/fimi/x8sdk/common/GlobalConfig;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maptype is not null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_0
    sget-object v1, Lcom/fimi/x8sdk/map/MapProxy$1;->$SwitchMap$com$fimi$x8sdk$map$MapType:[I

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/map/MapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 32
    :goto_0
    return-void

    .line 26
    :pswitch_0
    new-instance v1, Lcom/fimi/x8sdk/map/amap/AMapShowInfo;

    invoke-direct {v1}, Lcom/fimi/x8sdk/map/amap/AMapShowInfo;-><init>()V

    iput-object v1, p0, Lcom/fimi/x8sdk/map/MapProxy;->showInfo:Lcom/fimi/x8sdk/map/IShowInfo;

    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v1, Lcom/fimi/x8sdk/map/googlemap/GoogleMapShowInfo;

    invoke-direct {v1}, Lcom/fimi/x8sdk/map/googlemap/GoogleMapShowInfo;-><init>()V

    iput-object v1, p0, Lcom/fimi/x8sdk/map/MapProxy;->showInfo:Lcom/fimi/x8sdk/map/IShowInfo;

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/fimi/x8sdk/map/MapProxy;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/fimi/x8sdk/map/MapProxy;->proxy:Lcom/fimi/x8sdk/map/MapProxy;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/fimi/x8sdk/map/MapProxy;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/map/MapProxy;->proxy:Lcom/fimi/x8sdk/map/MapProxy;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fimi/x8sdk/map/MapProxy;

    invoke-direct {v0}, Lcom/fimi/x8sdk/map/MapProxy;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/map/MapProxy;->proxy:Lcom/fimi/x8sdk/map/MapProxy;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/map/MapProxy;->proxy:Lcom/fimi/x8sdk/map/MapProxy;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getHomePosition(DD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/map/MapProxy;->showInfo:Lcom/fimi/x8sdk/map/IShowInfo;

    invoke-interface {v0, p1, p2, p1, p2}, Lcom/fimi/x8sdk/map/IShowInfo;->getHomePosition(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    return-object v0
.end method
