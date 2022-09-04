.class public Lcom/file/zip/UnsupportedZipFeatureException;
.super Ljava/util/zip/ZipException;
.source "UnsupportedZipFeatureException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/file/zip/UnsupportedZipFeatureException$Feature;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d7c6036c47a9c0dL


# instance fields
.field private final entry:Lcom/file/zip/ZipEntry;

.field private final reason:Lcom/file/zip/UnsupportedZipFeatureException$Feature;


# direct methods
.method public constructor <init>(Lcom/file/zip/UnsupportedZipFeatureException$Feature;Lcom/file/zip/ZipEntry;)V
    .locals 2
    .param p1, "reason"    # Lcom/file/zip/UnsupportedZipFeatureException$Feature;
    .param p2, "entry"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/file/zip/UnsupportedZipFeatureException;->reason:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    .line 44
    iput-object p2, p0, Lcom/file/zip/UnsupportedZipFeatureException;->entry:Lcom/file/zip/ZipEntry;

    .line 45
    return-void
.end method


# virtual methods
.method public getEntry()Lcom/file/zip/ZipEntry;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/file/zip/UnsupportedZipFeatureException;->entry:Lcom/file/zip/ZipEntry;

    return-object v0
.end method

.method public getFeature()Lcom/file/zip/UnsupportedZipFeatureException$Feature;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/file/zip/UnsupportedZipFeatureException;->reason:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    return-object v0
.end method
