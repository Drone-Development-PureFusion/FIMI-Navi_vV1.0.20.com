.class public Lcom/file/zip/UnsupportedZipFeatureException$Feature;
.super Ljava/lang/Object;
.source "UnsupportedZipFeatureException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/UnsupportedZipFeatureException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static final DATA_DESCRIPTOR:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

.field public static final ENCRYPTION:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

.field public static final METHOD:Lcom/file/zip/UnsupportedZipFeatureException$Feature;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lcom/file/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    .line 72
    new-instance v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "compression method"

    invoke-direct {v0, v1}, Lcom/file/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    .line 76
    new-instance v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "data descriptor"

    invoke-direct {v0, v1}, Lcom/file/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->name:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->name:Ljava/lang/String;

    return-object v0
.end method
