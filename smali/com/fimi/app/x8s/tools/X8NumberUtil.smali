.class public Lcom/fimi/app/x8s/tools/X8NumberUtil;
.super Ljava/lang/Object;
.source "X8NumberUtil.java"


# static fields
.field private static prexDistance:Ljava/lang/String;

.field private static prexSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistanceNumberNoPrexString(FI)Ljava/lang/String;
    .locals 4
    .param p0, "decimal"    # F
    .param p1, "number"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->meterToFoot(F)F

    move-result v1

    float-to-double v2, v1

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDistanceNumberString(FIZ)Ljava/lang/String;
    .locals 5
    .param p0, "decimal"    # F
    .param p1, "number"    # I
    .param p2, "toUpperCase"    # Z

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    if-eqz p2, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    if-eqz p2, :cond_2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->meterToFoot(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->meterToFoot(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrexDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrexDistanceUppercase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrexSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrexSpeedUppercase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeedNumberNoPrexString(FI)Ljava/lang/String;
    .locals 4
    .param p0, "decimal"    # F
    .param p1, "number"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->msToMph(F)F

    move-result v1

    float-to-double v2, v1

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpeedNumberString(FIZ)Ljava/lang/String;
    .locals 5
    .param p0, "decimal"    # F
    .param p1, "number"    # I
    .param p2, "toUpperCase"    # Z

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-static {v2, v3, p1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    if-eqz p2, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->msToMph(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fimi/x8sdk/util/UnityUtil;->msToMph(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetPrexString(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_unit_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_unit_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_unit_distance_en:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexDistance:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_unit_speed_en:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/tools/X8NumberUtil;->prexSpeed:Ljava/lang/String;

    goto :goto_0
.end method
