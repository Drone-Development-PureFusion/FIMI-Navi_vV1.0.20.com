package org.dom4j.p019io;

import java.io.InputStream;
import java.io.Reader;
import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
/* renamed from: org.dom4j.io.STAXEventReader */
/* loaded from: classes2.dex */
public class STAXEventReader {
    private DocumentFactory factory;
    private XMLInputFactory inputFactory;

    public STAXEventReader() {
        this.inputFactory = XMLInputFactory.newInstance();
        this.factory = DocumentFactory.getInstance();
    }

    public STAXEventReader(DocumentFactory factory) {
        this.inputFactory = XMLInputFactory.newInstance();
        if (factory != null) {
            this.factory = factory;
        } else {
            this.factory = DocumentFactory.getInstance();
        }
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        if (documentFactory != null) {
            this.factory = documentFactory;
        } else {
            this.factory = DocumentFactory.getInstance();
        }
    }

    public Document readDocument(InputStream is) throws XMLStreamException {
        return readDocument(is, (String) null);
    }

    public Document readDocument(Reader reader) throws XMLStreamException {
        return readDocument(reader, (String) null);
    }

    public Document readDocument(InputStream is, String systemId) throws XMLStreamException {
        XMLEventReader eventReader = this.inputFactory.createXMLEventReader(systemId, is);
        try {
            return readDocument(eventReader);
        } finally {
            eventReader.close();
        }
    }

    public Document readDocument(Reader reader, String systemId) throws XMLStreamException {
        XMLEventReader eventReader = this.inputFactory.createXMLEventReader(systemId, reader);
        try {
            return readDocument(eventReader);
        } finally {
            eventReader.close();
        }
    }

