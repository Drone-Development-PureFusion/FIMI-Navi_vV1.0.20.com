package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class LRULimitedMemoryCache extends LimitedMemoryCache {
    private static final int INITIAL_CAPACITY = 10;
    private static final float LOAD_FACTOR = 1.1f;
    private final Map<String, Bitmap> lruCache = Collections.synchronizedMap(new LinkedHashMap(10, LOAD_FACTOR, true));

    public LRULimitedMemoryCache(int maxSize) {
        super(maxSize);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public boolean put(String key, Bitmap value) {
        if (super.put(key, value)) {
            this.lruCache.put(key, value);
            return true;
        }
        return false;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Bitmap get(String key) {
        this.lruCache.get(key);
        return super.get(key);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Bitmap remove(String key) {
        this.lruCache.remove(key);
        return super.remove(key);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache, com.nostra13.universalimageloader.cache.memory.BaseMemoryCache, com.nostra13.universalimageloader.cache.memory.MemoryCache
    public void clear() {
        this.lruCache.clear();
        super.clear();
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache
    protected int getSize(Bitmap value) {
        return value.getRowBytes() * value.getHeight();
    }

    @Override // com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache
    protected Bitmap removeNext() {
        Bitmap mostLongUsedValue = null;
        synchronized (this.lruCache) {
            Iterator<Map.Entry<String, Bitmap>> it = this.lruCache.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, Bitmap> entry = it.next();
                mostLongUsedValue = entry.getValue();
                it.remove();
            }
        }
        return mostLongUsedValue;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.BaseMemoryCache
    protected Reference<Bitmap> createReference(Bitmap value) {
        return new WeakReference(value);
    }
}
