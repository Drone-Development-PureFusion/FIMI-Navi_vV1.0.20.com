.class public Lcom/fimi/kernel/utils/MediaSDK;
.super Ljava/lang/Object;
.source "MediaSDK.java"


# static fields
.field private static mapDur:Ljava/util/HashMap;

.field private static mediaSDK:Lcom/fimi/kernel/utils/MediaSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mediaSDK:Lcom/fimi/kernel/utils/MediaSDK;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mapDur:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/utils/MediaSDK;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mediaSDK:Lcom/fimi/kernel/utils/MediaSDK;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/fimi/kernel/utils/MediaSDK;

    invoke-direct {v0}, Lcom/fimi/kernel/utils/MediaSDK;-><init>()V

    sput-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mediaSDK:Lcom/fimi/kernel/utils/MediaSDK;

    .line 20
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mediaSDK:Lcom/fimi/kernel/utils/MediaSDK;

    return-object v0
.end method

.method public static getMapDur()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/fimi/kernel/utils/MediaSDK;->mapDur:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/fimi/kernel/utils/FrescoImageLoader;->initFresco(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/fimi/kernel/utils/FrescoImageLoader;->shutdown()V

    .line 30
    return-void
.end method
