package org.mp4parser.aspectj.runtime.reflect;

import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.Modifier;
/* loaded from: classes2.dex */
class StringMaker {
    int cacheOffset;
    static StringMaker shortStringMaker = new StringMaker();
    static StringMaker middleStringMaker = new StringMaker();
    static StringMaker longStringMaker = new StringMaker();
    boolean shortTypeNames = true;
    boolean includeArgs = true;
    boolean includeThrows = false;
    boolean includeModifiers = false;
    boolean shortPrimaryTypeNames = false;
    boolean includeJoinPointTypeName = true;
    boolean includeEnclosingPoint = true;
    boolean shortKindName = true;

    StringMaker() {
    }

    static {
        shortStringMaker.shortTypeNames = true;
        shortStringMaker.includeArgs = false;
        shortStringMaker.includeThrows = false;
        shortStringMaker.includeModifiers = false;
        shortStringMaker.shortPrimaryTypeNames = true;
        shortStringMaker.includeJoinPointTypeName = false;
        shortStringMaker.includeEnclosingPoint = false;
        shortStringMaker.cacheOffset = 0;
        middleStringMaker.shortTypeNames = true;
        middleStringMaker.includeArgs = true;
        middleStringMaker.includeThrows = false;
        middleStringMaker.includeModifiers = false;
        middleStringMaker.shortPrimaryTypeNames = false;
        shortStringMaker.cacheOffset = 1;
        longStringMaker.shortTypeNames = false;
        longStringMaker.includeArgs = true;
        longStringMaker.includeThrows = false;
        longStringMaker.includeModifiers = true;
        longStringMaker.shortPrimaryTypeNames = false;
        longStringMaker.shortKindName = false;
        longStringMaker.cacheOffset = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String makeKindName(String name) {
        int dash = name.lastIndexOf(45);
        return dash == -1 ? name : name.substring(dash + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String makeModifiersString(int modifiers) {
        if (!this.includeModifiers) {
            return "";
        }
        String str = Modifier.toString(modifiers);
        return str.length() == 0 ? "" : new StringBuffer().append(str).append(" ").toString();
    }

    String stripPackageName(String name) {
        int dot = name.lastIndexOf(46);
        return dot == -1 ? name : name.substring(dot + 1);
    }

    String makeTypeName(Class type, String typeName, boolean shortName) {
        if (type == null) {
            return "ANONYMOUS";
        }
        if (type.isArray()) {
            Class componentType = type.getComponentType();
            return new StringBuffer().append(makeTypeName(componentType, componentType.getName(), shortName)).append("[]").toString();
        } else if (shortName) {
            return stripPackageName(typeName).replace(CoreConstants.DOLLAR, CoreConstants.DOT);
        } else {
            return typeName.replace(CoreConstants.DOLLAR, CoreConstants.DOT);
        }
    }

    public String makeTypeName(Class type) {
        return makeTypeName(type, type.getName(), this.shortTypeNames);
    }

    public String makePrimaryTypeName(Class type, String typeName) {
        return makeTypeName(type, typeName, this.shortPrimaryTypeNames);
    }

    public void addTypeNames(StringBuffer buf, Class[] types) {
        for (int i = 0; i < types.length; i++) {
            if (i > 0) {
                buf.append(", ");
            }
            buf.append(makeTypeName(types[i]));
        }
    }

    public void addSignature(StringBuffer buf, Class[] types) {
        if (types != null) {
            if (!this.includeArgs) {
                if (types.length == 0) {
                    buf.append("()");
                    return;
                } else {
                    buf.append("(..)");
                    return;
                }
            }
            buf.append("(");
            addTypeNames(buf, types);
            buf.append(")");
        }
    }

    public void addThrows(StringBuffer buf, Class[] types) {
        if (this.includeThrows && types != null && types.length != 0) {
            buf.append(" throws ");
            addTypeNames(buf, types);
        }
    }
}
