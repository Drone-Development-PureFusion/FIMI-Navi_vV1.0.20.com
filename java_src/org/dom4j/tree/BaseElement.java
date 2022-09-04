package org.dom4j.tree;

import java.util.List;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class BaseElement extends AbstractElement {
    protected List attributes;
    protected List content;
    private Branch parentBranch;
    private QName qname;

    public BaseElement(String name) {
        this.qname = getDocumentFactory().createQName(name);
    }

    public BaseElement(QName qname) {
        this.qname = qname;
    }

    public BaseElement(String name, Namespace namespace) {
        this.qname = getDocumentFactory().createQName(name, namespace);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        if (!(this.parentBranch instanceof Element)) {
            return null;
        }
        Element result = (Element) this.parentBranch;
        return result;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setParent(Element parent) {
        if ((this.parentBranch instanceof Element) || parent != null) {
            this.parentBranch = parent;
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Document getDocument() {
        if (this.parentBranch instanceof Document) {
            return (Document) this.parentBranch;
        }
        if (this.parentBranch instanceof Element) {
            Element parent = (Element) this.parentBranch;
            return parent.getDocument();
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setDocument(Document document) {
        if ((this.parentBranch instanceof Document) || document != null) {
            this.parentBranch = document;
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean supportsParent() {
        return true;
    }

    @Override // org.dom4j.Element
    public QName getQName() {
        return this.qname;
    }

    @Override // org.dom4j.Element
    public void setQName(QName name) {
        this.qname = name;
    }

    @Override // org.dom4j.Branch
    public void clearContent() {
        contentList().clear();
    }

    @Override // org.dom4j.Branch
    public void setContent(List content) {
        this.content = content;
        if (content instanceof ContentListFacade) {
            this.content = ((ContentListFacade) content).getBackingList();
        }
    }

    @Override // org.dom4j.Element
    public void setAttributes(List attributes) {
        this.attributes = attributes;
        if (attributes instanceof ContentListFacade) {
            this.attributes = ((ContentListFacade) attributes).getBackingList();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public List contentList() {
        if (this.content == null) {
            this.content = createContentList();
        }
        return this.content;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected List attributeList() {
        if (this.attributes == null) {
            this.attributes = createAttributeList();
        }
        return this.attributes;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected List attributeList(int size) {
        if (this.attributes == null) {
            this.attributes = createAttributeList(size);
        }
        return this.attributes;
    }

    protected void setAttributeList(List attributeList) {
        this.attributes = attributeList;
    }
}
