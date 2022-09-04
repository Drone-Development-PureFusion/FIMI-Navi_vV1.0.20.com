package ch.qos.logback.core.encoder;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class EventObjectInputStream<E> extends InputStream {
    List<E> buffer = new ArrayList();
    int index = 0;
    NonClosableInputStream ncis;

    EventObjectInputStream(InputStream inputStream) throws IOException {
        this.ncis = new NonClosableInputStream(inputStream);
    }

    private void internalReset() {
        this.index = 0;
        this.buffer.clear();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.ncis.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.ncis.realClose();
    }

    E getFromBuffer() {
        if (this.index >= this.buffer.size()) {
            return null;
        }
        List<E> list = this.buffer;
        int i = this.index;
        this.index = i + 1;
        return list.get(i);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw new UnsupportedOperationException("Only the readEvent method is supported.");
    }

    public E readEvent() throws IOException {
        E fromBuffer = getFromBuffer();
        if (fromBuffer != null) {
            return fromBuffer;
        }
        internalReset();
        int readHeader = readHeader();
        if (readHeader == -1) {
            return null;
        }
        readPayload(readHeader);
        readFooter(readHeader);
        return getFromBuffer();
    }

    E readEvents(ObjectInputStream objectInputStream) throws IOException {
        E e = null;
        try {
            e = (E) objectInputStream.readObject();
            this.buffer.add(e);
            return e;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return e;
        }
    }

    void readFooter(int i) throws IOException {
        byte[] bArr = new byte[8];
        if (this.ncis.read(bArr) == -1) {
            throw new IllegalStateException("Looks like a corrupt stream");
        }
        if (ByteArrayUtil.readInt(bArr, 0) != 640373619) {
            throw new IllegalStateException("Looks like a corrupt stream");
        }
        if (ByteArrayUtil.readInt(bArr, 4) == (640373619 ^ i)) {
            return;
        }
        throw new IllegalStateException("Invalid checksum");
    }

    int readHeader() throws IOException {
        int i = -1;
        byte[] bArr = new byte[16];
        if (this.ncis.read(bArr) != -1) {
            if (ByteArrayUtil.readInt(bArr, 0) != 1853421169) {
                throw new IllegalStateException("Does not look like data created by ObjectStreamEncoder");
            }
            i = ByteArrayUtil.readInt(bArr, 4);
            if (ByteArrayUtil.readInt(bArr, 12) != (1853421169 ^ i)) {
                throw new IllegalStateException("Invalid checksum");
            }
        }
        return i;
    }

    void readPayload(int i) throws IOException {
        ArrayList arrayList = new ArrayList(i);
        ObjectInputStream objectInputStream = new ObjectInputStream(this.ncis);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(readEvents(objectInputStream));
        }
        objectInputStream.close();
    }
}
