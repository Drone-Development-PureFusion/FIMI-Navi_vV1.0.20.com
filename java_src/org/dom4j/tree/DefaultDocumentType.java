package org.dom4j.tree;

import java.util.List;
/* loaded from: classes2.dex */
public class DefaultDocumentType extends AbstractDocumentType {
    protected String elementName;
    private List externalDeclarations;
    private List internalDeclarations;
    private String publicID;
    private String systemID;

    public DefaultDocumentType() {
    }

    public DefaultDocumentType(String elementName, String systemID) {
        this.elementName = elementName;
        this.systemID = systemID;
    }

    public DefaultDocumentType(String elementName, String publicID, String systemID) {
        this.elementName = elementName;
        this.publicID = publicID;
        this.systemID = systemID;
    }

    @Override // org.dom4j.DocumentType
    public String getElementName() {
        return this.elementName;
    }

    @Override // org.dom4j.DocumentType
    public void setElementName(String elementName) {
        this.elementName = elementName;
    }

    @Override // org.dom4j.DocumentType
    public String getPublicID() {
        return this.publicID;
    }

    @Override // org.dom4j.DocumentType
    public void setPublicID(String publicID) {
        this.publicID = publicID;
    }

    @Override // org.dom4j.DocumentType
    public String getSystemID() {
        return this.systemID;
    }

    @Override // org.dom4j.DocumentType
    public void setSystemID(String systemID) {
        this.systemID = systemID;
    }

    @Override // org.dom4j.DocumentType
    public List getInternalDeclarations() {
        return this.internalDeclarations;
    }

    @Override // org.dom4j.DocumentType
    public void setInternalDeclarations(List internalDeclarations) {
        this.internalDeclarations = internalDeclarations;
    }

    @Override // org.dom4j.DocumentType
    public List getExternalDeclarations() {
        return this.externalDeclarations;
    }

    @Override // org.dom4j.DocumentType
    public void setExternalDeclarations(List externalDeclarations) {
        this.externalDeclarations = externalDeclarations;
    }
}
