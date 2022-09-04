package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.jdom.JDOMException;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;
/* loaded from: classes2.dex */
public class OracleV2DOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: OracleV2DOMAdapter.java,v $ $Revision: 1.18 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $";
    static Class class$org$xml$sax$InputSource;

    static Class class$(String class$) {
        try {
            return Class.forName(class$);
        } catch (ClassNotFoundException forName) {
            throw new NoClassDefFoundError(forName.getMessage());
        }
    }

    @Override // org.jdom.adapters.AbstractDOMAdapter, org.jdom.adapters.DOMAdapter
    public Document getDocument(InputStream in, boolean validate) throws IOException, JDOMException {
        Class<?> class$;
        try {
            Class parserClass = Class.forName("oracle.xml.parser.v2.DOMParser");
            Object parser = parserClass.newInstance();
            Class<?>[] clsArr = new Class[1];
            if (class$org$xml$sax$InputSource != null) {
                class$ = class$org$xml$sax$InputSource;
            } else {
                class$ = class$("org.xml.sax.InputSource");
                class$org$xml$sax$InputSource = class$;
            }
            clsArr[0] = class$;
            Method parse = parserClass.getMethod("parse", clsArr);
            parse.invoke(parser, new InputSource(in));
            Method getDocument = parserClass.getMethod("getDocument", null);
            Document doc = (Document) getDocument.invoke(parser, null);
            return doc;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof SAXParseException) {
                SAXParseException parseException = (SAXParseException) targetException;
                throw new JDOMException(new StringBuffer("Error on line ").append(parseException.getLineNumber()).append(" of XML document: ").append(parseException.getMessage()).toString(), parseException);
            } else if (targetException instanceof IOException) {
                IOException ioException = (IOException) targetException;
                throw ioException;
            } else {
                throw new JDOMException(targetException.getMessage(), targetException);
            }
        } catch (Exception e2) {
            throw new JDOMException(new StringBuffer(String.valueOf(e2.getClass().getName())).append(": ").append(e2.getMessage()).toString(), e2);
        }
    }

    @Override // org.jdom.adapters.AbstractDOMAdapter, org.jdom.adapters.DOMAdapter
    public Document createDocument() throws JDOMException {
        try {
            return (Document) Class.forName("oracle.xml.parser.v2.XMLDocument").newInstance();
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer(String.valueOf(e.getClass().getName())).append(": ").append(e.getMessage()).append(" when creating document").toString(), e);
        }
    }
}
