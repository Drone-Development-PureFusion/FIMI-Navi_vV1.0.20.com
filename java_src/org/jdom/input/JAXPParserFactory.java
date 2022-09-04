package org.jdom.input;

import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.jdom.JDOMException;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
/* loaded from: classes2.dex */
class JAXPParserFactory {
    private static final String CVS_ID = "@(#) $RCSfile: JAXPParserFactory.java,v $ $Revision: 1.5 $ $Date: 2004/02/27 21:08:47 $ $Name: jdom_1_0 $";
    private static final String JAXP_SCHEMA_LANGUAGE_PROPERTY = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    private static final String JAXP_SCHEMA_LOCATION_PROPERTY = "http://java.sun.com/xml/jaxp/properties/schemaSource";

    private JAXPParserFactory() {
    }

    public static XMLReader createParser(boolean validating, Map features, Map properties) throws JDOMException {
        try {
            SAXParserFactory factory = SAXParserFactory.newInstance();
            factory.setValidating(validating);
            factory.setNamespaceAware(true);
            try {
                SAXParser parser = factory.newSAXParser();
                setProperty(parser, properties, JAXP_SCHEMA_LANGUAGE_PROPERTY);
                setProperty(parser, properties, JAXP_SCHEMA_LOCATION_PROPERTY);
                return parser.getXMLReader();
            } catch (ParserConfigurationException e) {
                throw new JDOMException("Could not allocate JAXP SAX Parser", e);
            }
        } catch (SAXException e2) {
            throw new JDOMException("Could not allocate JAXP SAX Parser", e2);
        }
    }

    private static void setProperty(SAXParser parser, Map properties, String name) throws JDOMException {
        try {
            if (!properties.containsKey(name)) {
                return;
            }
            parser.setProperty(name, properties.get(name));
        } catch (SAXNotRecognizedException e) {
            throw new JDOMException(new StringBuffer(String.valueOf(name)).append(" property not recognized for JAXP parser ").append(parser.getClass().getName()).toString());
        } catch (SAXNotSupportedException e2) {
            throw new JDOMException(new StringBuffer(String.valueOf(name)).append(" property not supported for JAXP parser ").append(parser.getClass().getName()).toString());
        }
    }
}
