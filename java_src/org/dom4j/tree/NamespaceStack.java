package org.dom4j.tree;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class NamespaceStack {
    private Map currentNamespaceCache;
    private Namespace defaultNamespace;
    private DocumentFactory documentFactory;
    private ArrayList namespaceCacheList;
    private ArrayList namespaceStack;
    private Map rootNamespaceCache;

    public NamespaceStack() {
        this.namespaceStack = new ArrayList();
        this.namespaceCacheList = new ArrayList();
        this.rootNamespaceCache = new HashMap();
        this.documentFactory = DocumentFactory.getInstance();
    }

    public NamespaceStack(DocumentFactory documentFactory) {
        this.namespaceStack = new ArrayList();
        this.namespaceCacheList = new ArrayList();
        this.rootNamespaceCache = new HashMap();
        this.documentFactory = documentFactory;
    }

    public void push(Namespace namespace) {
        this.namespaceStack.add(namespace);
        this.namespaceCacheList.add(null);
        this.currentNamespaceCache = null;
        String prefix = namespace.getPrefix();
        if (prefix == null || prefix.length() == 0) {
            this.defaultNamespace = namespace;
        }
    }

    public Namespace pop() {
        return remove(this.namespaceStack.size() - 1);
    }

    public int size() {
        return this.namespaceStack.size();
    }

    public void clear() {
        this.namespaceStack.clear();
        this.namespaceCacheList.clear();
        this.rootNamespaceCache.clear();
        this.currentNamespaceCache = null;
    }

    public Namespace getNamespace(int index) {
        return (Namespace) this.namespaceStack.get(index);
    }

    public Namespace getNamespaceForPrefix(String prefix) {
        if (prefix == null) {
            prefix = "";
        }
        for (int i = this.namespaceStack.size() - 1; i >= 0; i--) {
            Namespace namespace = (Namespace) this.namespaceStack.get(i);
            if (prefix.equals(namespace.getPrefix())) {
                return namespace;
            }
        }
        return null;
    }

    public String getURI(String prefix) {
        Namespace namespace = getNamespaceForPrefix(prefix);
        if (namespace != null) {
            return namespace.getURI();
        }
        return null;
    }

    public boolean contains(Namespace namespace) {
        Namespace current;
        String prefix = namespace.getPrefix();
        if (prefix == null || prefix.length() == 0) {
            current = getDefaultNamespace();
        } else {
            current = getNamespaceForPrefix(prefix);
        }
        if (current == null) {
            return false;
        }
        if (current == namespace) {
            return true;
        }
        return namespace.getURI().equals(current.getURI());
    }

    public QName getQName(String namespaceURI, String localName, String qualifiedName) {
        if (localName == null) {
            localName = qualifiedName;
        } else if (qualifiedName == null) {
            qualifiedName = localName;
        }
        if (namespaceURI == null) {
            namespaceURI = "";
        }
        String prefix = "";
        int index = qualifiedName.indexOf(":");
        if (index > 0) {
            prefix = qualifiedName.substring(0, index);
            if (localName.trim().length() == 0) {
                localName = qualifiedName.substring(index + 1);
            }
        } else if (localName.trim().length() == 0) {
            localName = qualifiedName;
        }
        Namespace namespace = createNamespace(prefix, namespaceURI);
        return pushQName(localName, qualifiedName, namespace, prefix);
    }

    public QName getAttributeQName(String namespaceURI, String localName, String qualifiedName) {
        Namespace namespace;
        if (qualifiedName == null) {
            qualifiedName = localName;
        }
        Map map = getNamespaceCache();
        QName answer = (QName) map.get(qualifiedName);
        if (answer != null) {
            return answer;
        }
        if (localName == null) {
            localName = qualifiedName;
        }
        if (namespaceURI == null) {
            namespaceURI = "";
        }
        String prefix = "";
        int index = qualifiedName.indexOf(":");
        if (index > 0) {
            prefix = qualifiedName.substring(0, index);
            namespace = createNamespace(prefix, namespaceURI);
            if (localName.trim().length() == 0) {
                localName = qualifiedName.substring(index + 1);
            }
        } else {
            namespace = Namespace.NO_NAMESPACE;
            if (localName.trim().length() == 0) {
                localName = qualifiedName;
            }
        }
        QName answer2 = pushQName(localName, qualifiedName, namespace, prefix);
        map.put(qualifiedName, answer2);
        return answer2;
    }

    public void push(String prefix, String uri) {
        if (uri == null) {
            uri = "";
        }
        Namespace namespace = createNamespace(prefix, uri);
        push(namespace);
    }

    public Namespace addNamespace(String prefix, String uri) {
        Namespace namespace = createNamespace(prefix, uri);
        push(namespace);
        return namespace;
    }

    public Namespace pop(String prefix) {
        if (prefix == null) {
            prefix = "";
        }
        Namespace namespace = null;
        int i = this.namespaceStack.size() - 1;
        while (true) {
            if (i < 0) {
                break;
            }
            Namespace ns = (Namespace) this.namespaceStack.get(i);
            if (!prefix.equals(ns.getPrefix())) {
                i--;
            } else {
                remove(i);
                namespace = ns;
                break;
            }
        }
        if (namespace == null) {
            System.out.println(new StringBuffer().append("Warning: missing namespace prefix ignored: ").append(prefix).toString());
        }
        return namespace;
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" Stack: ").append(this.namespaceStack.toString()).toString();
    }

    public DocumentFactory getDocumentFactory() {
        return this.documentFactory;
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        this.documentFactory = documentFactory;
    }

    public Namespace getDefaultNamespace() {
        if (this.defaultNamespace == null) {
            this.defaultNamespace = findDefaultNamespace();
        }
        return this.defaultNamespace;
    }

    protected QName pushQName(String localName, String qualifiedName, Namespace namespace, String prefix) {
        if (prefix == null || prefix.length() == 0) {
            this.defaultNamespace = null;
        }
        return createQName(localName, qualifiedName, namespace);
    }

    protected QName createQName(String localName, String qualifiedName, Namespace namespace) {
        return this.documentFactory.createQName(localName, namespace);
    }

    protected Namespace createNamespace(String prefix, String namespaceURI) {
        return this.documentFactory.createNamespace(prefix, namespaceURI);
    }

    protected Namespace findDefaultNamespace() {
        for (int i = this.namespaceStack.size() - 1; i >= 0; i--) {
            Namespace namespace = (Namespace) this.namespaceStack.get(i);
            if (namespace != null) {
                String prefix = namespace.getPrefix();
                if (prefix == null || namespace.getPrefix().length() == 0) {
                    return namespace;
                }
            }
        }
        return null;
    }

    protected Namespace remove(int index) {
        Namespace namespace = (Namespace) this.namespaceStack.remove(index);
        this.namespaceCacheList.remove(index);
        this.defaultNamespace = null;
        this.currentNamespaceCache = null;
        return namespace;
    }

    protected Map getNamespaceCache() {
        if (this.currentNamespaceCache == null) {
            int index = this.namespaceStack.size() - 1;
            if (index < 0) {
                this.currentNamespaceCache = this.rootNamespaceCache;
            } else {
                this.currentNamespaceCache = (Map) this.namespaceCacheList.get(index);
                if (this.currentNamespaceCache == null) {
                    this.currentNamespaceCache = new HashMap();
                    this.namespaceCacheList.set(index, this.currentNamespaceCache);
                }
            }
        }
        return this.currentNamespaceCache;
    }
}
