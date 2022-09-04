package org.dom4j.jaxb;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
import org.dom4j.p019io.SAXReader;
import org.xml.sax.InputSource;
/* loaded from: classes2.dex */
public class JAXBReader extends JAXBSupport {
    private boolean pruneElements;
    private SAXReader reader;

    public JAXBReader(String contextPath) {
        super(contextPath);
    }

    public JAXBReader(String contextPath, ClassLoader classloader) {
        super(contextPath, classloader);
    }

    public Document read(File source) throws DocumentException {
        return getReader().read(source);
    }

    public Document read(File file, Charset charset) throws DocumentException {
        try {
            Reader xmlReader = new InputStreamReader(new FileInputStream(file), charset);
            return getReader().read(xmlReader);
        } catch (FileNotFoundException ex) {
            throw new DocumentException(ex.getMessage(), ex);
        } catch (JAXBRuntimeException ex2) {
            Throwable cause = ex2.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(InputSource source) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(InputStream source) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(InputStream source, String systemId) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(Reader source) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(Reader source, String systemId) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(String source) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document read(URL source) throws DocumentException {
        try {
            return getReader().read(source);
        } catch (JAXBRuntimeException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public void addObjectHandler(String path, JAXBObjectHandler handler) {
        ElementHandler eHandler = new UnmarshalElementHandler(this, this, handler);
        getReader().addHandler(path, eHandler);
    }

    public void removeObjectHandler(String path) {
        getReader().removeHandler(path);
    }

    public void addHandler(String path, ElementHandler handler) {
        getReader().addHandler(path, handler);
    }

    public void removeHandler(String path) {
        getReader().removeHandler(path);
    }

    public void resetHandlers() {
        getReader().resetHandlers();
    }

    public boolean isPruneElements() {
        return this.pruneElements;
    }

    public void setPruneElements(boolean pruneElements) {
        this.pruneElements = pruneElements;
        if (pruneElements) {
            getReader().setDefaultHandler(new PruningElementHandler(this));
        }
    }

    private SAXReader getReader() {
        if (this.reader == null) {
            this.reader = new SAXReader();
        }
        return this.reader;
    }

    /* loaded from: classes2.dex */
    private class UnmarshalElementHandler implements ElementHandler {
        private JAXBObjectHandler handler;
        private JAXBReader jaxbReader;
        private final JAXBReader this$0;

        public UnmarshalElementHandler(JAXBReader this$0, JAXBReader documentReader, JAXBObjectHandler handler) {
            this.this$0 = this$0;
            this.jaxbReader = documentReader;
            this.handler = handler;
        }

        @Override // org.dom4j.ElementHandler
        public void onStart(ElementPath elementPath) {
        }

        @Override // org.dom4j.ElementHandler
        public void onEnd(ElementPath elementPath) {
            try {
                Element elem = elementPath.getCurrent();
                javax.xml.bind.Element jaxbObject = this.jaxbReader.unmarshal(elem);
                if (this.jaxbReader.isPruneElements()) {
                    elem.detach();
                }
                this.handler.handleObject(jaxbObject);
            } catch (Exception ex) {
                throw new JAXBRuntimeException(ex);
            }
        }
    }

    /* loaded from: classes2.dex */
    private class PruningElementHandler implements ElementHandler {
        private final JAXBReader this$0;

        public PruningElementHandler(JAXBReader this$0) {
            this.this$0 = this$0;
        }

        @Override // org.dom4j.ElementHandler
        public void onStart(ElementPath parm1) {
        }

        @Override // org.dom4j.ElementHandler
        public void onEnd(ElementPath elementPath) {
            Element elem = elementPath.getCurrent();
            elem.detach();
        }
    }
}
