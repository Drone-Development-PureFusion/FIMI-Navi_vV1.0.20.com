package com.file.zip;
/* loaded from: classes.dex */
public final class GeneralPurposeBit {
    private static final int DATA_DESCRIPTOR_FLAG = 8;
    private static final int ENCRYPTION_FLAG = 1;
    private static final int STRONG_ENCRYPTION_FLAG = 64;
    public static final int UFT8_NAMES_FLAG = 2048;
    private boolean languageEncodingFlag = false;
    private boolean dataDescriptorFlag = false;
    private boolean encryptionFlag = false;
    private boolean strongEncryptionFlag = false;

    public boolean usesUTF8ForNames() {
        return this.languageEncodingFlag;
    }

    public void useUTF8ForNames(boolean b) {
        this.languageEncodingFlag = b;
    }

    public boolean usesDataDescriptor() {
        return this.dataDescriptorFlag;
    }

    public void useDataDescriptor(boolean b) {
        this.dataDescriptorFlag = b;
    }

    public boolean usesEncryption() {
        return this.encryptionFlag;
    }

    public void useEncryption(boolean b) {
        this.encryptionFlag = b;
    }

    public boolean usesStrongEncryption() {
        return this.encryptionFlag && this.strongEncryptionFlag;
    }

    public void useStrongEncryption(boolean b) {
        this.strongEncryptionFlag = b;
        if (b) {
            useEncryption(true);
        }
    }

    public byte[] encode() {
        int i = 0;
        int i2 = (this.encryptionFlag ? 1 : 0) | (this.languageEncodingFlag ? 2048 : 0) | (this.dataDescriptorFlag ? 8 : 0);
        if (this.strongEncryptionFlag) {
            i = 64;
        }
        return ZipShort.getBytes(i2 | i);
    }

    public static GeneralPurposeBit parse(byte[] data, int offset) {
        boolean z = true;
        int generalPurposeFlag = ZipShort.getValue(data, offset);
        GeneralPurposeBit b = new GeneralPurposeBit();
        b.useDataDescriptor((generalPurposeFlag & 8) != 0);
        b.useUTF8ForNames((generalPurposeFlag & 2048) != 0);
        b.useStrongEncryption((generalPurposeFlag & 64) != 0);
        if ((generalPurposeFlag & 1) == 0) {
            z = false;
        }
        b.useEncryption(z);
        return b;
    }

    public int hashCode() {
        int i = 1;
        int i2 = ((this.languageEncodingFlag ? 1 : 0) + (((this.strongEncryptionFlag ? 1 : 0) + ((this.encryptionFlag ? 1 : 0) * 17)) * 13)) * 7;
        if (!this.dataDescriptorFlag) {
            i = 0;
        }
        return (i2 + i) * 3;
    }

    public boolean equals(Object o) {
        if (!(o instanceof GeneralPurposeBit)) {
            return false;
        }
        GeneralPurposeBit g = (GeneralPurposeBit) o;
        return g.encryptionFlag == this.encryptionFlag && g.strongEncryptionFlag == this.strongEncryptionFlag && g.languageEncodingFlag == this.languageEncodingFlag && g.dataDescriptorFlag == this.dataDescriptorFlag;
    }
}
