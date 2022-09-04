package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.QualityInfo;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.internal.ServerProtocol;
import java.util.Map;
/* loaded from: classes.dex */
public class BitmapMemoryCacheProducer implements Producer<CloseableReference<CloseableImage>> {
    public static final String EXTRA_CACHED_VALUE_FOUND = "cached_value_found";
    public static final String PRODUCER_NAME = "BitmapMemoryCacheProducer";
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;
    private final MemoryCache<CacheKey, CloseableImage> mMemoryCache;

    public BitmapMemoryCacheProducer(MemoryCache<CacheKey, CloseableImage> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<CloseableReference<CloseableImage>> inputProducer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        Map<String, String> map = null;
        ProducerListener listener = producerContext.getListener();
        String requestId = producerContext.getId();
        listener.onProducerStart(requestId, getProducerName());
        ImageRequest imageRequest = producerContext.getImageRequest();
        Object callerContext = producerContext.getCallerContext();
        CacheKey cacheKey = this.mCacheKeyFactory.getBitmapCacheKey(imageRequest, callerContext);
        CloseableReference<CloseableImage> cachedReference = this.mMemoryCache.get(cacheKey);
        if (cachedReference != null) {
            boolean isFinal = cachedReference.get().getQualityInfo().isOfFullQuality();
            if (isFinal) {
                listener.onProducerFinishWithSuccess(requestId, getProducerName(), listener.requiresExtraMap(requestId) ? ImmutableMap.m1419of("cached_value_found", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) : null);
                consumer.onProgressUpdate(1.0f);
            }
            consumer.onNewResult(cachedReference, isFinal);
            cachedReference.close();
            if (isFinal) {
                return;
            }
        }
        if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
            listener.onProducerFinishWithSuccess(requestId, getProducerName(), listener.requiresExtraMap(requestId) ? ImmutableMap.m1419of("cached_value_found", "false") : null);
            consumer.onNewResult(null, true);
            return;
        }
        Consumer<CloseableReference<CloseableImage>> wrappedConsumer = wrapConsumer(consumer, cacheKey);
        String producerName = getProducerName();
        if (listener.requiresExtraMap(requestId)) {
            map = ImmutableMap.m1419of("cached_value_found", "false");
        }
        listener.onProducerFinishWithSuccess(requestId, producerName, map);
        this.mInputProducer.produceResults(wrappedConsumer, producerContext);
    }

    protected Consumer<CloseableReference<CloseableImage>> wrapConsumer(Consumer<CloseableReference<CloseableImage>> consumer, final CacheKey cacheKey) {
        return new DelegatingConsumer<CloseableReference<CloseableImage>, CloseableReference<CloseableImage>>(consumer) { // from class: com.facebook.imagepipeline.producers.BitmapMemoryCacheProducer.1
            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            public void onNewResultImpl(CloseableReference<CloseableImage> newResult, boolean isLast) {
                CloseableReference<CloseableImage> currentCachedResult;
                if (newResult == null) {
                    if (isLast) {
                        getConsumer().onNewResult(null, true);
                    }
                } else if (newResult.get().isStateful()) {
                    getConsumer().onNewResult(newResult, isLast);
                } else {
                    if (!isLast && (currentCachedResult = BitmapMemoryCacheProducer.this.mMemoryCache.get(cacheKey)) != null) {
                        try {
                            QualityInfo newInfo = newResult.get().getQualityInfo();
                            QualityInfo cachedInfo = currentCachedResult.get().getQualityInfo();
                            if (cachedInfo.isOfFullQuality() || cachedInfo.getQuality() >= newInfo.getQuality()) {
                                getConsumer().onNewResult(currentCachedResult, false);
                                return;
                            }
                            CloseableReference.closeSafely(currentCachedResult);
                        } finally {
                        }
                    }
                    currentCachedResult = BitmapMemoryCacheProducer.this.mMemoryCache.cache(cacheKey, newResult);
                    if (isLast) {
                        try {
                            getConsumer().onProgressUpdate(1.0f);
                        } finally {
                        }
                    }
                    Consumer<CloseableReference<CloseableImage>> consumer2 = getConsumer();
                    if (currentCachedResult != null) {
                        newResult = currentCachedResult;
                    }
                    consumer2.onNewResult(newResult, isLast);
                }
            }
        };
    }

    protected String getProducerName() {
        return PRODUCER_NAME;
    }
}
