package com.file.zip;
/* loaded from: classes.dex */
public final class UnparseableExtraFieldData implements CentralDirectoryParsingZipExtraField {
    private static final ZipShort HEADER_ID = new ZipShort(44225);
    private byte[] centralDirectoryData;
    private byte[] localFileData;

    @Override // com.file.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.localFileData == null ? 0 : this.localFileData.length);
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        if (this.centralDirectoryData == null) {
            return getLocalFileDataLength();
        }
        return new ZipShort(this.centralDirectoryData.length);
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return ZipUtil.copy(this.localFileData);
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return this.centralDirectoryData == null ? getLocalFileDataData() : ZipUtil.copy(this.centralDirectoryData);
    }

    @Override // com.file.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] buffer, int offset, int length) {
        this.localFileData = new byte[length];
        System.arraycopy(buffer, offset, this.localFileData, 0, length);
    }

    @Override // com.file.zip.CentralDirectoryParsingZipExtraField
    public void parseFromCentralDirectoryData(byte[] buffer, int offset, int length) {
        this.centralDirectoryData = new byte[length];
        System.arraycopy(buffer, offset, this.centralDirectoryData, 0, length);
        if (this.localFileData == null) {
            parseFromLocalFileData(buffer, offset, length);
        }
    }
}
