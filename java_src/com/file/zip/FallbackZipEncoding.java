package com.file.zip;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
class FallbackZipEncoding implements ZipEncoding {
    private final String charset;

    public FallbackZipEncoding() {
        this.charset = null;
    }

    public FallbackZipEncoding(String charset) {
        this.charset = charset;
    }

    @Override // com.file.zip.ZipEncoding
    public boolean canEncode(String name) {
        return true;
    }

    @Override // com.file.zip.ZipEncoding
    public ByteBuffer encode(String name) throws IOException {
        return this.charset == null ? ByteBuffer.wrap(name.getBytes()) : ByteBuffer.wrap(name.getBytes(this.charset));
    }

    @Override // com.file.zip.ZipEncoding
    public String decode(byte[] data) throws IOException {
        return this.charset == null ? new String(data) : new String(data, this.charset);
    }
}
