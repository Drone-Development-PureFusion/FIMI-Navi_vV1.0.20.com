.class public Lcom/twitter/sdk/android/core/models/ApiErrors;
.super Ljava/lang/Object;
.source "ApiErrors.java"


# instance fields
.field public final errors:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/models/ApiErrors;-><init>(Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/ApiError;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    .line 34
    return-void
.end method
