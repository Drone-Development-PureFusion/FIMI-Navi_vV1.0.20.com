.class public interface abstract Lcom/fimi/app/x8s/map/interfaces/IFimiMap;
.super Ljava/lang/Object;
.source "IFimiMap.java"


# static fields
.field public static final FIMI_GAODE_MAP:Ljava/lang/String; = "fimi.gaode.map"


# virtual methods
.method public abstract changeGoogleCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
.end method

.method public abstract clearNoFlightZone()V
.end method

.method public abstract drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V
.end method

.method public abstract getMapView()Landroid/view/View;
.end method

.method public abstract getZoom()F
.end method

.method public abstract googleMap()Lcom/google/android/gms/maps/GoogleMap;
.end method

.method public abstract onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract switchMapStyle(I)V
.end method
