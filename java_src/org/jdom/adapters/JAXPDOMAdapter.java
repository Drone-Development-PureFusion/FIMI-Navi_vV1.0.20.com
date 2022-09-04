package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.jdom.JDOMException;
import org.jdom.input.BuilderErrorHandler;
import org.w3c.dom.Document;
/* loaded from: classes2.dex */
public class JAXPDOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: JAXPDOMAdapter.java,v $ $Revision: 1.12 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $";
    static Class class$java$io$InputStream;
    static Class class$org$xml$sax$ErrorHandler;

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
        try {
            Class.forName("javax.xml.transform.Transformer");
            Class factoryClass = Class.forName("javax.xml.parsers.DocumentBuilderFactory");
            Method newParserInstance = factoryClass.getMethod("newInstance", null);
            Object factory = newParserInstance.invoke(null, null);
            Method setValidating = factoryClass.getMethod("setValidating", Boolean.TYPE);
            setValidating.invoke(factory, new Boolean(validate));
            Method setNamespaceAware = factoryClass.getMethod("setNamespaceAware", Boolean.TYPE);
            setNamespaceAware.invoke(factory, Boolean.TRUE);
            Method newDocBuilder = factoryClass.getMethod("newDocumentBuilder", null);
            Object jaxpParser = newDocBuilder.invoke(factory, null);
            Class parserClass = jaxpParser.getClass();
            Class<?>[] clsArr = new Class[1];
            if (class$org$xml$sax$ErrorHandler != null) {
                class$ = class$org$xml$sax$ErrorHandler;
            } else {
                class$ = class$("org.xml.sax.ErrorHandler");
                class$org$xml$sax$ErrorHandler = class$;
            }
            clsArr[0] = class$;
            Method setErrorHandler = parserClass.getMethod("setErrorHandler", clsArr);
            setErrorHandler.invoke(jaxpParser, new BuilderErrorHandler());
            Class<?>[] clsArr2 = new Class[1];
            if (class$java$io$InputStream != null) {
                class$2 = class$java$io$InputStream;
            } else {
                class$2 = class$("java.io.InputStream");
                class$java$io$InputStream = class$2;
            }
            clsArr2[0] = class$2;
            Method parse = parserClass.getMethod("parse", clsArr2);
            Document domDoc = (Document) parse.invoke(jaxpParser, in);
            return domDoc;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof IOException) {
                throw ((IOException) targetException);
            }
            throw new JDOMException(targetException.getMessage(), targetException);
        } catch (Exception e2) {
            throw new JDOMException("Reflection failed while parsing a document with JAXP", e2);
        }
    }

    @Override // org.jdom.adapters.AbstractDOMAdapter, org.jdom.adapters.DOMAdapter
    public Document createDocument() throws JDOMException {
        try {
            Class.forName("javax.xml.transform.Transformer");
            Class factoryClass = Class.forName("javax.xml.parsers.DocumentBuilderFactory");
            Method newParserInstance = factoryClass.getMethod("newInstance", null);
            Object factory = newParserInstance.invoke(null, null);
            Method newDocBuilder = factoryClass.getMethod("newDocumentBuilder", null);
            Object jaxpParser = newDocBuilder.invoke(factory, null);
            Class parserClass = jaxpParser.getClass();
            Method newDoc = parserClass.getMethod("newDocument", null);
            Document domDoc = (Document) newDoc.invoke(jaxpParser, null);
            return domDoc;
        } catch (Exception e) {
            throw new JDOMException("Reflection failed while creating new JAXP document", e);
        }
    }
}
