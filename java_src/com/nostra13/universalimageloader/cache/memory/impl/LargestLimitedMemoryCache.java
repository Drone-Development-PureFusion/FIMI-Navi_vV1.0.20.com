package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class LargestLimitedMemoryCache extends LimitedMemoryCache {
    private final Map<Bitmap, Integer> valueSizes = Collections.synchronizedMap(new HashMap());

    public LargestLimitedMemoryCache(int sizeLimit) {
        super(sizeLimit);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public boolean put(String key, Bitmap value) {
        if (super.put(key, value)) {
            this.valueSizes.put(value, Integer.valueOf(getSize(value)));
            return true;
        }
        return false;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Bitmap remove(String key) {
        Bitmap value = super.get(key);
        if (value != null) {
            this.valueSizes.remove(value);
        }
        return super.remove(key);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public void clear() {
        this.valueSizes.clear();
        super.clear();
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache
    protected int getSize(Bitmap value) {
        return value.getRowBytes() * value.getHeight();
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache
    protected Bitmap removeNext() {
        Integer maxSize = null;
        Bitmap largestValue = null;
        Set<Map.Entry<Bitmap, Integer>> entries = this.valueSizes.entrySet();
        synchronized (this.valueSizes) {
            for (Map.Entry<Bitmap, Integer> entry : entries) {
                if (largestValue == null) {
                    largestValue = entry.getKey();
                    maxSize = entry.getValue();
                } else {
                    Integer size = entry.getValue();
                    if (size.intValue() > maxSize.intValue()) {
                        maxSize = size;
                        largestValue = entry.getKey();
                    }
                }
            }
        }
        this.valueSizes.remove(largestValue);
        return largestValue;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.BaseMemoryCache
    protected Reference<Bitmap> createReference(Bitmap value) {
        return new WeakReference(value);
    }
}
