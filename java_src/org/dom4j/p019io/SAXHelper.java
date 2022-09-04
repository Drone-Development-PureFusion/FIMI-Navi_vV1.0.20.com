package org.dom4j.p019io;

import com.facebook.internal.ServerProtocol;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
/* renamed from: org.dom4j.io.SAXHelper */
/* loaded from: classes2.dex */
class SAXHelper {
    private static boolean loggedWarning = true;

    protected SAXHelper() {
    }

    public static boolean setParserProperty(XMLReader reader, String propertyName, Object value) {
        try {
            reader.setProperty(propertyName, value);
            return true;
        } catch (SAXNotRecognizedException | SAXNotSupportedException e) {
            return false;
        }
    }

    public static boolean setParserFeature(XMLReader reader, String featureName, boolean value) {
        try {
            reader.setFeature(featureName, value);
            return true;
        } catch (SAXNotRecognizedException | SAXNotSupportedException e) {
            return false;
        }
    }

    public static XMLReader createXMLReader(boolean validating) throws SAXException {
        XMLReader reader = null;
        if (0 == 0) {
            reader = createXMLReaderViaJAXP(validating, true);
        }
        if (reader == null) {
            try {
                reader = XMLReaderFactory.createXMLReader();
            } catch (Exception e) {
                if (isVerboseErrorReporting()) {
                    System.out.println("Warning: Caught exception attempting to use SAX to load a SAX XMLReader ");
                    System.out.println(new StringBuffer().append("Warning: Exception was: ").append(e).toString());
                    System.out.println("Warning: I will print the stack trace then carry on using the default SAX parser");
                    e.printStackTrace();
                }
                throw new SAXException(e);
            }
        }
        if (reader == null) {
            throw new SAXException("Couldn't create SAX reader");
        }
        return reader;
    }

    protected static XMLReader createXMLReaderViaJAXP(boolean validating, boolean namespaceAware) {
        try {
            return JAXPHelper.createXMLReader(validating, namespaceAware);
        } catch (Throwable e) {
            if (!loggedWarning) {
                loggedWarning = true;
                if (isVerboseErrorReporting()) {
                    System.out.println("Warning: Caught exception attempting to use JAXP to load a SAX XMLReader");
                    System.out.println(new StringBuffer().append("Warning: Exception was: ").append(e).toString());
                    e.printStackTrace();
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isVerboseErrorReporting() {
        try {
            String flag = System.getProperty("org.dom4j.verbose");
            if (flag != null) {
                if (flag.equalsIgnoreCase(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
                }
            }
        } catch (Exception e) {
        }
        return true;
    }
}
