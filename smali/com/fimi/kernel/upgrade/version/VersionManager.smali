.class public Lcom/fimi/kernel/upgrade/version/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field private static mVersionManager:Lcom/fimi/kernel/upgrade/version/VersionManager;


# instance fields
.field private hasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fimi/kernel/upgrade/version/FirmwareBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/fimi/kernel/upgrade/version/VersionManager;

    invoke-direct {v0}, Lcom/fimi/kernel/upgrade/version/VersionManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/upgrade/version/VersionManager;->mVersionManager:Lcom/fimi/kernel/upgrade/version/VersionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/upgrade/version/VersionManager;->hasMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/upgrade/version/VersionManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fimi/kernel/upgrade/version/VersionManager;->mVersionManager:Lcom/fimi/kernel/upgrade/version/VersionManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/VersionManager;->hasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    return-void
.end method

.method public getFimwareBeanBySysId(I)Lcom/fimi/kernel/upgrade/version/FirmwareBean;
    .locals 2
    .param p1, "sysid"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/VersionManager;->hasMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;

    return-object v0
.end method

.method public saveFimwareBean(Lcom/fimi/kernel/upgrade/version/FirmwareBean;)V
    .locals 2
    .param p1, "b"    # Lcom/fimi/kernel/upgrade/version/FirmwareBean;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/VersionManager;->hasMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->getSysId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
