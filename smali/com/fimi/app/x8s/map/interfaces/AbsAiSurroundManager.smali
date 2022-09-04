.class public abstract Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;
.super Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;
.source "AbsAiSurroundManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsBaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEllipse(DDFF)V
.end method

.method public abstract addPolylinescircle(ZDDDDII)V
.end method

.method public abstract clearSurroundMarker()V
.end method

.method public abstract drawAiSurroundCircle(DDD)V
.end method

.method public abstract getSurroundRadius(DDDD)F
.end method

.method public abstract reSetAiSurroundCircle(DDF)V
.end method

.method public abstract setAiSurroundCircle(DDF)V
.end method

.method public abstract setAiSurroundMark(DD)V
.end method

.method public setMarkerViewInfo(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 11
    return-void
.end method
