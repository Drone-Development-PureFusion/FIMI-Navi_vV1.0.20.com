.class public Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
.super Ljava/lang/Object;
.source "CompositionTimeSampleExtension.java"

# interfaces
.implements Lcom/mp4parser/streaming/SampleExtension;


# static fields
.field public static pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->pool:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    .locals 3
    .param p0, "offset"    # I

    .prologue
    .line 14
    sget-object v1, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->pool:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    .line 15
    .local v0, "c":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    .end local v0    # "c":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    invoke-direct {v0}, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;-><init>()V

    .line 17
    .restart local v0    # "c":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    iput p0, v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->ctts:I

    .line 18
    sget-object v1, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->pool:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCompositionTimeOffset()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->ctts:I

    return v0
.end method
