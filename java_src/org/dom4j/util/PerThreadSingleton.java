package org.dom4j.util;

import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class PerThreadSingleton implements SingletonStrategy {
    private String singletonClassName = null;
    private ThreadLocal perThreadCache = new ThreadLocal();

    @Override // org.dom4j.util.SingletonStrategy
    public void reset() {
        this.perThreadCache = new ThreadLocal();
    }

    @Override // org.dom4j.util.SingletonStrategy
    public Object instance() {
        Object singletonInstancePerThread = null;
        WeakReference ref = (WeakReference) this.perThreadCache.get();
        if (ref == null || ref.get() == null) {
            try {
                Class clazz = Thread.currentThread().getContextClassLoader().loadClass(this.singletonClassName);
                singletonInstancePerThread = clazz.newInstance();
            } catch (Exception e) {
                try {
                    Class clazz2 = Class.forName(this.singletonClassName);
                    singletonInstancePerThread = clazz2.newInstance();
                } catch (Exception e2) {
                }
            }
            this.perThreadCache.set(new WeakReference(singletonInstancePerThread));
            return singletonInstancePerThread;
        }
        Object singletonInstancePerThread2 = ref.get();
        return singletonInstancePerThread2;
    }

    @Override // org.dom4j.util.SingletonStrategy
    public void setSingletonClassName(String singletonClassName) {
        this.singletonClassName = singletonClassName;
    }
}
