.class public Lcom/fimi/soul/media/player/FermiPlayerUtils;
.super Ljava/lang/Object;
.source "FermiPlayerUtils.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/fimi/soul/media/player/FermiPlayerUtils;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRemoteVideoThumbnail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "remotePath"    # Ljava/lang/String;
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->getIntance()Lcom/fimi/soul/media/player/FimiMediaPlayer;

    move-result-object v0

    .line 48
    .local v0, "fimiMediaPlayer":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    invoke-virtual {v0, p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->videoToJpg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 35
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "offsetMillSecond"    # I

    .prologue
    .line 61
    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 65
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 66
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 68
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 95
    invoke-static {p0}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 97
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :cond_0
    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetMillSecond"    # I

    .prologue
    .line 78
    invoke-static {p0, p3}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public static getTimelineString(J)Ljava/lang/String;
    .locals 2
    .param p0, "millSecond"    # J

    .prologue
    .line 160
    const-string v0, "HH:mm:ss"

    invoke-static {p0, p1, v0}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->getTimelineString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimelineString(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "millsecond"    # J
    .param p2, "formate"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v0, Lcom/fimi/soul/media/player/FermiPlayerUtils;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    sget-object v0, Lcom/fimi/soul/media/player/FermiPlayerUtils;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/fimi/soul/media/player/FermiPlayerUtils;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoDuration(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v2, v1

    .line 117
    .local v2, "time":J
    const-string v1, "Good"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "time":J
    :goto_0
    return-wide v2

    .line 119
    :catch_0
    move-exception v1

    .line 123
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getVideoDurationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->getVideoDuration(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->getTimelineString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoDurationString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "formate"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->getVideoDuration(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/fimi/soul/media/player/FermiPlayerUtils;->getTimelineString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
