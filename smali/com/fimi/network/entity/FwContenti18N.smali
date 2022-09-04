.class public Lcom/fimi/network/entity/FwContenti18N;
.super Lcom/fimi/network/entity/BaseModel;
.source "FwContenti18N.java"


# instance fields
.field private en_US:Ljava/lang/String;

.field private zh_CN:Ljava/lang/String;

.field private zh_TW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fimi/network/entity/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEn_US()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/network/entity/FwContenti18N;->en_US:Ljava/lang/String;

    return-object v0
.end method

.method public getZh_CN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/network/entity/FwContenti18N;->zh_CN:Ljava/lang/String;

    return-object v0
.end method

.method public getZh_TW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/network/entity/FwContenti18N;->zh_TW:Ljava/lang/String;

    return-object v0
.end method

.method public setEn_US(Ljava/lang/String;)V
    .locals 0
    .param p1, "en_US"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/network/entity/FwContenti18N;->en_US:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setZh_CN(Ljava/lang/String;)V
    .locals 0
    .param p1, "zh_CN"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/network/entity/FwContenti18N;->zh_CN:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setZh_TW(Ljava/lang/String;)V
    .locals 0
    .param p1, "zh_TW"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fimi/network/entity/FwContenti18N;->zh_TW:Ljava/lang/String;

    .line 25
    return-void
.end method
