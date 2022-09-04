package org.jdom.adapters;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import org.jdom.DocType;
import org.jdom.JDOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
/* loaded from: classes2.dex */
public abstract class AbstractDOMAdapter implements DOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: AbstractDOMAdapter.java,v $ $Revision: 1.20 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $";
    static Class class$java$lang$String;

    @Override // org.jdom.adapters.DOMAdapter
    public abstract Document createDocument() throws JDOMException;

    @Override // org.jdom.adapters.DOMAdapter
    public abstract Document getDocument(InputStream inputStream, boolean z) throws IOException, JDOMException;

    static Class class$(String class$) {
        try {
            return Class.forName(class$);
        } catch (ClassNotFoundException forName) {
            throw new NoClassDefFoundError(forName.getMessage());
        }
    }

    @Override // org.jdom.adapters.DOMAdapter
    public Document getDocument(File filename, boolean validate) throws IOException, JDOMException {
        return getDocument(new FileInputStream(filename), validate);
    }

    @Override // org.jdom.adapters.DOMAdapter
    public Document createDocument(DocType doctype) throws JDOMException {
        if (doctype == null) {
            return createDocument();
        }
        DOMImplementation domImpl = createDocument().getImplementation();
        DocumentType domDocType = domImpl.createDocumentType(doctype.getElementName(), doctype.getPublicID(), doctype.getSystemID());
        setInternalSubset(domDocType, doctype.getInternalSubset());
        return domImpl.createDocument("http://temporary", doctype.getElementName(), domDocType);
    }

    protected void setInternalSubset(DocumentType dt, String s) {
        Class<?> class$;
        if (dt == null || s == null) {
            return;
        }
        try {
            Class dtclass = dt.getClass();
            Class<?>[] clsArr = new Class[1];
            if (class$java$lang$String != null) {
                class$ = class$java$lang$String;
            } else {
                class$ = class$("java.lang.String");
                class$java$lang$String = class$;
            }
            clsArr[0] = class$;
            Method setInternalSubset = dtclass.getMethod("setInternalSubset", clsArr);
            setInternalSubset.invoke(dt, s);
        } catch (Exception e) {
        }
    }
}
