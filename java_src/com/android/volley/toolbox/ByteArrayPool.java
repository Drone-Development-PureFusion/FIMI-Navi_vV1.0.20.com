package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class ByteArrayPool {
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] lhs, byte[] rhs) {
            return lhs.length - rhs.length;
        }
    };
    private List<byte[]> mBuffersByLastUse = new LinkedList();
    private List<byte[]> mBuffersBySize = new ArrayList(64);
    private int mCurrentSize = 0;
    private final int mSizeLimit;

    public ByteArrayPool(int sizeLimit) {
        this.mSizeLimit = sizeLimit;
    }

    public synchronized byte[] getBuf(int len) {
        byte[] buf;
        int i = 0;
        while (true) {
            if (i < this.mBuffersBySize.size()) {
                buf = this.mBuffersBySize.get(i);
                if (buf.length < len) {
                    i++;
                } else {
                    this.mCurrentSize -= buf.length;
                    this.mBuffersBySize.remove(i);
                    this.mBuffersByLastUse.remove(buf);
                    break;
                }
            } else {
                buf = new byte[len];
                break;
            }
        }
        return buf;
    }

    public synchronized void returnBuf(byte[] buf) {
        if (buf != null) {
            if (buf.length <= this.mSizeLimit) {
                this.mBuffersByLastUse.add(buf);
                int pos = Collections.binarySearch(this.mBuffersBySize, buf, BUF_COMPARATOR);
                if (pos < 0) {
                    pos = (-pos) - 1;
                }
                this.mBuffersBySize.add(pos, buf);
                this.mCurrentSize += buf.length;
                trim();
            }
        }
    }

    private synchronized void trim() {
        while (this.mCurrentSize > this.mSizeLimit) {
            byte[] buf = this.mBuffersByLastUse.remove(0);
            this.mBuffersBySize.remove(buf);
            this.mCurrentSize -= buf.length;
        }
    }
}
