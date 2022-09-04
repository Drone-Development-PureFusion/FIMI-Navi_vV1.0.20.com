.class public final Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;
.super Ljava/lang/Object;
.source "TweetMediaUtils.java"


# static fields
.field private static final CONTENT_TYPE_HLS:Ljava/lang/String; = "application/x-mpegURL"

.field private static final CONTENT_TYPE_MP4:Ljava/lang/String; = "video/mp4"

.field public static final GIF_TYPE:Ljava/lang/String; = "animated_gif"

.field private static final LOOP_VIDEO_IN_MILLIS:I = 0x1964

.field public static final PHOTO_TYPE:Ljava/lang/String; = "photo"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static getAllMediaEntities(Lcom/twitter/sdk/android/core/models/Tweet;)Ljava/util/List;
    .locals 2
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_1
    return-object v0
.end method

.method public static getPhotoEntities(Lcom/twitter/sdk/android/core/models/Tweet;)Ljava/util/List;
    .locals 5
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "photoEntities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 68
    .local v1, "extendedEntities":Lcom/twitter/sdk/android/core/models/TweetEntities;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    .line 69
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_1

    .line 71
    iget-object v4, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 72
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    iget-object v4, v0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getPhotoEntity(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/MediaEntity;
    .locals 4
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getAllMediaEntities(Lcom/twitter/sdk/android/core/models/Tweet;)Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, "mediaEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 51
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :goto_1
    return-object v0

    .line 49
    .restart local v0    # "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;
    .locals 3
    .param p0, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/VideoInfo;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    .line 133
    .local v0, "variant":Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVariantSupported(Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    .end local v0    # "variant":Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVideoEntity(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/MediaEntity;
    .locals 3
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getAllMediaEntities(Lcom/twitter/sdk/android/core/models/Tweet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 101
    .local v0, "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    iget-object v2, v0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPhoto(Lcom/twitter/sdk/android/core/models/Tweet;)Z
    .locals 1
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getPhotoEntity(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/MediaEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSupportedVideo(Lcom/twitter/sdk/android/core/models/Tweet;)Z
    .locals 2
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 118
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getVideoEntity(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/MediaEntity;

    move-result-object v0

    .line 119
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLooping(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 4
    .param p0, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 142
    const-string v0, "animated_gif"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/VideoInfo;->durationMillis:J

    const-wide/16 v2, 0x1964

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 2
    .param p0, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 123
    const-string v0, "photo"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isVariantSupported(Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;)Z
    .locals 3
    .param p0, "variant"    # Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    .prologue
    const/4 v0, 0x1

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-string v1, "application/x-mpegURL"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->contentType:Ljava/lang/String;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const-string v1, "video/mp4"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 2
    .param p0, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 128
    const-string v0, "video"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "animated_gif"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showVideoControls(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 2
    .param p0, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 148
    const-string v0, "animated_gif"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
