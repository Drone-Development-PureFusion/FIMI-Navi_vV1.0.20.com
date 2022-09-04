package org.dom4j.tree;

import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.Map;
import org.dom4j.Namespace;
/* loaded from: classes2.dex */
public class NamespaceCache {
    private static final String CONCURRENTREADERHASHMAP_CLASS = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap";
    protected static Map cache;
    protected static Map noPrefixCache;

    static {
        try {
            Constructor construct = Class.forName("java.util.concurrent.ConcurrentHashMap").getConstructor(Integer.TYPE, Float.TYPE, Integer.TYPE);
            cache = (Map) construct.newInstance(new Integer(11), new Float(0.75f), new Integer(1));
            noPrefixCache = (Map) construct.newInstance(new Integer(11), new Float(0.75f), new Integer(1));
        } catch (Throwable th) {
            try {
                Class clazz = Class.forName(CONCURRENTREADERHASHMAP_CLASS);
                cache = (Map) clazz.newInstance();
                noPrefixCache = (Map) clazz.newInstance();
            } catch (Throwable th2) {
                cache = new ConcurrentReaderHashMap();
                noPrefixCache = new ConcurrentReaderHashMap();
            }
        }
    }

    public Namespace get(String prefix, String uri) {
        Map uriCache = getURICache(uri);
        WeakReference ref = (WeakReference) uriCache.get(prefix);
        Namespace answer = null;
        if (ref != null) {
            answer = (Namespace) ref.get();
        }
        if (answer == null) {
            synchronized (uriCache) {
                WeakReference ref2 = (WeakReference) uriCache.get(prefix);
                if (ref2 != null) {
                    answer = (Namespace) ref2.get();
                }
                if (answer == null) {
                    answer = createNamespace(prefix, uri);
                    uriCache.put(prefix, new WeakReference(answer));
                }
            }
        }
        return answer;
    }

    public Namespace get(String uri) {
        WeakReference ref = (WeakReference) noPrefixCache.get(uri);
        Namespace answer = null;
        if (ref != null) {
            answer = (Namespace) ref.get();
        }
        if (answer == null) {
            synchronized (noPrefixCache) {
                WeakReference ref2 = (WeakReference) noPrefixCache.get(uri);
                if (ref2 != null) {
                    answer = (Namespace) ref2.get();
                }
                if (answer == null) {
                    answer = createNamespace("", uri);
                    noPrefixCache.put(uri, new WeakReference(answer));
                }
            }
        }
        return answer;
    }

    protected Map getURICache(String uri) {
        Map answer = (Map) cache.get(uri);
        if (answer == null) {
            synchronized (cache) {
                try {
                    answer = (Map) cache.get(uri);
                    if (answer == null) {
                        ConcurrentReaderHashMap concurrentReaderHashMap = new ConcurrentReaderHashMap();
                        try {
                            cache.put(uri, concurrentReaderHashMap);
                            answer = concurrentReaderHashMap;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return answer;
    }

    protected Namespace createNamespace(String prefix, String uri) {
        return new Namespace(prefix, uri);
    }
}
