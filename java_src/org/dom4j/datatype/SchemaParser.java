package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.DatatypeFactory;
import com.sun.msv.datatype.xsd.TypeIncubator;
import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.p019io.SAXReader;
import org.dom4j.util.AttributeHelper;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
/* loaded from: classes2.dex */
public class SchemaParser {
    private Map dataTypeCache;
    private DatatypeDocumentFactory documentFactory;
    private NamedTypeResolver namedTypeResolver;
    private Namespace targetNamespace;
    private static final Namespace XSD_NAMESPACE = Namespace.get("xsd", "http://www.w3.org/2001/XMLSchema");
    private static final QName XSD_ELEMENT = QName.get("element", XSD_NAMESPACE);
    private static final QName XSD_ATTRIBUTE = QName.get("attribute", XSD_NAMESPACE);
    private static final QName XSD_SIMPLETYPE = QName.get("simpleType", XSD_NAMESPACE);
    private static final QName XSD_COMPLEXTYPE = QName.get("complexType", XSD_NAMESPACE);
    private static final QName XSD_RESTRICTION = QName.get("restriction", XSD_NAMESPACE);
    private static final QName XSD_SEQUENCE = QName.get("sequence", XSD_NAMESPACE);
    private static final QName XSD_CHOICE = QName.get("choice", XSD_NAMESPACE);
    private static final QName XSD_ALL = QName.get("all", XSD_NAMESPACE);
    private static final QName XSD_INCLUDE = QName.get("include", XSD_NAMESPACE);

    public SchemaParser() {
        this(DatatypeDocumentFactory.singleton);
    }

    public SchemaParser(DatatypeDocumentFactory documentFactory) {
        this.dataTypeCache = new HashMap();
        this.documentFactory = documentFactory;
        this.namedTypeResolver = new NamedTypeResolver(documentFactory);
    }

    public void build(Document schemaDocument) {
        this.targetNamespace = null;
        internalBuild(schemaDocument);
    }

    public void build(Document schemaDocument, Namespace namespace) {
        this.targetNamespace = namespace;
        internalBuild(schemaDocument);
    }

    private synchronized void internalBuild(Document schemaDocument) {
        Element root = schemaDocument.getRootElement();
        if (root != null) {
            Iterator includeIter = root.elementIterator(XSD_INCLUDE);
            while (includeIter.hasNext()) {
                Element includeElement = (Element) includeIter.next();
                String inclSchemaInstanceURI = includeElement.attributeValue("schemaLocation");
                EntityResolver resolver = schemaDocument.getEntityResolver();
                if (resolver == null) {
                    throw new InvalidSchemaException("No EntityResolver available");
                }
                try {
                    InputSource inputSource = resolver.resolveEntity(null, inclSchemaInstanceURI);
                    if (inputSource == null) {
                        String msg = new StringBuffer().append("Could not resolve the schema URI: ").append(inclSchemaInstanceURI).toString();
                        throw new InvalidSchemaException(msg);
                    }
                    SAXReader reader = new SAXReader();
                    Document inclSchemaDocument = reader.read(inputSource);
                    build(inclSchemaDocument);
                } catch (Exception e) {
                    System.out.println(new StringBuffer().append("Failed to load schema: ").append(inclSchemaInstanceURI).toString());
                    System.out.println(new StringBuffer().append("Caught: ").append(e).toString());
                    e.printStackTrace();
                    throw new InvalidSchemaException(new StringBuffer().append("Failed to load schema: ").append(inclSchemaInstanceURI).toString());
                }
            }
            Iterator iter = root.elementIterator(XSD_ELEMENT);
            while (iter.hasNext()) {
                onDatatypeElement((Element) iter.next(), this.documentFactory);
            }
            Iterator iter2 = root.elementIterator(XSD_SIMPLETYPE);
            while (iter2.hasNext()) {
                onNamedSchemaSimpleType((Element) iter2.next());
            }
            Iterator iter3 = root.elementIterator(XSD_COMPLEXTYPE);
            while (iter3.hasNext()) {
                onNamedSchemaComplexType((Element) iter3.next());
            }
            this.namedTypeResolver.resolveNamedTypes();
        }
    }

