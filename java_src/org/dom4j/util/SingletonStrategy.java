package org.dom4j.util;
/* loaded from: classes2.dex */
public interface SingletonStrategy {
    Object instance();

    void reset();

    void setSingletonClassName(String str);
}
