package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
/* loaded from: classes2.dex */
class NamedTypeResolver {
    protected DocumentFactory documentFactory;
    protected Map complexTypeMap = new HashMap();
    protected Map simpleTypeMap = new HashMap();
    protected Map typedElementMap = new HashMap();
    protected Map elementFactoryMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public NamedTypeResolver(DocumentFactory documentFactory) {
        this.documentFactory = documentFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerComplexType(QName type, DocumentFactory factory) {
        this.complexTypeMap.put(type, factory);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerSimpleType(QName type, XSDatatype datatype) {
        this.simpleTypeMap.put(type, datatype);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerTypedElement(Element element, QName type, DocumentFactory parentFactory) {
        this.typedElementMap.put(element, type);
        this.elementFactoryMap.put(element, parentFactory);
    }

    void resolveElementTypes() {
        for (Element element : this.typedElementMap.keySet()) {
            QName elementQName = getQNameOfSchemaElement(element);
            QName type = (QName) this.typedElementMap.get(element);
            if (this.complexTypeMap.containsKey(type)) {
                elementQName.setDocumentFactory((DocumentFactory) this.complexTypeMap.get(type));
            } else if (this.simpleTypeMap.containsKey(type)) {
                XSDatatype datatype = (XSDatatype) this.simpleTypeMap.get(type);
                DocumentFactory factory = (DocumentFactory) this.elementFactoryMap.get(element);
                if (factory instanceof DatatypeElementFactory) {
                    ((DatatypeElementFactory) factory).setChildElementXSDatatype(elementQName, datatype);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resolveNamedTypes() {
        resolveElementTypes();
    }

    private QName getQNameOfSchemaElement(Element element) {
        String name = element.attributeValue("name");
        return getQName(name);
    }

    private QName getQName(String name) {
        return this.documentFactory.createQName(name);
    }
}
