package org.jdom.input;

import com.fimi.kernel.animutils.IOUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.JDOMException;
import org.jdom.JDOMFactory;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
/* loaded from: classes2.dex */
public class SAXBuilder {
    private static final String CVS_ID = "@(#) $RCSfile: SAXBuilder.java,v $ $Revision: 1.89 $ $Date: 2004/09/03 18:24:28 $ $Name: jdom_1_0 $";
    private static final String DEFAULT_SAX_DRIVER = "org.apache.xerces.parsers.SAXParser";
    static Class class$java$util$Map;
    private boolean expand;
    private JDOMFactory factory;
    private HashMap features;
    private boolean ignoringWhite;
    private HashMap properties;
    private boolean reuseParser;
    private DTDHandler saxDTDHandler;
    private String saxDriverClass;
    private EntityResolver saxEntityResolver;
    private ErrorHandler saxErrorHandler;
    private XMLReader saxParser;
    private XMLFilter saxXMLFilter;
    private boolean validate;

    static Class class$(String class$) {
        try {
            return Class.forName(class$);
        } catch (ClassNotFoundException forName) {
            throw new NoClassDefFoundError(forName.getMessage());
        }
    }

    public SAXBuilder() {
        this(false);
    }

    public SAXBuilder(boolean validate) {
        this.expand = true;
        this.saxErrorHandler = null;
        this.saxEntityResolver = null;
        this.saxDTDHandler = null;
        this.saxXMLFilter = null;
        this.factory = new DefaultJDOMFactory();
        this.ignoringWhite = false;
        this.features = new HashMap(5);
        this.properties = new HashMap(5);
        this.reuseParser = true;
        this.saxParser = null;
        this.validate = validate;
    }

    public SAXBuilder(String saxDriverClass) {
        this(saxDriverClass, false);
    }

    public SAXBuilder(String saxDriverClass, boolean validate) {
        this.expand = true;
        this.saxErrorHandler = null;
        this.saxEntityResolver = null;
        this.saxDTDHandler = null;
        this.saxXMLFilter = null;
        this.factory = new DefaultJDOMFactory();
        this.ignoringWhite = false;
        this.features = new HashMap(5);
        this.properties = new HashMap(5);
        this.reuseParser = true;
        this.saxParser = null;
        this.saxDriverClass = saxDriverClass;
        this.validate = validate;
    }

