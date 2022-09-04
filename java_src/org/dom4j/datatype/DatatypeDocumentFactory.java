package org.dom4j.datatype;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.p019io.SAXReader;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
/* loaded from: classes2.dex */
public class DatatypeDocumentFactory extends DocumentFactory {
    private static final boolean DO_INTERN_QNAME = false;
    protected static transient DatatypeDocumentFactory singleton = new DatatypeDocumentFactory();
    private static final Namespace XSI_NAMESPACE = Namespace.get("xsi", "http://www.w3.org/2001/XMLSchema-instance");
    private static final QName XSI_SCHEMA_LOCATION = QName.get("schemaLocation", XSI_NAMESPACE);
    private static final QName XSI_NO_SCHEMA_LOCATION = QName.get("noNamespaceSchemaLocation", XSI_NAMESPACE);
    private SAXReader xmlSchemaReader = new SAXReader();
    private boolean autoLoadSchema = true;
    private SchemaParser schemaBuilder = new SchemaParser(this);

    public static DocumentFactory getInstance() {
        return singleton;
    }

    public void loadSchema(Document schemaDocument) {
        this.schemaBuilder.build(schemaDocument);
    }

    public void loadSchema(Document schemaDocument, Namespace targetNamespace) {
        this.schemaBuilder.build(schemaDocument, targetNamespace);
    }

    public DatatypeElementFactory getElementFactory(QName elementQName) {
        DocumentFactory factory = elementQName.getDocumentFactory();
        if (!(factory instanceof DatatypeElementFactory)) {
            return null;
        }
        DatatypeElementFactory result = (DatatypeElementFactory) factory;
        return result;
    }

    @Override // org.dom4j.DocumentFactory
    public Attribute createAttribute(Element owner, QName qname, String value) {
        Document document = null;
        if (this.autoLoadSchema && qname.equals(XSI_NO_SCHEMA_LOCATION)) {
            if (owner != null) {
                document = owner.getDocument();
            }
            loadSchema(document, value);
        } else if (this.autoLoadSchema && qname.equals(XSI_SCHEMA_LOCATION)) {
            if (owner != null) {
                document = owner.getDocument();
            }
            String uri = value.substring(0, value.indexOf(32));
            Namespace namespace = owner.getNamespaceForURI(uri);
            loadSchema(document, value.substring(value.indexOf(32) + 1), namespace);
        }
        return super.createAttribute(owner, qname, value);
    }

    protected void loadSchema(Document document, String schemaInstanceURI) {
        try {
            EntityResolver resolver = document.getEntityResolver();
            if (resolver == null) {
                throw new InvalidSchemaException(new StringBuffer().append("No EntityResolver available for resolving URI: ").append(schemaInstanceURI).toString());
            }
            InputSource inputSource = resolver.resolveEntity(null, schemaInstanceURI);
            if (resolver == null) {
                throw new InvalidSchemaException(new StringBuffer().append("Could not resolve the URI: ").append(schemaInstanceURI).toString());
            }
            Document schemaDocument = this.xmlSchemaReader.read(inputSource);
            loadSchema(schemaDocument);
        } catch (Exception e) {
            System.out.println(new StringBuffer().append("Failed to load schema: ").append(schemaInstanceURI).toString());
            System.out.println(new StringBuffer().append("Caught: ").append(e).toString());
            e.printStackTrace();
            throw new InvalidSchemaException(new StringBuffer().append("Failed to load schema: ").append(schemaInstanceURI).toString());
        }
    }

    protected void loadSchema(Document document, String schemaInstanceURI, Namespace namespace) {
        try {
            EntityResolver resolver = document.getEntityResolver();
            if (resolver == null) {
                throw new InvalidSchemaException(new StringBuffer().append("No EntityResolver available for resolving URI: ").append(schemaInstanceURI).toString());
            }
            InputSource inputSource = resolver.resolveEntity(null, schemaInstanceURI);
            if (resolver == null) {
                throw new InvalidSchemaException(new StringBuffer().append("Could not resolve the URI: ").append(schemaInstanceURI).toString());
            }
            Document schemaDocument = this.xmlSchemaReader.read(inputSource);
            loadSchema(schemaDocument, namespace);
        } catch (Exception e) {
            System.out.println(new StringBuffer().append("Failed to load schema: ").append(schemaInstanceURI).toString());
            System.out.println(new StringBuffer().append("Caught: ").append(e).toString());
            e.printStackTrace();
            throw new InvalidSchemaException(new StringBuffer().append("Failed to load schema: ").append(schemaInstanceURI).toString());
        }
    }
}
