package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.jdom.JDOMException;
import org.jdom.input.BuilderErrorHandler;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;
/* loaded from: classes2.dex */
public class XercesDOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: XercesDOMAdapter.java,v $ $Revision: 1.18 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $";
    static Class class$java$lang$String;
    static Class class$org$xml$sax$ErrorHandler;
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
        Class<?> class$2;
        Class<?> class$3;
        try {
            Class parserClass = Class.forName("org.apache.xerces.parsers.DOMParser");
            Object parser = parserClass.newInstance();
            Class<?>[] clsArr = new Class[2];
            if (class$java$lang$String != null) {
                class$ = class$java$lang$String;
            } else {
                class$ = class$("java.lang.String");
                class$java$lang$String = class$;
            }
            clsArr[0] = class$;
            clsArr[1] = Boolean.TYPE;
            Method setFeature = parserClass.getMethod("setFeature", clsArr);
            setFeature.invoke(parser, "http://xml.org/sax/features/validation", new Boolean(validate));
            setFeature.invoke(parser, "http://xml.org/sax/features/namespaces", new Boolean(true));
            if (validate) {
                Class<?>[] clsArr2 = new Class[1];
                if (class$org$xml$sax$ErrorHandler != null) {
                    class$3 = class$org$xml$sax$ErrorHandler;
                } else {
                    class$3 = class$("org.xml.sax.ErrorHandler");
                    class$org$xml$sax$ErrorHandler = class$3;
                }
                clsArr2[0] = class$3;
                Method setErrorHandler = parserClass.getMethod("setErrorHandler", clsArr2);
                setErrorHandler.invoke(parser, new BuilderErrorHandler());
            }
            Class<?>[] clsArr3 = new Class[1];
            if (class$org$xml$sax$InputSource != null) {
                class$2 = class$org$xml$sax$InputSource;
            } else {
                class$2 = class$("org.xml.sax.InputSource");
                class$org$xml$sax$InputSource = class$2;
            }
            clsArr3[0] = class$2;
            Method parse = parserClass.getMethod("parse", clsArr3);
            parse.invoke(parser, new InputSource(in));
            Method getDocument = parserClass.getMethod("getDocument", null);
            Document doc = (Document) getDocument.invoke(parser, null);
            return doc;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof SAXParseException) {
                SAXParseException parseException = (SAXParseException) targetException;
                throw new JDOMException(new StringBuffer("Error on line ").append(parseException.getLineNumber()).append(" of XML document: ").append(parseException.getMessage()).toString(), e);
            } else if (targetException instanceof IOException) {
                IOException ioException = (IOException) targetException;
                throw ioException;
            } else {
                throw new JDOMException(targetException.getMessage(), e);
            }
        } catch (Exception e2) {
            throw new JDOMException(new StringBuffer(String.valueOf(e2.getClass().getName())).append(": ").append(e2.getMessage()).toString(), e2);
        }
    }

    @Override // org.jdom.adapters.AbstractDOMAdapter, org.jdom.adapters.DOMAdapter
    public Document createDocument() throws JDOMException {
        try {
            return (Document) Class.forName("org.apache.xerces.dom.DocumentImpl").newInstance();
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer(String.valueOf(e.getClass().getName())).append(": ").append(e.getMessage()).append(" when creating document").toString(), e);
        }
    }
}
