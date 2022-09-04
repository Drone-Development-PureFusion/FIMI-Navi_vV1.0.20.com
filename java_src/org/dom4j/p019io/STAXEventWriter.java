package org.dom4j.p019io;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.util.XMLEventConsumer;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
/* renamed from: org.dom4j.io.STAXEventWriter */
/* loaded from: classes2.dex */
public class STAXEventWriter {
    private XMLEventConsumer consumer;
    private XMLEventFactory factory = XMLEventFactory.newInstance();
    private XMLOutputFactory outputFactory = XMLOutputFactory.newInstance();

    public STAXEventWriter() {
    }

    public STAXEventWriter(File file) throws XMLStreamException, IOException {
        this.consumer = this.outputFactory.createXMLEventWriter(new FileWriter(file));
    }

    public STAXEventWriter(Writer writer) throws XMLStreamException {
        this.consumer = this.outputFactory.createXMLEventWriter(writer);
    }

    public STAXEventWriter(OutputStream stream) throws XMLStreamException {
        this.consumer = this.outputFactory.createXMLEventWriter(stream);
    }

    public STAXEventWriter(XMLEventConsumer consumer) {
        this.consumer = consumer;
    }

    public XMLEventConsumer getConsumer() {
        return this.consumer;
    }

    public void setConsumer(XMLEventConsumer consumer) {
        this.consumer = consumer;
    }

    public XMLEventFactory getEventFactory() {
        return this.factory;
    }

    public void setEventFactory(XMLEventFactory eventFactory) {
        this.factory = eventFactory;
    }

    public void writeNode(Node n) throws XMLStreamException {
        switch (n.getNodeType()) {
            case 1:
                writeElement((Element) n);
                return;
            case 2:
                writeAttribute((Attribute) n);
                return;
            case 3:
                writeText((Text) n);
                return;
            case 4:
                writeCDATA((CDATA) n);
                return;
            case 5:
                writeEntity((AbstractC2649Entity) n);
                return;
            case 6:
            case 11:
            case 12:
            default:
                throw new XMLStreamException(new StringBuffer().append("Unsupported DOM4J Node: ").append(n).toString());
            case 7:
                writeProcessingInstruction((ProcessingInstruction) n);
                return;
            case 8:
                writeComment((Comment) n);
                return;
            case 9:
                writeDocument((Document) n);
                return;
            case 10:
                writeDocumentType((DocumentType) n);
                return;
            case 13:
                writeNamespace((Namespace) n);
                return;
        }
    }

    public void writeChildNodes(Branch branch) throws XMLStreamException {
        int s = branch.nodeCount();
        for (int i = 0; i < s; i++) {
            Node n = branch.node(i);
            writeNode(n);
        }
    }

    public void writeElement(Element elem) throws XMLStreamException {
        this.consumer.add(createStartElement(elem));
        writeChildNodes(elem);
        this.consumer.add(createEndElement(elem));
    }

    public StartElement createStartElement(Element elem) {
        QName tagName = createQName(elem.getQName());
        Iterator attrIter = new AttributeIterator(this, elem.attributeIterator());
        Iterator nsIter = new NamespaceIterator(this, elem.declaredNamespaces().iterator());
        return this.factory.createStartElement(tagName, attrIter, nsIter);
    }

    public EndElement createEndElement(Element elem) {
        QName tagName = createQName(elem.getQName());
        Iterator nsIter = new NamespaceIterator(this, elem.declaredNamespaces().iterator());
        return this.factory.createEndElement(tagName, nsIter);
    }

    public void writeAttribute(Attribute attr) throws XMLStreamException {
        this.consumer.add(createAttribute(attr));
    }

    public javax.xml.stream.events.Attribute createAttribute(Attribute attr) {
        QName attrName = createQName(attr.getQName());
        String value = attr.getValue();
        return this.factory.createAttribute(attrName, value);
    }

