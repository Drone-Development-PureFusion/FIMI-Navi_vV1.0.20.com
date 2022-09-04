.class public Lcom/fimi/x8sdk/util/UnityUtil;
.super Ljava/lang/Object;
.source "UnityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static footToMeter(F)F
    .locals 1
    .param p0, "foot"    # F

    .prologue
    .line 25
    const v0, 0x3e9c0ebf    # 0.3048f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static meterToFoot(F)F
    .locals 1
    .param p0, "meter"    # F

    .prologue
    .line 15
    const v0, 0x4051f8a1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static msToMph(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 29
    const v0, 0x400f295f    # 2.2369f

    mul-float/2addr v0, p0

    return v0
.end method
