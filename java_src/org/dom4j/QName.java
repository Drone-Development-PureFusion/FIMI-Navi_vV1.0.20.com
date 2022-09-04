package org.dom4j;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SingletonStrategy;
/* loaded from: classes2.dex */
public class QName implements Serializable {
    static Class class$org$dom4j$tree$QNameCache;
    private static SingletonStrategy singleton;
    private DocumentFactory documentFactory;
    private int hashCode;
    private String name;
    private transient Namespace namespace;
    private String qualifiedName;

    static {
        Class cls;
        singleton = null;
        Class clazz = null;
        try {
            String singletonClass = System.getProperty("org.dom4j.QName.singleton.strategy", "org.dom4j.util.SimpleSingleton");
            clazz = Class.forName(singletonClass);
        } catch (Exception e) {
            try {
                clazz = Class.forName("org.dom4j.util.SimpleSingleton");
            } catch (Exception e2) {
            }
        }
        try {
            singleton = (SingletonStrategy) clazz.newInstance();
            SingletonStrategy singletonStrategy = singleton;
            if (class$org$dom4j$tree$QNameCache == null) {
                cls = class$("org.dom4j.tree.QNameCache");
                class$org$dom4j$tree$QNameCache = cls;
            } else {
                cls = class$org$dom4j$tree$QNameCache;
            }
            singletonStrategy.setSingletonClassName(cls.getName());
        } catch (Exception e3) {
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public QName(String name) {
        this(name, Namespace.NO_NAMESPACE);
    }

    public QName(String name, Namespace namespace) {
        this.name = name == null ? "" : name;
        this.namespace = namespace == null ? Namespace.NO_NAMESPACE : namespace;
    }

    public QName(String name, Namespace namespace, String qualifiedName) {
        this.name = name == null ? "" : name;
        this.qualifiedName = qualifiedName;
        this.namespace = namespace == null ? Namespace.NO_NAMESPACE : namespace;
    }

    public static QName get(String name) {
        return getCache().get(name);
    }

    public static QName get(String name, Namespace namespace) {
        return getCache().get(name, namespace);
    }

    public static QName get(String name, String prefix, String uri) {
        if ((prefix == null || prefix.length() == 0) && uri == null) {
            return get(name);
        }
        if (prefix == null || prefix.length() == 0) {
            return getCache().get(name, Namespace.get(uri));
        }
        if (uri == null) {
            return get(name);
        }
        return getCache().get(name, Namespace.get(prefix, uri));
    }

    public static QName get(String qualifiedName, String uri) {
        return uri == null ? getCache().get(qualifiedName) : getCache().get(qualifiedName, uri);
    }

    public static QName get(String localName, Namespace namespace, String qualifiedName) {
        return getCache().get(localName, namespace, qualifiedName);
    }

    public String getName() {
        return this.name;
    }

    public String getQualifiedName() {
        if (this.qualifiedName == null) {
            String prefix = getNamespacePrefix();
            if (prefix != null && prefix.length() > 0) {
                this.qualifiedName = new StringBuffer().append(prefix).append(":").append(this.name).toString();
            } else {
                this.qualifiedName = this.name;
            }
        }
        return this.qualifiedName;
    }

    public Namespace getNamespace() {
        return this.namespace;
    }

    public String getNamespacePrefix() {
        return this.namespace == null ? "" : this.namespace.getPrefix();
    }

    public String getNamespaceURI() {
        return this.namespace == null ? "" : this.namespace.getURI();
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = getName().hashCode() ^ getNamespaceURI().hashCode();
            if (this.hashCode == 0) {
                this.hashCode = 47806;
            }
        }
        return this.hashCode;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof QName) {
            QName that = (QName) object;
            if (hashCode() == that.hashCode()) {
                return getName().equals(that.getName()) && getNamespaceURI().equals(that.getNamespaceURI());
            }
        }
        return false;
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [name: ").append(getName()).append(" namespace: \"").append(getNamespace()).append("\"]").toString();
    }

    public DocumentFactory getDocumentFactory() {
        return this.documentFactory;
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        this.documentFactory = documentFactory;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.writeObject(this.namespace.getPrefix());
        out.writeObject(this.namespace.getURI());
        out.defaultWriteObject();
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        String prefix = (String) in.readObject();
        String uri = (String) in.readObject();
        in.defaultReadObject();
        this.namespace = Namespace.get(prefix, uri);
    }

    private static QNameCache getCache() {
        QNameCache cache = (QNameCache) singleton.instance();
        return cache;
    }
}