    public String getDriverClass() {
        return this.saxDriverClass;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    public void setFactory(JDOMFactory factory) {
        this.factory = factory;
    }

    public boolean getValidation() {
        return this.validate;
    }

    public void setValidation(boolean validate) {
        this.validate = validate;
    }

    public ErrorHandler getErrorHandler() {
        return this.saxErrorHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.saxErrorHandler = errorHandler;
    }

    public EntityResolver getEntityResolver() {
        return this.saxEntityResolver;
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.saxEntityResolver = entityResolver;
    }

    public DTDHandler getDTDHandler() {
        return this.saxDTDHandler;
    }

    public void setDTDHandler(DTDHandler dtdHandler) {
        this.saxDTDHandler = dtdHandler;
    }

    public XMLFilter getXMLFilter() {
        return this.saxXMLFilter;
    }

    public void setXMLFilter(XMLFilter xmlFilter) {
        this.saxXMLFilter = xmlFilter;
    }

    public boolean getIgnoringElementContentWhitespace() {
        return this.ignoringWhite;
    }

    public void setIgnoringElementContentWhitespace(boolean ignoringWhite) {
        this.ignoringWhite = ignoringWhite;
    }

    public boolean getReuseParser() {
        return this.reuseParser;
    }

    public void setReuseParser(boolean reuseParser) {
        this.reuseParser = reuseParser;
        this.saxParser = null;
    }

    public void setFeature(String name, boolean value) {
        this.features.put(name, new Boolean(value));
    }

    public void setProperty(String name, Object value) {
        this.properties.put(name, value);
    }

    public Document build(InputSource in) throws JDOMException, IOException {
        SAXHandler contentHandler = null;
        try {
            try {
                SAXHandler contentHandler2 = createContentHandler();
                configureContentHandler(contentHandler2);
                XMLReader parser = this.saxParser;
                if (parser == null) {
                    parser = createParser();
                    if (this.saxXMLFilter != null) {
                        XMLFilter root = this.saxXMLFilter;
                        while (root.getParent() instanceof XMLFilter) {
                            root = (XMLFilter) root.getParent();
                        }
                        root.setParent(parser);
                        parser = this.saxXMLFilter;
                    }
                    configureParser(parser, contentHandler2);
                    if (this.reuseParser) {
                        this.saxParser = parser;
                    }
                } else {
                    configureParser(parser, contentHandler2);
                }
                parser.parse(in);
                Document document = contentHandler2.getDocument();
                contentHandler = null;
                return document;
            } catch (SAXParseException e) {
                Document doc = contentHandler.getDocument();
                if (!doc.hasRootElement()) {
                    doc = null;
                }
                String systemId = e.getSystemId();
                if (systemId != null) {
                    throw new JDOMParseException(new StringBuffer("Error on line ").append(e.getLineNumber()).append(" of document ").append(systemId).toString(), e, doc);
                }
                throw new JDOMParseException(new StringBuffer("Error on line ").append(e.getLineNumber()).toString(), e, doc);
            } catch (SAXException e2) {
                throw new JDOMParseException(new StringBuffer("Error in building: ").append(e2.getMessage()).toString(), e2, contentHandler.getDocument());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    protected SAXHandler createContentHandler() {
        SAXHandler contentHandler = new SAXHandler(this.factory);
        return contentHandler;
    }

    protected void configureContentHandler(SAXHandler contentHandler) {
        contentHandler.setExpandEntities(this.expand);
        contentHandler.setIgnoringElementContentWhitespace(this.ignoringWhite);
    }

    protected XMLReader createParser() throws JDOMException {
        Class<?> class$;
        Class<?> class$2;
        XMLReader parser = null;
        if (this.saxDriverClass != null) {
            try {
                parser = XMLReaderFactory.createXMLReader(this.saxDriverClass);
                setFeaturesAndProperties(parser, true);
            } catch (SAXException e) {
                throw new JDOMException(new StringBuffer("Could not load ").append(this.saxDriverClass).toString(), e);
            }
        } else {
            try {
                Class factoryClass = Class.forName("org.jdom.input.JAXPParserFactory");
                Class<?>[] clsArr = new Class[3];
                clsArr[0] = Boolean.TYPE;
                if (class$java$util$Map != null) {
                    class$ = class$java$util$Map;
                } else {
                    class$ = class$("java.util.Map");
                    class$java$util$Map = class$;
                }
                clsArr[1] = class$;
                if (class$java$util$Map != null) {
                    class$2 = class$java$util$Map;
                } else {
                    class$2 = class$("java.util.Map");
                    class$java$util$Map = class$2;
                }
                clsArr[2] = class$2;
                Method createParser = factoryClass.getMethod("createParser", clsArr);
                parser = (XMLReader) createParser.invoke(null, new Boolean(this.validate), this.features, this.properties);
                setFeaturesAndProperties(parser, false);
            } catch (JDOMException e2) {
                throw e2;
            } catch (Exception e3) {
            } catch (NoClassDefFoundError e4) {
            }
        }
        if (parser == null) {
            try {
                XMLReader parser2 = XMLReaderFactory.createXMLReader(DEFAULT_SAX_DRIVER);
                this.saxDriverClass = parser2.getClass().getName();
                setFeaturesAndProperties(parser2, true);
                return parser2;
            } catch (SAXException e5) {
                throw new JDOMException("Could not load default SAX parser: org.apache.xerces.parsers.SAXParser", e5);
            }
        }
        return parser;
    }

    protected void configureParser(XMLReader parser, SAXHandler contentHandler) throws JDOMException {
        parser.setContentHandler(contentHandler);
        if (this.saxEntityResolver != null) {
            parser.setEntityResolver(this.saxEntityResolver);
        }
        if (this.saxDTDHandler != null) {
            parser.setDTDHandler(this.saxDTDHandler);
        } else {
            parser.setDTDHandler(contentHandler);
        }
        if (this.saxErrorHandler != null) {
            parser.setErrorHandler(this.saxErrorHandler);
        } else {
            parser.setErrorHandler(new BuilderErrorHandler());
        }
        boolean lexicalReporting = false;
        try {
            parser.setProperty("http://xml.org/sax/handlers/LexicalHandler", contentHandler);
            lexicalReporting = true;
        } catch (SAXNotRecognizedException e) {
        } catch (SAXNotSupportedException e2) {
        }
        if (!lexicalReporting) {
            try {
                parser.setProperty("http://xml.org/sax/properties/lexical-handler", contentHandler);
            } catch (SAXNotRecognizedException e3) {
            } catch (SAXNotSupportedException e4) {
            }
        }
        if (this.expand) {
            return;
        }
        try {
            parser.setProperty("http://xml.org/sax/properties/declaration-handler", contentHandler);
        } catch (SAXNotRecognizedException e5) {
        } catch (SAXNotSupportedException e6) {
        }
    }

    private void setFeaturesAndProperties(XMLReader parser, boolean coreFeatures) throws JDOMException {
        for (String name : this.features.keySet()) {
            Boolean value = (Boolean) this.features.get(name);
            internalSetFeature(parser, name, value.booleanValue(), name);
        }
        for (String name2 : this.properties.keySet()) {
            internalSetProperty(parser, name2, this.properties.get(name2), name2);
        }
        if (coreFeatures) {
            try {
                internalSetFeature(parser, "http://xml.org/sax/features/validation", this.validate, "Validation");
            } catch (JDOMException e) {
                if (this.validate) {
                    throw e;
                }
            }
            internalSetFeature(parser, "http://xml.org/sax/features/namespaces", true, "Namespaces");
            internalSetFeature(parser, "http://xml.org/sax/features/namespace-prefixes", true, "Namespace prefixes");
        }
        try {
            if (parser.getFeature("http://xml.org/sax/features/external-general-entities") == this.expand) {
                return;
            }
            parser.setFeature("http://xml.org/sax/features/external-general-entities", this.expand);
        } catch (SAXNotRecognizedException e2) {
        } catch (SAXNotSupportedException e3) {
        }
    }

    private void internalSetFeature(XMLReader parser, String feature, boolean value, String displayName) throws JDOMException {
        try {
            parser.setFeature(feature, value);
        } catch (SAXNotRecognizedException e) {
            throw new JDOMException(new StringBuffer(String.valueOf(displayName)).append(" feature not recognized for SAX driver ").append(parser.getClass().getName()).toString());
        } catch (SAXNotSupportedException e2) {
            throw new JDOMException(new StringBuffer(String.valueOf(displayName)).append(" feature not supported for SAX driver ").append(parser.getClass().getName()).toString());
        }
    }

    private void internalSetProperty(XMLReader parser, String property, Object value, String displayName) throws JDOMException {
        try {
            parser.setProperty(property, value);
        } catch (SAXNotRecognizedException e) {
            throw new JDOMException(new StringBuffer(String.valueOf(displayName)).append(" property not recognized for SAX driver ").append(parser.getClass().getName()).toString());
        } catch (SAXNotSupportedException e2) {
            throw new JDOMException(new StringBuffer(String.valueOf(displayName)).append(" property not supported for SAX driver ").append(parser.getClass().getName()).toString());
        }
    }

    public Document build(InputStream in) throws JDOMException, IOException {
        return build(new InputSource(in));
    }

    public Document build(File file) throws JDOMException, IOException {
        try {
            URL url = fileToURL(file);
            return build(url);
        } catch (MalformedURLException e) {
            throw new JDOMException("Error in building", e);
        }
    }

    public Document build(URL url) throws JDOMException, IOException {
        String systemID = url.toExternalForm();
        return build(new InputSource(systemID));
    }

    public Document build(InputStream in, String systemId) throws JDOMException, IOException {
        InputSource src = new InputSource(in);
        src.setSystemId(systemId);
        return build(src);
    }

    public Document build(Reader characterStream) throws JDOMException, IOException {
        return build(new InputSource(characterStream));
    }

    public Document build(Reader characterStream, String systemId) throws JDOMException, IOException {
        InputSource src = new InputSource(characterStream);
        src.setSystemId(systemId);
        return build(src);
    }

    public Document build(String systemId) throws JDOMException, IOException {
        return build(new InputSource(systemId));
    }

    private static URL fileToURL(File file) throws MalformedURLException {
        StringBuffer buffer = new StringBuffer();
        String path = file.getAbsolutePath();
        if (File.separatorChar != '/') {
            path = path.replace(File.separatorChar, IOUtils.DIR_SEPARATOR_UNIX);
        }
        if (!path.startsWith("/")) {
            buffer.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        int len = path.length();
        for (int i = 0; i < len; i++) {
            char c = path.charAt(i);
            if (c == ' ') {
                buffer.append("%20");
            } else if (c == '#') {
                buffer.append("%23");
            } else if (c == '%') {
                buffer.append("%25");
            } else if (c == '&') {
                buffer.append("%26");
            } else if (c == ';') {
                buffer.append("%3B");
            } else if (c == '<') {
                buffer.append("%3C");
            } else if (c == '=') {
                buffer.append("%3D");
            } else if (c == '>') {
                buffer.append("%3E");
            } else if (c == '?') {
                buffer.append("%3F");
            } else if (c == '~') {
                buffer.append("%7E");
            } else {
                buffer.append(c);
            }
        }
        if (!path.endsWith("/") && file.isDirectory()) {
            buffer.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        return new URL("file", "", buffer.toString());
    }

    public boolean getExpandEntities() {
        return this.expand;
    }

    public void setExpandEntities(boolean expand) {
        this.expand = expand;
    }
}
