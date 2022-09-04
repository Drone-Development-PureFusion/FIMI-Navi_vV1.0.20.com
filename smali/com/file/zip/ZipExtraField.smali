.class public interface abstract Lcom/file/zip/ZipExtraField;
.super Ljava/lang/Object;
.source "ZipExtraField.java"


# virtual methods
.method public abstract getCentralDirectoryData()[B
.end method

.method public abstract getCentralDirectoryLength()Lcom/file/zip/ZipShort;
.end method

.method public abstract getHeaderId()Lcom/file/zip/ZipShort;
.end method

.method public abstract getLocalFileDataData()[B
.end method

.method public abstract getLocalFileDataLength()Lcom/file/zip/ZipShort;
.end method

.method public abstract parseFromLocalFileData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation
.end method
