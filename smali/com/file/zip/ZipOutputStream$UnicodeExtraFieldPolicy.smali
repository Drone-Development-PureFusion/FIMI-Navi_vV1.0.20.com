.class public final Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeExtraFieldPolicy"
.end annotation


# static fields
.field public static final ALWAYS:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field public static final NEVER:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field public static final NOT_ENCODEABLE:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1521
    new-instance v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "always"

    invoke-direct {v0, v1}, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    .line 1520
    sput-object v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 1526
    new-instance v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    .line 1525
    sput-object v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 1532
    new-instance v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "not encodeable"

    invoke-direct {v0, v1}, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    .line 1531
    sput-object v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NOT_ENCODEABLE:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 1532
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    .line 1537
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    return-object v0
.end method