    public Node readNode(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isStartElement()) {
            return readElement(reader);
        }
        if (event.isCharacters()) {
            return readCharacters(reader);
        }
        if (event.isStartDocument()) {
            return readDocument(reader);
        }
        if (event.isProcessingInstruction()) {
            return readProcessingInstruction(reader);
        }
        if (event.isEntityReference()) {
            return readEntityReference(reader);
        }
        if (event.isAttribute()) {
            return readAttribute(reader);
        }
        if (event.isNamespace()) {
            return readNamespace(reader);
        }
        throw new XMLStreamException(new StringBuffer().append("Unsupported event: ").append(event).toString());
    }

    public Document readDocument(XMLEventReader reader) throws XMLStreamException {
        Document doc = null;
        while (reader.hasNext()) {
            XMLEvent nextEvent = reader.peek();
            int type = nextEvent.getEventType();
            switch (type) {
                case 4:
                case 6:
                case 8:
                    reader.nextEvent();
                    break;
                case 5:
                default:
                    if (doc == null) {
                        doc = this.factory.createDocument();
                    }
                    Node n = readNode(reader);
                    doc.add(n);
                    break;
                case 7:
                    StartDocument event = reader.nextEvent();
                    if (doc == null) {
                        if (event.encodingSet()) {
                            String encodingScheme = event.getCharacterEncodingScheme();
                            doc = this.factory.createDocument(encodingScheme);
                            break;
                        } else {
                            doc = this.factory.createDocument();
                            break;
                        }
                    } else {
                        throw new XMLStreamException("Unexpected StartDocument event", event.getLocation());
                    }
            }
        }
        return doc;
    }

    public Element readElement(XMLEventReader eventReader) throws XMLStreamException {
        XMLEvent event = eventReader.peek();
        if (event.isStartElement()) {
            StartElement startTag = eventReader.nextEvent().asStartElement();
            Element elem = createElement(startTag);
            while (eventReader.hasNext()) {
                XMLEvent nextEvent = eventReader.peek();
                if (nextEvent.isEndElement()) {
                    EndElement endElem = eventReader.nextEvent().asEndElement();
                    if (!endElem.getName().equals(startTag.getName())) {
                        throw new XMLStreamException(new StringBuffer().append("Expected ").append(startTag.getName()).append(" end-tag, but found").append(endElem.getName()).toString());
                    }
                    return elem;
                }
                Node child = readNode(eventReader);
                elem.add(child);
            }
            throw new XMLStreamException("Unexpected end of stream while reading element content");
        }
        throw new XMLStreamException(new StringBuffer().append("Expected Element event, found: ").append(event).toString());
    }

    public Attribute readAttribute(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isAttribute()) {
            javax.xml.stream.events.Attribute attr = (javax.xml.stream.events.Attribute) reader.nextEvent();
            return createAttribute(null, attr);
        }
        throw new XMLStreamException(new StringBuffer().append("Expected Attribute event, found: ").append(event).toString());
    }

    public Namespace readNamespace(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isNamespace()) {
            javax.xml.stream.events.Namespace ns = (javax.xml.stream.events.Namespace) reader.nextEvent();
            return createNamespace(ns);
        }
        throw new XMLStreamException(new StringBuffer().append("Expected Namespace event, found: ").append(event).toString());
    }

    public CharacterData readCharacters(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isCharacters()) {
            Characters characters = reader.nextEvent().asCharacters();
            return createCharacterData(characters);
        }
        throw new XMLStreamException(new StringBuffer().append("Expected Characters event, found: ").append(event).toString());
    }

    public Comment readComment(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event instanceof javax.xml.stream.events.Comment) {
            return createComment((javax.xml.stream.events.Comment) reader.nextEvent());
        }
        throw new XMLStreamException(new StringBuffer().append("Expected Comment event, found: ").append(event).toString());
    }

    public AbstractC2649Entity readEntityReference(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isEntityReference()) {
            EntityReference entityRef = (EntityReference) reader.nextEvent();
            return createEntity(entityRef);
        }
        throw new XMLStreamException(new StringBuffer().append("Expected EntityRef event, found: ").append(event).toString());
    }

    public ProcessingInstruction readProcessingInstruction(XMLEventReader reader) throws XMLStreamException {
        XMLEvent event = reader.peek();
        if (event.isProcessingInstruction()) {
            javax.xml.stream.events.ProcessingInstruction pi = (javax.xml.stream.events.ProcessingInstruction) reader.nextEvent();
            return createProcessingInstruction(pi);
        }
        throw new XMLStreamException(new StringBuffer().append("Expected PI event, found: ").append(event).toString());
    }

    public Element createElement(StartElement startEvent) {
        QName qname = startEvent.getName();
        org.dom4j.QName elemName = createQName(qname);
        Element elem = this.factory.createElement(elemName);
        Iterator i = startEvent.getAttributes();
        while (i.hasNext()) {
            javax.xml.stream.events.Attribute attr = (javax.xml.stream.events.Attribute) i.next();
            elem.addAttribute(createQName(attr.getName()), attr.getValue());
        }
        Iterator i2 = startEvent.getNamespaces();
        while (i2.hasNext()) {
            javax.xml.stream.events.Namespace ns = (javax.xml.stream.events.Namespace) i2.next();
            elem.addNamespace(ns.getPrefix(), ns.getNamespaceURI());
        }
        return elem;
    }

    public Attribute createAttribute(Element elem, javax.xml.stream.events.Attribute attr) {
        return this.factory.createAttribute(elem, createQName(attr.getName()), attr.getValue());
    }

    public Namespace createNamespace(javax.xml.stream.events.Namespace ns) {
        return this.factory.createNamespace(ns.getPrefix(), ns.getNamespaceURI());
    }

    public CharacterData createCharacterData(Characters characters) {
        String data = characters.getData();
        return characters.isCData() ? this.factory.createCDATA(data) : this.factory.createText(data);
    }

    public Comment createComment(javax.xml.stream.events.Comment comment) {
        return this.factory.createComment(comment.getText());
    }

    public AbstractC2649Entity createEntity(EntityReference entityRef) {
        return this.factory.createEntity(entityRef.getName(), entityRef.getDeclaration().getReplacementText());
    }

    public ProcessingInstruction createProcessingInstruction(javax.xml.stream.events.ProcessingInstruction pi) {
        return this.factory.createProcessingInstruction(pi.getTarget(), pi.getData());
    }

    public org.dom4j.QName createQName(QName qname) {
        return this.factory.createQName(qname.getLocalPart(), qname.getPrefix(), qname.getNamespaceURI());
    }
}
