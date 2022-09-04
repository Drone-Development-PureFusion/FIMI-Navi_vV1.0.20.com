.class public Lcom/twitter/sdk/android/core/models/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public final dmTextCharacterLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dm_text_character_limit"
    .end annotation
.end field

.field public final nonUsernamePaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_username_paths"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final photoSizeLimit:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_size_limit"
    .end annotation
.end field

.field public final photoSizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_sizes"
    .end annotation
.end field

.field public final shortUrlLengthHttps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_url_length_https"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v6, v3

    move v7, v2

    invoke-direct/range {v1 .. v7}, Lcom/twitter/sdk/android/core/models/Configuration;-><init>(ILjava/util/List;JLcom/twitter/sdk/android/core/models/MediaEntity$Sizes;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/util/List;JLcom/twitter/sdk/android/core/models/MediaEntity$Sizes;I)V
    .locals 1
    .param p1, "dmTextCharacterLimit"    # I
    .param p3, "photoSizeLimit"    # J
    .param p5, "photoSizes"    # Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .param p6, "shortUrlLengthHttps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "nonUsernamePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/twitter/sdk/android/core/models/Configuration;->dmTextCharacterLimit:I

    .line 65
    invoke-static {p2}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Configuration;->nonUsernamePaths:Ljava/util/List;

    .line 66
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/models/Configuration;->photoSizeLimit:J

    .line 67
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/Configuration;->photoSizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;

    .line 68
    iput p6, p0, Lcom/twitter/sdk/android/core/models/Configuration;->shortUrlLengthHttps:I

    .line 69
    return-void
.end method
