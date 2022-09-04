package org.jdom.xpath;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.List;
import org.jdom.JDOMException;
import org.jdom.Namespace;
/* loaded from: classes2.dex */
public abstract class XPath implements Serializable {
    private static final String CVS_ID = "@(#) $RCSfile: XPath.java,v $ $Revision: 1.15 $ $Date: 2004/02/06 09:28:32 $ $Name: jdom_1_0 $";
    private static final String DEFAULT_XPATH_CLASS = "org.jdom.xpath.JaxenXPath";
    private static final String XPATH_CLASS_PROPERTY = "org.jdom.xpath.class";
    static Class class$java$lang$String;
    static Class class$org$jdom$xpath$XPath;
    private static Constructor constructor = null;

    public abstract void addNamespace(Namespace namespace);

    public abstract String getXPath();

    public abstract Number numberValueOf(Object obj) throws JDOMException;

    public abstract List selectNodes(Object obj) throws JDOMException;

    public abstract Object selectSingleNode(Object obj) throws JDOMException;

    public abstract void setVariable(String str, Object obj);

    public abstract String valueOf(Object obj) throws JDOMException;

    static Class class$(String class$) {
        try {
            return Class.forName(class$);
        } catch (ClassNotFoundException forName) {
            throw new NoClassDefFoundError(forName.getMessage());
        }
    }

    public static XPath newInstance(String path) throws JDOMException {
        String className;
        try {
            if (constructor == null) {
                try {
                    className = System.getProperty(XPATH_CLASS_PROPERTY, DEFAULT_XPATH_CLASS);
                } catch (SecurityException e) {
                    className = DEFAULT_XPATH_CLASS;
                }
                setXPathClass(Class.forName(className));
            }
            return (XPath) constructor.newInstance(path);
        } catch (InvocationTargetException ex2) {
            Throwable t = ex2.getTargetException();
            if (!(t instanceof JDOMException)) {
                throw new JDOMException(t.toString(), t);
            }
            throw ((JDOMException) t);
        } catch (JDOMException ex1) {
            throw ex1;
        } catch (Exception ex3) {
            throw new JDOMException(ex3.toString(), ex3);
        }
    }

    public static void setXPathClass(Class aClass) throws JDOMException {
        Class class$;
        Class<?> class$2;
        if (aClass == null) {
            throw new IllegalArgumentException("aClass");
        }
        try {
            if (class$org$jdom$xpath$XPath != null) {
                class$ = class$org$jdom$xpath$XPath;
            } else {
                class$ = class$("org.jdom.xpath.XPath");
                class$org$jdom$xpath$XPath = class$;
            }
            if (class$.isAssignableFrom(aClass) && !Modifier.isAbstract(aClass.getModifiers())) {
                Class<?>[] clsArr = new Class[1];
                if (class$java$lang$String != null) {
                    class$2 = class$java$lang$String;
                } else {
                    class$2 = class$("java.lang.String");
                    class$java$lang$String = class$2;
                }
                clsArr[0] = class$2;
                constructor = aClass.getConstructor(clsArr);
                return;
            }
            throw new JDOMException(new StringBuffer(String.valueOf(aClass.getName())).append(" is not a concrete JDOM XPath implementation").toString());
        } catch (JDOMException ex1) {
            throw ex1;
        } catch (Exception ex2) {
            throw new JDOMException(ex2.toString(), ex2);
        }
    }

    public void addNamespace(String prefix, String uri) {
        addNamespace(Namespace.getNamespace(prefix, uri));
    }

    public static List selectNodes(Object context, String path) throws JDOMException {
        return newInstance(path).selectNodes(context);
    }

    public static Object selectSingleNode(Object context, String path) throws JDOMException {
        return newInstance(path).selectSingleNode(context);
    }

    protected final Object writeReplace() throws ObjectStreamException {
        return new XPathString(getXPath());
    }

    /* loaded from: classes2.dex */
    private static final class XPathString implements Serializable {
        private String xPath;

        public XPathString(String xpath) {
            this.xPath = null;
            this.xPath = xpath;
        }

        private Object readResolve() throws ObjectStreamException {
            try {
                return XPath.newInstance(this.xPath);
            } catch (JDOMException ex1) {
                throw new InvalidObjectException(new StringBuffer("Can't create XPath object for expression \"").append(this.xPath).append("\": ").append(ex1.toString()).toString());
            }
        }
    }
}
