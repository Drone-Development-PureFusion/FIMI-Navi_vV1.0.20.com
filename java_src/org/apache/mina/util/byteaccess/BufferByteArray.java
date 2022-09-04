package org.apache.mina.util.byteaccess;

import java.nio.ByteOrder;
import java.util.Collections;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.util.byteaccess.ByteArray;
/* loaded from: classes2.dex */
public abstract class BufferByteArray extends AbstractByteArray {

    /* renamed from: bb */
    protected IoBuffer f1480bb;

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public abstract void free();

    public BufferByteArray(IoBuffer bb) {
        this.f1480bb = bb;
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public Iterable<IoBuffer> getIoBuffers() {
        return Collections.singletonList(this.f1480bb);
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public IoBuffer getSingleIoBuffer() {
        return this.f1480bb;
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public ByteArray slice(int index, int length) {
        int oldLimit = this.f1480bb.limit();
        this.f1480bb.position(index);
        this.f1480bb.limit(index + length);
        IoBuffer slice = this.f1480bb.slice();
        this.f1480bb.limit(oldLimit);
        return new BufferByteArray(slice) { // from class: org.apache.mina.util.byteaccess.BufferByteArray.1
            @Override // org.apache.mina.util.byteaccess.BufferByteArray, org.apache.mina.util.byteaccess.ByteArray
            public void free() {
            }
        };
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public ByteArray.Cursor cursor() {
        return new CursorImpl();
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public ByteArray.Cursor cursor(int index) {
        return new CursorImpl(index);
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader, org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public int first() {
        return 0;
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader, org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public int last() {
        return this.f1480bb.limit();
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader, org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public ByteOrder order() {
        return this.f1480bb.order();
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray
    public void order(ByteOrder order) {
        this.f1480bb.order(order);
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader
    public byte get(int index) {
        return this.f1480bb.get(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void put(int index, byte b) {
        this.f1480bb.put(index, b);
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader
    public void get(int index, IoBuffer other) {
        this.f1480bb.position(index);
        other.put(this.f1480bb);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void put(int index, IoBuffer other) {
        this.f1480bb.position(index);
        this.f1480bb.put(other);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public short getShort(int index) {
        return this.f1480bb.getShort(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putShort(int index, short s) {
        this.f1480bb.putShort(index, s);
    }

    @Override // org.apache.mina.util.byteaccess.ByteArray, org.apache.mina.util.byteaccess.IoAbsoluteReader
    public int getInt(int index) {
        return this.f1480bb.getInt(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putInt(int index, int i) {
        this.f1480bb.putInt(index, i);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public long getLong(int index) {
        return this.f1480bb.getLong(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putLong(int index, long l) {
        this.f1480bb.putLong(index, l);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public float getFloat(int index) {
        return this.f1480bb.getFloat(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putFloat(int index, float f) {
        this.f1480bb.putFloat(index, f);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public double getDouble(int index) {
        return this.f1480bb.getDouble(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putDouble(int index, double d) {
        this.f1480bb.putDouble(index, d);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteReader
    public char getChar(int index) {
        return this.f1480bb.getChar(index);
    }

    @Override // org.apache.mina.util.byteaccess.IoAbsoluteWriter
    public void putChar(int index, char c) {
        this.f1480bb.putChar(index, c);
    }

    /* loaded from: classes2.dex */
    private class CursorImpl implements ByteArray.Cursor {
        private int index;

        public CursorImpl() {
        }

        public CursorImpl(int index) {
            setIndex(index);
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor, org.apache.mina.util.byteaccess.IoRelativeReader, org.apache.mina.util.byteaccess.IoRelativeWriter
        public int getRemaining() {
            return BufferByteArray.this.last() - this.index;
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor, org.apache.mina.util.byteaccess.IoRelativeReader, org.apache.mina.util.byteaccess.IoRelativeWriter
        public boolean hasRemaining() {
            return getRemaining() > 0;
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor
        public int getIndex() {
            return this.index;
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor
        public void setIndex(int index) {
            if (index < 0 || index > BufferByteArray.this.last()) {
                throw new IndexOutOfBoundsException();
            }
            this.index = index;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader, org.apache.mina.util.byteaccess.IoRelativeWriter
        public void skip(int length) {
            setIndex(this.index + length);
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public ByteArray slice(int length) {
            ByteArray slice = BufferByteArray.this.slice(this.index, length);
            this.index += length;
            return slice;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader, org.apache.mina.util.byteaccess.IoRelativeWriter
        public ByteOrder order() {
            return BufferByteArray.this.order();
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor, org.apache.mina.util.byteaccess.IoRelativeReader
        public byte get() {
            byte b = BufferByteArray.this.get(this.index);
            this.index++;
            return b;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void put(byte b) {
            BufferByteArray.this.put(this.index, b);
            this.index++;
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor, org.apache.mina.util.byteaccess.IoRelativeReader
        public void get(IoBuffer bb) {
            int size = Math.min(getRemaining(), bb.remaining());
            BufferByteArray.this.get(this.index, bb);
            this.index += size;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void put(IoBuffer bb) {
            int size = bb.remaining();
            BufferByteArray.this.put(this.index, bb);
            this.index += size;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public short getShort() {
            short s = BufferByteArray.this.getShort(this.index);
            this.index += 2;
            return s;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putShort(short s) {
            BufferByteArray.this.putShort(this.index, s);
            this.index += 2;
        }

        @Override // org.apache.mina.util.byteaccess.ByteArray.Cursor, org.apache.mina.util.byteaccess.IoRelativeReader
        public int getInt() {
            int i = BufferByteArray.this.getInt(this.index);
            this.index += 4;
            return i;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putInt(int i) {
            BufferByteArray.this.putInt(this.index, i);
            this.index += 4;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public long getLong() {
            long l = BufferByteArray.this.getLong(this.index);
            this.index += 8;
            return l;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putLong(long l) {
            BufferByteArray.this.putLong(this.index, l);
            this.index += 8;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public float getFloat() {
            float f = BufferByteArray.this.getFloat(this.index);
            this.index += 4;
            return f;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putFloat(float f) {
            BufferByteArray.this.putFloat(this.index, f);
            this.index += 4;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public double getDouble() {
            double d = BufferByteArray.this.getDouble(this.index);
            this.index += 8;
            return d;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putDouble(double d) {
            BufferByteArray.this.putDouble(this.index, d);
            this.index += 8;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeReader
        public char getChar() {
            char c = BufferByteArray.this.getChar(this.index);
            this.index += 2;
            return c;
        }

        @Override // org.apache.mina.util.byteaccess.IoRelativeWriter
        public void putChar(char c) {
            BufferByteArray.this.putChar(this.index, c);
            this.index += 2;
        }
    }
}
