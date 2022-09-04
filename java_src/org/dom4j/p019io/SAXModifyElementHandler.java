package org.dom4j.p019io;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
/* renamed from: org.dom4j.io.SAXModifyElementHandler */
/* loaded from: classes2.dex */
class SAXModifyElementHandler implements ElementHandler {
    private ElementModifier elemModifier;
    private Element modifiedElement;

    public SAXModifyElementHandler(ElementModifier elemModifier) {
        this.elemModifier = elemModifier;
    }

    @Override // org.dom4j.ElementHandler
    public void onStart(ElementPath elementPath) {
        this.modifiedElement = elementPath.getCurrent();
    }

    @Override // org.dom4j.ElementHandler
    public void onEnd(ElementPath elementPath) {
        try {
            Element origElement = elementPath.getCurrent();
            Element currentParent = origElement.getParent();
            if (currentParent != null) {
                Element clonedElem = (Element) origElement.clone();
                this.modifiedElement = this.elemModifier.modifyElement(clonedElem);
                if (this.modifiedElement != null) {
                    this.modifiedElement.setParent(origElement.getParent());
                    this.modifiedElement.setDocument(origElement.getDocument());
                    int contentIndex = currentParent.indexOf(origElement);
                    currentParent.content().set(contentIndex, this.modifiedElement);
                }
                origElement.detach();
            } else if (origElement.isRootElement()) {
                Element clonedElem2 = (Element) origElement.clone();
                this.modifiedElement = this.elemModifier.modifyElement(clonedElem2);
                if (this.modifiedElement != null) {
                    this.modifiedElement.setDocument(origElement.getDocument());
                    Document doc = origElement.getDocument();
                    doc.setRootElement(this.modifiedElement);
                }
                origElement.detach();
            }
            if (elementPath instanceof ElementStack) {
                ElementStack elementStack = (ElementStack) elementPath;
                elementStack.popElement();
                elementStack.pushElement(this.modifiedElement);
            }
        } catch (Exception ex) {
            throw new SAXModifyException(ex);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Element getModifiedElement() {
        return this.modifiedElement;
    }
}
