package org.jdom;

import ch.qos.logback.core.CoreConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jdom.filter.ElementFilter;
import org.jdom.filter.Filter;
/* loaded from: classes2.dex */
public class Element extends Content implements Parent {
    private static final String CVS_ID = "@(#) $RCSfile: Element.java,v $ $Revision: 1.152 $ $Date: 2004/09/03 06:35:39 $ $Name: jdom_1_0 $";
    private static final int INITIAL_ARRAY_SIZE = 5;
    protected transient List additionalNamespaces;
    AttributeList attributes;
    ContentList content;
    protected String name;
    protected transient Namespace namespace;

    /* JADX INFO: Access modifiers changed from: protected */
    public Element() {
        this.attributes = new AttributeList(this);
        this.content = new ContentList(this);
    }

    public Element(String name, Namespace namespace) {
        this.attributes = new AttributeList(this);
        this.content = new ContentList(this);
        setName(name);
        setNamespace(namespace);
    }

    public Element(String name) {
        this(name, (Namespace) null);
    }

    public Element(String name, String uri) {
        this(name, Namespace.getNamespace("", uri));
    }

    public Element(String name, String prefix, String uri) {
        this(name, Namespace.getNamespace(prefix, uri));
    }

    public String getName() {
        return this.name;
    }

    public Element setName(String name) {
        String reason = Verifier.checkElementName(name);
        if (reason != null) {
            throw new IllegalNameException(name, "element", reason);
        }
        this.name = name;
        return this;
    }

    public Namespace getNamespace() {
        return this.namespace;
    }

    public Element setNamespace(Namespace namespace) {
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        this.namespace = namespace;
        return this;
    }

    public String getNamespacePrefix() {
        return this.namespace.getPrefix();
    }

    public String getNamespaceURI() {
        return this.namespace.getURI();
    }

    public Namespace getNamespace(String prefix) {
        if (prefix == null) {
            return null;
        }
        if (prefix.equals("xml")) {
            return Namespace.XML_NAMESPACE;
        }
        if (prefix.equals(getNamespacePrefix())) {
            return getNamespace();
        }
        if (this.additionalNamespaces != null) {
            for (int i = 0; i < this.additionalNamespaces.size(); i++) {
                Namespace ns = (Namespace) this.additionalNamespaces.get(i);
                if (prefix.equals(ns.getPrefix())) {
                    return ns;
                }
            }
        }
        if (!(this.parent instanceof Element)) {
            return null;
        }
        return ((Element) this.parent).getNamespace(prefix);
    }

    public String getQualifiedName() {
        if (this.namespace.getPrefix().equals("")) {
            return getName();
        }
        return new StringBuffer(this.namespace.getPrefix()).append(CoreConstants.COLON_CHAR).append(this.name).toString();
    }

    public void addNamespaceDeclaration(Namespace additional) {
        String reason = Verifier.checkNamespaceCollision(additional, this);
        if (reason != null) {
            throw new IllegalAddException(this, additional, reason);
        }
        if (this.additionalNamespaces == null) {
            this.additionalNamespaces = new ArrayList(5);
        }
        this.additionalNamespaces.add(additional);
    }

    public void removeNamespaceDeclaration(Namespace additionalNamespace) {
        if (this.additionalNamespaces == null) {
            return;
        }
        this.additionalNamespaces.remove(additionalNamespace);
    }

    public List getAdditionalNamespaces() {
        return this.additionalNamespaces == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(this.additionalNamespaces);
    }

    @Override // org.jdom.Content
    public String getValue() {
        StringBuffer buffer = new StringBuffer();
        for (Content child : getContent()) {
            if ((child instanceof Element) || (child instanceof Text)) {
                buffer.append(child.getValue());
            }
        }
        return buffer.toString();
    }

    public boolean isRootElement() {
        return this.parent instanceof Document;
    }

    @Override // org.jdom.Parent
    public int getContentSize() {
        return this.content.size();
    }

    @Override // org.jdom.Parent
    public int indexOf(Content child) {
        return this.content.indexOf(child);
    }

    public String getText() {
        if (this.content.size() == 0) {
            return "";
        }
        if (this.content.size() == 1) {
            Object obj = this.content.get(0);
            if (obj instanceof Text) {
                return ((Text) obj).getText();
            }
            return "";
        }
        StringBuffer textContent = new StringBuffer();
        boolean hasText = false;
        for (int i = 0; i < this.content.size(); i++) {
            Object obj2 = this.content.get(i);
            if (obj2 instanceof Text) {
                textContent.append(((Text) obj2).getText());
                hasText = true;
            }
        }
        if (!hasText) {
            return "";
        }
        return textContent.toString();
    }

