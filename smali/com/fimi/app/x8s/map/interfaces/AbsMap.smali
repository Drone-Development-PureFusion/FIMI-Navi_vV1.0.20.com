.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsMap;
.super Ljava/lang/Object;
.source "AbsMap.java"

# interfaces
.implements Lcom/fimi/app/x8s/map/interfaces/IFimiMap;


# static fields
.field public static final ZOOMDEFAOULT:F = 21.0f


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDeviceLocation(DD)V
.end method

.method public abstract addFlyPolyline(DD)V
.end method

.method public abstract animateCamer()V
.end method

.method public abstract chaneDeviceAngle(F)V
.end method

.method public abstract defaultMapValue()V
.end method

.method public abstract getAccuracy()F
.end method

.method public abstract getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;
.end method

.method public abstract getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;
.end method

.method public abstract getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;
.end method

.method public abstract getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
.end method

.method public abstract getDevicePosition()[D
.end method

.method public abstract getManLatLng()[D
.end method

.method public googleMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hasHomeInfo()Z
.end method

.method public abstract isMapInit()Z
.end method

.method public abstract moveCameraByDevice()V
.end method

.method public abstract onLocationEvnent()V
.end method

.method public abstract onLocationGravitTrailEvent()V
.end method

.method public abstract onSensorChanged(F)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fimi/app/x8s/map/interfaces/AbsMap;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public abstract setHomeLocation(DD)V
.end method

.method public setUpMap()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public abstract setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V
.end method

.method public abstract toScreenLocation(DD)Lcom/fimi/app/x8s/map/model/FimiPoint;
.end method