    private void onDatatypeElement(Element xsdElement, DocumentFactory parentFactory) {
        XSDatatype dataType;
        String name = xsdElement.attributeValue("name");
        String type = xsdElement.attributeValue("type");
        QName qname = getQName(name);
        DatatypeElementFactory factory = getDatatypeElementFactory(qname);
        if (type != null) {
            XSDatatype dataType2 = getTypeByName(type);
            if (dataType2 != null) {
                factory.setChildElementXSDatatype(qname, dataType2);
                return;
            }
            QName typeQName = getQName(type);
            this.namedTypeResolver.registerTypedElement(xsdElement, typeQName, parentFactory);
            return;
        }
        Element xsdSimpleType = xsdElement.element(XSD_SIMPLETYPE);
        if (xsdSimpleType != null && (dataType = loadXSDatatypeFromSimpleType(xsdSimpleType)) != null) {
            factory.setChildElementXSDatatype(qname, dataType);
        }
        Element schemaComplexType = xsdElement.element(XSD_COMPLEXTYPE);
        if (schemaComplexType != null) {
            onSchemaComplexType(schemaComplexType, factory);
        }
        Iterator iter = xsdElement.elementIterator(XSD_ATTRIBUTE);
        if (iter.hasNext()) {
            do {
                onDatatypeAttribute(xsdElement, factory, (Element) iter.next());
            } while (iter.hasNext());
        }
    }

    private void onNamedSchemaComplexType(Element schemaComplexType) {
        Attribute nameAttr = schemaComplexType.attribute("name");
        if (nameAttr != null) {
            String name = nameAttr.getText();
            QName qname = getQName(name);
            DatatypeElementFactory factory = getDatatypeElementFactory(qname);
            onSchemaComplexType(schemaComplexType, factory);
            this.namedTypeResolver.registerComplexType(qname, factory);
        }
    }

    private void onSchemaComplexType(Element schemaComplexType, DatatypeElementFactory elementFactory) {
        Iterator iter = schemaComplexType.elementIterator(XSD_ATTRIBUTE);
        while (iter.hasNext()) {
            Element xsdAttribute = (Element) iter.next();
            String name = xsdAttribute.attributeValue("name");
            QName qname = getQName(name);
            XSDatatype dataType = dataTypeForXsdAttribute(xsdAttribute);
            if (dataType != null) {
                elementFactory.setAttributeXSDatatype(qname, dataType);
            }
        }
        Element schemaSequence = schemaComplexType.element(XSD_SEQUENCE);
        if (schemaSequence != null) {
            onChildElements(schemaSequence, elementFactory);
        }
        Element schemaChoice = schemaComplexType.element(XSD_CHOICE);
        if (schemaChoice != null) {
            onChildElements(schemaChoice, elementFactory);
        }
        Element schemaAll = schemaComplexType.element(XSD_ALL);
        if (schemaAll != null) {
            onChildElements(schemaAll, elementFactory);
        }
    }

    private void onChildElements(Element element, DatatypeElementFactory fact) {
        Iterator iter = element.elementIterator(XSD_ELEMENT);
        while (iter.hasNext()) {
            Element xsdElement = (Element) iter.next();
            onDatatypeElement(xsdElement, fact);
        }
    }

    private void onDatatypeAttribute(Element xsdElement, DatatypeElementFactory elementFactory, Element xsdAttribute) {
        String name = xsdAttribute.attributeValue("name");
        QName qname = getQName(name);
        XSDatatype dataType = dataTypeForXsdAttribute(xsdAttribute);
        if (dataType != null) {
            elementFactory.setAttributeXSDatatype(qname, dataType);
            return;
        }
        String type = xsdAttribute.attributeValue("type");
        System.out.println(new StringBuffer().append("Warning: Couldn't find XSDatatype for type: ").append(type).append(" attribute: ").append(name).toString());
    }

    private XSDatatype dataTypeForXsdAttribute(Element xsdAttribute) {
        String type = xsdAttribute.attributeValue("type");
        if (type != null) {
            XSDatatype dataType = getTypeByName(type);
            return dataType;
        }
        Element xsdSimpleType = xsdAttribute.element(XSD_SIMPLETYPE);
        if (xsdSimpleType == null) {
            String name = xsdAttribute.attributeValue("name");
            String msg = new StringBuffer().append("The attribute: ").append(name).append(" has no type attribute and does not contain a ").append("<simpleType/> element").toString();
            throw new InvalidSchemaException(msg);
        }
        XSDatatype dataType2 = loadXSDatatypeFromSimpleType(xsdSimpleType);
        return dataType2;
    }