    public String getTextTrim() {
        return getText().trim();
    }

    public String getTextNormalize() {
        return Text.normalizeString(getText());
    }

    public String getChildText(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getText();
    }

    public String getChildTextTrim(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getTextTrim();
    }

    public String getChildTextNormalize(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getTextNormalize();
    }

    public String getChildText(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getText();
    }

    public String getChildTextTrim(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getTextTrim();
    }

    public String getChildTextNormalize(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getTextNormalize();
    }

    public Element setText(String text) {
        this.content.clear();
        if (text != null) {
            addContent(new Text(text));
        }
        return this;
    }

    @Override // org.jdom.Parent
    public List getContent() {
        return this.content;
    }

    @Override // org.jdom.Parent
    public List getContent(Filter filter) {
        return this.content.getView(filter);
    }

    @Override // org.jdom.Parent
    public List removeContent() {
        List old = new ArrayList(this.content);
        this.content.clear();
        return old;
    }

    @Override // org.jdom.Parent
    public List removeContent(Filter filter) {
        List old = new ArrayList();
        Iterator itr = this.content.getView(filter).iterator();
        while (itr.hasNext()) {
            Content child = (Content) itr.next();
            old.add(child);
            itr.remove();
        }
        return old;
    }

    public Element setContent(Collection newContent) {
        this.content.clearAndSet(newContent);
        return this;
    }

    public Element setContent(int index, Content child) {
        this.content.set(index, child);
        return this;
    }

    public Parent setContent(int index, Collection collection) {
        this.content.remove(index);
        this.content.addAll(index, collection);
        return this;
    }

    public Element addContent(String str) {
        return addContent(new Text(str));
    }

    public Element addContent(Content child) {
        this.content.add(child);
        return this;
    }

    public Element addContent(Collection collection) {
        this.content.addAll(collection);
        return this;
    }

    public Element addContent(int index, Content child) {
        this.content.add(index, child);
        return this;
    }

    public Element addContent(int index, Collection c) {
        this.content.addAll(index, c);
        return this;
    }

