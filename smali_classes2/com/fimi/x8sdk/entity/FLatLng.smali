.class public Lcom/fimi/x8sdk/entity/FLatLng;
.super Ljava/lang/Object;
.source "FLatLng.java"


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    .line 14
    iput-wide p3, p0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    .line 15
    return-void
.end method
