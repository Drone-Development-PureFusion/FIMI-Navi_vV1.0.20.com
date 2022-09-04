.class public final Lcom/file/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lcom/file/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lcom/file/zip/JarMarker;

.field private static final ID:Lcom/file/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lcom/file/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/file/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/JarMarker;->ID:Lcom/file/zip/ZipShort;

    .line 32
    new-instance v0, Lcom/file/zip/ZipShort;

    invoke-direct {v0, v2}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/JarMarker;->NULL:Lcom/file/zip/ZipShort;

    .line 33
    new-array v0, v2, [B

    sput-object v0, Lcom/file/zip/JarMarker;->NO_BYTES:[B

    .line 34
    new-instance v0, Lcom/file/zip/JarMarker;

    invoke-direct {v0}, Lcom/file/zip/JarMarker;-><init>()V

    sput-object v0, Lcom/file/zip/JarMarker;->DEFAULT:Lcom/file/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/file/zip/JarMarker;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/file/zip/JarMarker;->DEFAULT:Lcom/file/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/file/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/file/zip/JarMarker;->NULL:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/file/zip/JarMarker;->ID:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/file/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/file/zip/JarMarker;->NULL:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p3, :cond_0

    .line 105
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "JarMarker doesn\'t expect any data"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method