    private void onNamedSchemaSimpleType(Element schemaSimpleType) {
        Attribute nameAttr = schemaSimpleType.attribute("name");
        if (nameAttr != null) {
            String name = nameAttr.getText();
            QName qname = getQName(name);
            XSDatatype datatype = loadXSDatatypeFromSimpleType(schemaSimpleType);
            this.namedTypeResolver.registerSimpleType(qname, datatype);
        }
    }

    private XSDatatype loadXSDatatypeFromSimpleType(Element xsdSimpleType) {
        Element xsdRestriction = xsdSimpleType.element(XSD_RESTRICTION);
        if (xsdRestriction != null) {
            String base = xsdRestriction.attributeValue("base");
            if (base != null) {
                XSDatatype baseType = getTypeByName(base);
                if (baseType == null) {
                    onSchemaError(new StringBuffer().append("Invalid base type: ").append(base).append(" when trying to build restriction: ").append(xsdRestriction).toString());
                } else {
                    return deriveSimpleType(baseType, xsdRestriction);
                }
            } else {
                Element xsdSubType = xsdSimpleType.element(XSD_SIMPLETYPE);
                if (xsdSubType == null) {
                    String msg = new StringBuffer().append("The simpleType element: ").append(xsdSimpleType).append(" must contain a base attribute or simpleType").append(" element").toString();
                    onSchemaError(msg);
                } else {
                    return loadXSDatatypeFromSimpleType(xsdSubType);
                }
            }
        } else {
            onSchemaError(new StringBuffer().append("No <restriction>. Could not create XSDatatype for simpleType: ").append(xsdSimpleType).toString());
        }
        return null;
    }

    private XSDatatype deriveSimpleType(XSDatatype baseType, Element xsdRestriction) {
        TypeIncubator incubator = new TypeIncubator(baseType);
        try {
            Iterator iter = xsdRestriction.elementIterator();
            while (iter.hasNext()) {
                Element element = (Element) iter.next();
                String name = element.getName();
                String value = element.attributeValue("value");
                boolean fixed = AttributeHelper.booleanValue(element, "fixed");
                incubator.addFacet(name, value, fixed, (ValidationContext) null);
            }
            return incubator.derive("", (String) null);
        } catch (DatatypeException e) {
            onSchemaError(new StringBuffer().append("Invalid restriction: ").append(e.getMessage()).append(" when trying to build restriction: ").append(xsdRestriction).toString());
            return null;
        }
    }

    private DatatypeElementFactory getDatatypeElementFactory(QName name) {
        DatatypeElementFactory factory = this.documentFactory.getElementFactory(name);
        if (factory == null) {
            DatatypeElementFactory factory2 = new DatatypeElementFactory(name);
            name.setDocumentFactory(factory2);
            return factory2;
        }
        return factory;
    }

    private XSDatatype getTypeByName(String type) {
        XSDatatype dataType = (XSDatatype) this.dataTypeCache.get(type);
        if (dataType == null) {
            int idx = type.indexOf(58);
            if (idx >= 0) {
                String localName = type.substring(idx + 1);
                try {
                    dataType = DatatypeFactory.getTypeByName(localName);
                } catch (DatatypeException e) {
                }
            }
            if (dataType == null) {
                try {
                    dataType = DatatypeFactory.getTypeByName(type);
                } catch (DatatypeException e2) {
                }
            }
            if (dataType == null) {
                QName typeQName = getQName(type);
                dataType = (XSDatatype) this.namedTypeResolver.simpleTypeMap.get(typeQName);
            }
            if (dataType != null) {
                this.dataTypeCache.put(type, dataType);
            }
        }
        return dataType;
    }

    private QName getQName(String name) {
        return this.targetNamespace == null ? this.documentFactory.createQName(name) : this.documentFactory.createQName(name, this.targetNamespace);
    }

    private void onSchemaError(String message) {
        throw new InvalidSchemaException(message);
    }
}
