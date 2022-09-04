package com.file.zip;
/* loaded from: classes.dex */
public class UnrecognizedExtraField implements CentralDirectoryParsingZipExtraField {
    private byte[] centralData;
    private ZipShort headerId;
    private byte[] localData;

    public void setHeaderId(ZipShort headerId) {
        this.headerId = headerId;
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return this.headerId;
    }

    public void setLocalFileDataData(byte[] data) {
        this.localData = ZipUtil.copy(data);
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.localData.length);
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return ZipUtil.copy(this.localData);
    }

    public void setCentralDirectoryData(byte[] data) {
        this.centralData = ZipUtil.copy(data);
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return this.centralData != null ? new ZipShort(this.centralData.length) : getLocalFileDataLength();
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return this.centralData != null ? ZipUtil.copy(this.centralData) : getLocalFileDataData();
    }

    @Override // com.file.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] data, int offset, int length) {
        byte[] tmp = new byte[length];
        System.arraycopy(data, offset, tmp, 0, length);
        setLocalFileDataData(tmp);
    }

    @Override // com.file.zip.CentralDirectoryParsingZipExtraField
    public void parseFromCentralDirectoryData(byte[] data, int offset, int length) {
        byte[] tmp = new byte[length];
        System.arraycopy(data, offset, tmp, 0, length);
        setCentralDirectoryData(tmp);
        if (this.localData == null) {
            setLocalFileDataData(tmp);
        }
    }
}
