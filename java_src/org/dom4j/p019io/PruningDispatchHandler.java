package org.dom4j.p019io;

import org.dom4j.ElementPath;
/* renamed from: org.dom4j.io.PruningDispatchHandler */
/* loaded from: classes2.dex */
class PruningDispatchHandler extends DispatchHandler {
    @Override // org.dom4j.p019io.DispatchHandler, org.dom4j.ElementHandler
    public void onEnd(ElementPath elementPath) {
        super.onEnd(elementPath);
        if (getActiveHandlerCount() == 0) {
            elementPath.getCurrent().detach();
        }
    }
}