    public void writeNamespace(Namespace ns) throws XMLStreamException {
        this.consumer.add(createNamespace(ns));
    }

    public javax.xml.stream.events.Namespace createNamespace(Namespace ns) {
        String prefix = ns.getPrefix();
        String uri = ns.getURI();
        return this.factory.createNamespace(prefix, uri);
    }

    public void writeText(Text text) throws XMLStreamException {
        this.consumer.add(createCharacters(text));
    }

    public Characters createCharacters(Text text) {
        return this.factory.createCharacters(text.getText());
    }

    public void writeCDATA(CDATA cdata) throws XMLStreamException {
        this.consumer.add(createCharacters(cdata));
    }

    public Characters createCharacters(CDATA cdata) {
        return this.factory.createCData(cdata.getText());
    }

    public void writeComment(Comment comment) throws XMLStreamException {
        this.consumer.add(createComment(comment));
    }

    public javax.xml.stream.events.Comment createComment(Comment comment) {
        return this.factory.createComment(comment.getText());
    }

    public void writeProcessingInstruction(ProcessingInstruction pi) throws XMLStreamException {
        this.consumer.add(createProcessingInstruction(pi));
    }

    public javax.xml.stream.events.ProcessingInstruction createProcessingInstruction(ProcessingInstruction pi) {
        String target = pi.getTarget();
        String data = pi.getText();
        return this.factory.createProcessingInstruction(target, data);
    }

    public void writeEntity(AbstractC2649Entity entity) throws XMLStreamException {
        this.consumer.add(createEntityReference(entity));
    }

    private EntityReference createEntityReference(AbstractC2649Entity entity) {
        return this.factory.createEntityReference(entity.getName(), (EntityDeclaration) null);
    }

    public void writeDocumentType(DocumentType docType) throws XMLStreamException {
        this.consumer.add(createDTD(docType));
    }

    public DTD createDTD(DocumentType docType) {
        StringWriter decl = new StringWriter();
        try {
            docType.write(decl);
            return this.factory.createDTD(decl.toString());
        } catch (IOException e) {
            throw new RuntimeException("Error writing DTD", e);
        }
    }

    public void writeDocument(Document doc) throws XMLStreamException {
        this.consumer.add(createStartDocument(doc));
        writeChildNodes(doc);
        this.consumer.add(createEndDocument(doc));
    }

    public StartDocument createStartDocument(Document doc) {
        String encoding = doc.getXMLEncoding();
        return encoding != null ? this.factory.createStartDocument(encoding) : this.factory.createStartDocument();
    }

    public EndDocument createEndDocument(Document doc) {
        return this.factory.createEndDocument();
    }

    public QName createQName(org.dom4j.QName qname) {
        return new QName(qname.getNamespaceURI(), qname.getName(), qname.getNamespacePrefix());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.dom4j.io.STAXEventWriter$AttributeIterator */
    /* loaded from: classes2.dex */
    public class AttributeIterator implements Iterator {
        private Iterator iter;
        private final STAXEventWriter this$0;

        public AttributeIterator(STAXEventWriter this$0, Iterator iter) {
            this.this$0 = this$0;
            this.iter = iter;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            Attribute attr = (Attribute) this.iter.next();
            QName attrName = this.this$0.createQName(attr.getQName());
            String value = attr.getValue();
            return this.this$0.factory.createAttribute(attrName, value);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.dom4j.io.STAXEventWriter$NamespaceIterator */
    /* loaded from: classes2.dex */
    public class NamespaceIterator implements Iterator {
        private Iterator iter;
        private final STAXEventWriter this$0;

        public NamespaceIterator(STAXEventWriter this$0, Iterator iter) {
            this.this$0 = this$0;
            this.iter = iter;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            Namespace ns = (Namespace) this.iter.next();
            String prefix = ns.getPrefix();
            String nsURI = ns.getURI();
            return this.this$0.factory.createNamespace(prefix, nsURI);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
