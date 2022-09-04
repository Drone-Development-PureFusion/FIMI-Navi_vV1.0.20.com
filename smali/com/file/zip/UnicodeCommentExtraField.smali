.class public Lcom/file/zip/UnicodeCommentExtraField;
.super Lcom/file/zip/AbstractUnicodeExtraField;
.source "UnicodeCommentExtraField.java"


# static fields
.field public static final UCOM_ID:Lcom/file/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/file/zip/ZipShort;

    const/16 v1, 0x6375

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/UnicodeCommentExtraField;->UCOM_ID:Lcom/file/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/file/zip/AbstractUnicodeExtraField;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/file/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[B)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/file/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 57
    return-void
.end method


# virtual methods
.method public getHeaderId()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/file/zip/UnicodeCommentExtraField;->UCOM_ID:Lcom/file/zip/ZipShort;

    return-object v0
.end method
