.class public Lcom/fimi/libperson/entity/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final resource:Ljava/lang/Integer;

.field private final tile:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "uriString":Ljava/lang/String;
    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v0, Ljava/io/File;

    const-string v2, "file:///"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "uriFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 58
    .end local v0    # "uriFile":Ljava/io/File;
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/fimi/libperson/entity/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    .line 59
    iput-object p1, p0, Lcom/fimi/libperson/entity/ImageSource;->uri:Landroid/net/Uri;

    .line 60
    iput-object v3, p0, Lcom/fimi/libperson/entity/ImageSource;->resource:Ljava/lang/Integer;

    .line 61
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/libperson/entity/ImageSource;->tile:Z

    .line 62
    return-void

    .line 52
    .restart local v0    # "uriFile":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;
    .locals 2
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Asset name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/libperson/entity/ImageSource;->uri(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public static uri(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    :cond_2
    new-instance v0, Lcom/fimi/libperson/entity/ImageSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/libperson/entity/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fimi/libperson/entity/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getResource()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/libperson/entity/ImageSource;->resource:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/libperson/entity/ImageSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isTile()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fimi/libperson/entity/ImageSource;->tile:Z

    return v0
.end method
