package com.file.zip;

import java.util.zip.ZipException;
/* loaded from: classes.dex */
public class Zip64ExtendedInformationExtraField implements CentralDirectoryParsingZipExtraField {
    private static final String LFH_MUST_HAVE_BOTH_SIZES_MSG = "Zip64 extended information must contain both size values in the local file header.";
    private ZipEightByteInteger compressedSize;
    private ZipLong diskStart;
    private byte[] rawCentralDirectoryData;
    private ZipEightByteInteger relativeHeaderOffset;
    private ZipEightByteInteger size;
    static final ZipShort HEADER_ID = new ZipShort(1);
    private static final byte[] EMPTY = new byte[0];

    public Zip64ExtendedInformationExtraField() {
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger size, ZipEightByteInteger compressedSize) {
        this(size, compressedSize, null, null);
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger size, ZipEightByteInteger compressedSize, ZipEightByteInteger relativeHeaderOffset, ZipLong diskStart) {
        this.size = size;
        this.compressedSize = compressedSize;
        this.relativeHeaderOffset = relativeHeaderOffset;
        this.diskStart = diskStart;
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.size != null ? 16 : 0);
    }

    @Override // com.file.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        int i = 8;
        int i2 = 0;
        int i3 = (this.size != null ? 8 : 0) + (this.compressedSize != null ? 8 : 0);
        if (this.relativeHeaderOffset == null) {
            i = 0;
        }
        int i4 = i3 + i;
        if (this.diskStart != null) {
            i2 = 4;
        }
        return new ZipShort(i4 + i2);
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        if (this.size == null && this.compressedSize == null) {
            return EMPTY;
        }
        if (this.size == null || this.compressedSize == null) {
            throw new IllegalArgumentException(LFH_MUST_HAVE_BOTH_SIZES_MSG);
        }
        byte[] data = new byte[16];
        addSizes(data);
        return data;
    }

    @Override // com.file.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] data = new byte[getCentralDirectoryLength().getValue()];
        int off = addSizes(data);
        if (this.relativeHeaderOffset != null) {
            System.arraycopy(this.relativeHeaderOffset.getBytes(), 0, data, off, 8);
            off += 8;
        }
        if (this.diskStart != null) {
            System.arraycopy(this.diskStart.getBytes(), 0, data, off, 4);
            int i = off + 4;
        }
        return data;
    }

    @Override // com.file.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] buffer, int offset, int length) throws ZipException {
        if (length != 0) {
            if (length < 16) {
                throw new ZipException(LFH_MUST_HAVE_BOTH_SIZES_MSG);
            }
            this.size = new ZipEightByteInteger(buffer, offset);
            int offset2 = offset + 8;
            this.compressedSize = new ZipEightByteInteger(buffer, offset2);
            int offset3 = offset2 + 8;
            int remaining = length - 16;
            if (remaining >= 8) {
                this.relativeHeaderOffset = new ZipEightByteInteger(buffer, offset3);
                offset3 += 8;
                remaining -= 8;
            }
            if (remaining >= 4) {
                this.diskStart = new ZipLong(buffer, offset3);
                int i = offset3 + 4;
                int i2 = remaining - 4;
            }
        }
    }

    @Override // com.file.zip.CentralDirectoryParsingZipExtraField
    public void parseFromCentralDirectoryData(byte[] buffer, int offset, int length) throws ZipException {
        this.rawCentralDirectoryData = new byte[length];
        System.arraycopy(buffer, offset, this.rawCentralDirectoryData, 0, length);
        if (length >= 28) {
            parseFromLocalFileData(buffer, offset, length);
        } else if (length == 24) {
            this.size = new ZipEightByteInteger(buffer, offset);
            int offset2 = offset + 8;
            this.compressedSize = new ZipEightByteInteger(buffer, offset2);
            this.relativeHeaderOffset = new ZipEightByteInteger(buffer, offset2 + 8);
        } else if (length % 8 == 4) {
            this.diskStart = new ZipLong(buffer, (offset + length) - 4);
        }
    }

    public void reparseCentralDirectoryData(boolean hasUncompressedSize, boolean hasCompressedSize, boolean hasRelativeHeaderOffset, boolean hasDiskStart) throws ZipException {
        int i = 8;
        int i2 = 0;
        if (this.rawCentralDirectoryData != null) {
            int i3 = (hasCompressedSize ? 8 : 0) + (hasUncompressedSize ? 8 : 0);
            if (!hasRelativeHeaderOffset) {
                i = 0;
            }
            int i4 = i + i3;
            if (hasDiskStart) {
                i2 = 4;
            }
            int expectedLength = i4 + i2;
            if (this.rawCentralDirectoryData.length != expectedLength) {
                throw new ZipException("central directory zip64 extended information extra field's length doesn't match central directory data.  Expected length " + expectedLength + " but is " + this.rawCentralDirectoryData.length);
            }
            int offset = 0;
            if (hasUncompressedSize) {
                this.size = new ZipEightByteInteger(this.rawCentralDirectoryData, 0);
                offset = 0 + 8;
            }
            if (hasCompressedSize) {
                this.compressedSize = new ZipEightByteInteger(this.rawCentralDirectoryData, offset);
                offset += 8;
            }
            if (hasRelativeHeaderOffset) {
                this.relativeHeaderOffset = new ZipEightByteInteger(this.rawCentralDirectoryData, offset);
                offset += 8;
            }
            if (!hasDiskStart) {
                return;
            }
            this.diskStart = new ZipLong(this.rawCentralDirectoryData, offset);
            int i5 = offset + 4;
        }
    }

    public ZipEightByteInteger getSize() {
        return this.size;
    }

    public void setSize(ZipEightByteInteger size) {
        this.size = size;
    }

    public ZipEightByteInteger getCompressedSize() {
        return this.compressedSize;
    }

    public void setCompressedSize(ZipEightByteInteger compressedSize) {
        this.compressedSize = compressedSize;
    }

    public ZipEightByteInteger getRelativeHeaderOffset() {
        return this.relativeHeaderOffset;
    }

    public void setRelativeHeaderOffset(ZipEightByteInteger rho) {
        this.relativeHeaderOffset = rho;
    }

    public ZipLong getDiskStartNumber() {
        return this.diskStart;
    }

    public void setDiskStartNumber(ZipLong ds) {
        this.diskStart = ds;
    }

    private int addSizes(byte[] data) {
        int off = 0;
        if (this.size != null) {
            System.arraycopy(this.size.getBytes(), 0, data, 0, 8);
            off = 0 + 8;
        }
        if (this.compressedSize != null) {
            System.arraycopy(this.compressedSize.getBytes(), 0, data, off, 8);
            return off + 8;
        }
        return off;
    }
}
