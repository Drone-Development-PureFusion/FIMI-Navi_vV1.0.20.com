package com.file.zip;

import java.util.zip.ZipException;
/* loaded from: classes.dex */
public interface CentralDirectoryParsingZipExtraField extends ZipExtraField {
    void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException;
}
