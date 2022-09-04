package org.dom4j.jaxb;

import java.io.StringReader;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import org.dom4j.Element;
import org.dom4j.dom.DOMDocument;
/* loaded from: classes2.dex */
abstract class JAXBSupport {
    private ClassLoader classloader;
    private String contextPath;
    private JAXBContext jaxbContext;
    private Marshaller marshaller;
    private Unmarshaller unmarshaller;

    public JAXBSupport(String contextPath) {
        this.contextPath = contextPath;
    }

    public JAXBSupport(String contextPath, ClassLoader classloader) {
        this.contextPath = contextPath;
        this.classloader = classloader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Element marshal(javax.xml.bind.Element element) throws JAXBException {
        DOMDocument doc = new DOMDocument();
        getMarshaller().marshal(element, doc);
        return doc.getRootElement();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public javax.xml.bind.Element unmarshal(Element element) throws JAXBException {
        Source source = new StreamSource(new StringReader(element.asXML()));
        return (javax.xml.bind.Element) getUnmarshaller().unmarshal(source);
    }

    private Marshaller getMarshaller() throws JAXBException {
        if (this.marshaller == null) {
            this.marshaller = getContext().createMarshaller();
        }
        return this.marshaller;
    }

    private Unmarshaller getUnmarshaller() throws JAXBException {
        if (this.unmarshaller == null) {
            this.unmarshaller = getContext().createUnmarshaller();
        }
        return this.unmarshaller;
    }

    private JAXBContext getContext() throws JAXBException {
        if (this.jaxbContext == null) {
            if (this.classloader == null) {
                this.jaxbContext = JAXBContext.newInstance(this.contextPath);
            } else {
                this.jaxbContext = JAXBContext.newInstance(this.contextPath, this.classloader);
            }
        }
        return this.jaxbContext;
    }
}
