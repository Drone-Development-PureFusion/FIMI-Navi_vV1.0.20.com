package org.dom4j.util;
/* loaded from: classes2.dex */
public class SimpleSingleton implements SingletonStrategy {
    private String singletonClassName = null;
    private Object singletonInstance = null;

    @Override // org.dom4j.util.SingletonStrategy
    public Object instance() {
        return this.singletonInstance;
    }

    @Override // org.dom4j.util.SingletonStrategy
    public void reset() {
        if (this.singletonClassName != null) {
            try {
                Class clazz = Thread.currentThread().getContextClassLoader().loadClass(this.singletonClassName);
                this.singletonInstance = clazz.newInstance();
            } catch (Exception e) {
                try {
                    Class clazz2 = Class.forName(this.singletonClassName);
                    this.singletonInstance = clazz2.newInstance();
                } catch (Exception e2) {
                }
            }
        }
    }

    @Override // org.dom4j.util.SingletonStrategy
    public void setSingletonClassName(String singletonClassName) {
        this.singletonClassName = singletonClassName;
        reset();
    }
}
