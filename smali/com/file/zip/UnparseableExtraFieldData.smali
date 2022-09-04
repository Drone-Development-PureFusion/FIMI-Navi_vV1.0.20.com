.class public final Lcom/file/zip/UnparseableExtraFieldData;
.super Ljava/lang/Object;
.source "UnparseableExtraFieldData.java"

# interfaces
.implements Lcom/file/zip/CentralDirectoryParsingZipExtraField;


# static fields
.field private static final HEADER_ID:Lcom/file/zip/ZipShort;


# instance fields
.field private centralDirectoryData:[B

.field private localFileData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/file/zip/ZipShort;

    const v1, 0xacc1

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/UnparseableExtraFieldData;->HEADER_ID:Lcom/file/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/file/zip/UnparseableExtraFieldData;->getLocalFileDataData()[B

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    invoke-static {v0}, Lcom/file/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCentralDirectoryLength()Lcom/file/zip/ZipShort;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/file/zip/UnparseableExtraFieldData;->getLocalFileDataLength()Lcom/file/zip/ZipShort;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lcom/file/zip/ZipShort;

    iget-object v1, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    goto :goto_0
.end method

.method public getHeaderId()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/file/zip/UnparseableExtraFieldData;->HEADER_ID:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    invoke-static {v0}, Lcom/file/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lcom/file/zip/ZipShort;
    .locals 2

    .prologue
    .line 54
    new-instance v1, Lcom/file/zip/ZipShort;

    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcom/file/zip/ZipShort;-><init>(I)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 108
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 109
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/file/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 113
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 95
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 96
    iget-object v0, p0, Lcom/file/zip/UnparseableExtraFieldData;->localFileData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void
.end method
