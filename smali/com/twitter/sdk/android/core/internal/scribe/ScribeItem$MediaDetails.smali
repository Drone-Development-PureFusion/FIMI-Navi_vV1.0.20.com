.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;
.super Ljava/lang/Object;
.source "ScribeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDetails"
.end annotation


# static fields
.field public static final GIF_TYPE:Ljava/lang/String; = "animated_gif"

.field public static final TYPE_AMPLIFY:I = 0x2

.field public static final TYPE_ANIMATED_GIF:I = 0x3

.field public static final TYPE_CONSUMER:I = 0x1

.field public static final TYPE_VINE:I = 0x4


# instance fields
.field public final contentId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_id"
    .end annotation
.end field

.field public final mediaType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field public final publisherId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publisher_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0
    .param p1, "contentId"    # J
    .param p3, "mediaType"    # I
    .param p4, "publisherId"    # J

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->contentId:J

    .line 213
    iput p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->mediaType:I

    .line 214
    iput-wide p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->publisherId:J

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 226
    :cond_0
    :goto_0
    return v2

    .line 220
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;

    .line 224
    .local v0, "that":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->contentId:J

    iget-wide v6, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->contentId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 225
    iget v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->mediaType:I

    iget v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->mediaType:I

    if-ne v3, v4, :cond_0

    .line 226
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->publisherId:J

    iget-wide v6, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->publisherId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 231
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->contentId:J

    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->contentId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 232
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->mediaType:I

    add-int v0, v1, v2

    .line 233
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->publisherId:J

    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$MediaDetails;->publisherId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 234
    return v0
.end method