    @Override // org.jdom.Parent
    public List cloneContent() {
        int size = getContentSize();
        List list = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Content child = getContent(i);
            list.add(child.clone());
        }
        return list;
    }

    @Override // org.jdom.Parent
    public Content getContent(int index) {
        return (Content) this.content.get(index);
    }

    @Override // org.jdom.Parent
    public boolean removeContent(Content child) {
        return this.content.remove(child);
    }

    @Override // org.jdom.Parent
    public Content removeContent(int index) {
        return (Content) this.content.remove(index);
    }

    public Element setContent(Content child) {
        this.content.clear();
        this.content.add(child);
        return this;
    }

    public boolean isAncestor(Element element) {
        for (Parent p = element.getParent(); p instanceof Element; p = ((Element) p).getParent()) {
            if (p == this) {
                return true;
            }
        }
        return false;
    }

    public List getAttributes() {
        return this.attributes;
    }

    public Attribute getAttribute(String name) {
        return getAttribute(name, Namespace.NO_NAMESPACE);
    }

    public Attribute getAttribute(String name, Namespace ns) {
        return (Attribute) this.attributes.get(name, ns);
    }

    public String getAttributeValue(String name) {
        return getAttributeValue(name, Namespace.NO_NAMESPACE);
    }

    public String getAttributeValue(String name, String def) {
        return getAttributeValue(name, Namespace.NO_NAMESPACE, def);
    }

    public String getAttributeValue(String name, Namespace ns) {
        return getAttributeValue(name, ns, null);
    }

    public String getAttributeValue(String name, Namespace ns, String def) {
        Attribute attribute = (Attribute) this.attributes.get(name, ns);
        if (attribute == null) {
            return def;
        }
        String def2 = attribute.getValue();
        return def2;
    }

    public Element setAttributes(List newAttributes) {
        this.attributes.clearAndSet(newAttributes);
        return this;
    }

    public Element setAttribute(String name, String value) {
        return setAttribute(new Attribute(name, value));
    }

    public Element setAttribute(String name, String value, Namespace ns) {
        return setAttribute(new Attribute(name, value, ns));
    }

    public Element setAttribute(Attribute attribute) {
        this.attributes.add(attribute);
        return this;
    }

    public boolean removeAttribute(String name) {
        return removeAttribute(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeAttribute(String name, Namespace ns) {
        return this.attributes.remove(name, ns);
    }

    public boolean removeAttribute(Attribute attribute) {
        return this.attributes.remove(attribute);
    }

    public String toString() {
        StringBuffer stringForm = new StringBuffer(64).append("[Element: <").append(getQualifiedName());
        String nsuri = getNamespaceURI();
        if (!nsuri.equals("")) {
            stringForm.append(" [Namespace: ").append(nsuri).append("]");
        }
        stringForm.append("/>]");
        return stringForm.toString();
    }

    @Override // org.jdom.Content, org.jdom.Parent
    public Object clone() {
        Element element = (Element) super.clone();
        element.content = new ContentList(element);
        element.attributes = new AttributeList(element);
        if (this.attributes != null) {
            for (int i = 0; i < this.attributes.size(); i++) {
                Attribute attribute = (Attribute) ((Attribute) this.attributes.get(i)).clone();
                element.attributes.add(attribute);
            }
        }
        if (this.additionalNamespaces != null) {
            int additionalSize = this.additionalNamespaces.size();
            element.additionalNamespaces = new ArrayList(additionalSize);
            for (int i2 = 0; i2 < additionalSize; i2++) {
                Object additional = this.additionalNamespaces.get(i2);
                element.additionalNamespaces.add(additional);
            }
        }
        if (this.content != null) {
            for (int i3 = 0; i3 < this.content.size(); i3++) {
                Object obj = this.content.get(i3);
                if (obj instanceof Element) {
                    Element elt = (Element) ((Element) obj).clone();
                    element.content.add(elt);
                } else if (obj instanceof CDATA) {
                    CDATA cdata = (CDATA) ((CDATA) obj).clone();
                    element.content.add(cdata);
                } else if (obj instanceof Text) {
                    Text text = (Text) ((Text) obj).clone();
                    element.content.add(text);
                } else if (obj instanceof Comment) {
                    Comment comment = (Comment) ((Comment) obj).clone();
                    element.content.add(comment);
                } else if (obj instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) ((ProcessingInstruction) obj).clone();
                    element.content.add(pi);
                } else if (obj instanceof EntityRef) {
                    EntityRef entity = (EntityRef) ((EntityRef) obj).clone();
                    element.content.add(entity);
                }
            }
        }
        if (this.additionalNamespaces != null) {
            element.additionalNamespaces = new ArrayList();
            element.additionalNamespaces.addAll(this.additionalNamespaces);
        }
        return element;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeObject(this.namespace.getPrefix());
        out.writeObject(this.namespace.getURI());
        if (this.additionalNamespaces == null) {
            out.write(0);
            return;
        }
        int size = this.additionalNamespaces.size();
        out.write(size);
        for (int i = 0; i < size; i++) {
            Namespace additional = (Namespace) this.additionalNamespaces.get(i);
            out.writeObject(additional.getPrefix());
            out.writeObject(additional.getURI());
        }
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.namespace = Namespace.getNamespace((String) in.readObject(), (String) in.readObject());
        int size = in.read();
        if (size == 0) {
            return;
        }
        this.additionalNamespaces = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Namespace additional = Namespace.getNamespace((String) in.readObject(), (String) in.readObject());
            this.additionalNamespaces.add(additional);
        }
    }

    @Override // org.jdom.Parent
    public Iterator getDescendants() {
        return new DescendantIterator(this);
    }

    @Override // org.jdom.Parent
    public Iterator getDescendants(Filter filter) {
        return new FilterIterator(new DescendantIterator(this), filter);
    }

    public List getChildren() {
        return this.content.getView(new ElementFilter());
    }

    public List getChildren(String name) {
        return getChildren(name, Namespace.NO_NAMESPACE);
    }

    public List getChildren(String name, Namespace ns) {
        return this.content.getView(new ElementFilter(name, ns));
    }

    public Element getChild(String name, Namespace ns) {
        List elements = this.content.getView(new ElementFilter(name, ns));
        Iterator i = elements.iterator();
        if (i.hasNext()) {
            return (Element) i.next();
        }
        return null;
    }

    public Element getChild(String name) {
        return getChild(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChild(String name) {
        return removeChild(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChild(String name, Namespace ns) {
        List old = this.content.getView(new ElementFilter(name, ns));
        Iterator i = old.iterator();
        if (i.hasNext()) {
            i.next();
            i.remove();
            return true;
        }
        return false;
    }

    public boolean removeChildren(String name) {
        return removeChildren(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChildren(String name, Namespace ns) {
        boolean deletedSome = false;
        List old = this.content.getView(new ElementFilter(name, ns));
        Iterator i = old.iterator();
        while (i.hasNext()) {
            i.next();
            i.remove();
            deletedSome = true;
        }
        return deletedSome;
    }
}
