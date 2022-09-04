package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class QNameCache {
    private DocumentFactory documentFactory;
    protected Map noNamespaceCache = Collections.synchronizedMap(new WeakHashMap());
    protected Map namespaceCache = Collections.synchronizedMap(new WeakHashMap());

    public QNameCache() {
    }

    public QNameCache(DocumentFactory documentFactory) {
        this.documentFactory = documentFactory;
    }

    public List getQNames() {
        List answer = new ArrayList();
        answer.addAll(this.noNamespaceCache.values());
        for (Map map : this.namespaceCache.values()) {
            answer.addAll(map.values());
        }
        return answer;
    }

    public QName get(String name) {
        QName answer = null;
        if (name != null) {
            answer = (QName) this.noNamespaceCache.get(name);
        } else {
            name = "";
        }
        if (answer == null) {
            QName answer2 = createQName(name);
            answer2.setDocumentFactory(this.documentFactory);
            this.noNamespaceCache.put(name, answer2);
            return answer2;
        }
        return answer;
    }

    public QName get(String name, Namespace namespace) {
        Map cache = getNamespaceCache(namespace);
        QName answer = null;
        if (name != null) {
            answer = (QName) cache.get(name);
        } else {
            name = "";
        }
        if (answer == null) {
            QName answer2 = createQName(name, namespace);
            answer2.setDocumentFactory(this.documentFactory);
            cache.put(name, answer2);
            return answer2;
        }
        return answer;
    }

    public QName get(String localName, Namespace namespace, String qName) {
        Map cache = getNamespaceCache(namespace);
        QName answer = null;
        if (localName != null) {
            answer = (QName) cache.get(localName);
        } else {
            localName = "";
        }
        if (answer == null) {
            QName answer2 = createQName(localName, namespace, qName);
            answer2.setDocumentFactory(this.documentFactory);
            cache.put(localName, answer2);
            return answer2;
        }
        return answer;
    }

    public QName get(String qualifiedName, String uri) {
        int index = qualifiedName.indexOf(58);
        if (index < 0) {
            return get(qualifiedName, Namespace.get(uri));
        }
        String name = qualifiedName.substring(index + 1);
        String prefix = qualifiedName.substring(0, index);
        return get(name, Namespace.get(prefix, uri));
    }

    public QName intern(QName qname) {
        return get(qname.getName(), qname.getNamespace(), qname.getQualifiedName());
    }

    protected Map getNamespaceCache(Namespace namespace) {
        if (namespace == Namespace.NO_NAMESPACE) {
            return this.noNamespaceCache;
        }
        Map answer = null;
        if (namespace != null) {
            answer = (Map) this.namespaceCache.get(namespace);
        }
        if (answer == null) {
            Map answer2 = createMap();
            this.namespaceCache.put(namespace, answer2);
            return answer2;
        }
        return answer;
    }

    protected Map createMap() {
        return Collections.synchronizedMap(new HashMap());
    }

    protected QName createQName(String name) {
        return new QName(name);
    }

    protected QName createQName(String name, Namespace namespace) {
        return new QName(name, namespace);
    }

    protected QName createQName(String name, Namespace namespace, String qualifiedName) {
        return new QName(name, namespace, qualifiedName);
    }
}
