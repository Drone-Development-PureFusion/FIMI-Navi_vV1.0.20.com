package org.dom4j.p019io;

import java.util.ArrayList;
import java.util.HashMap;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.dom4j.io.DispatchHandler */
/* loaded from: classes2.dex */
public class DispatchHandler implements ElementHandler {
    private ElementHandler defaultHandler;
    private boolean atRoot = true;
    private String path = "/";
    private ArrayList pathStack = new ArrayList();
    private ArrayList handlerStack = new ArrayList();
    private HashMap handlers = new HashMap();

    public void addHandler(String handlerPath, ElementHandler handler) {
        this.handlers.put(handlerPath, handler);
    }

    public ElementHandler removeHandler(String handlerPath) {
        return (ElementHandler) this.handlers.remove(handlerPath);
    }

    public boolean containsHandler(String handlerPath) {
        return this.handlers.containsKey(handlerPath);
    }

    public ElementHandler getHandler(String handlerPath) {
        return (ElementHandler) this.handlers.get(handlerPath);
    }

    public int getActiveHandlerCount() {
        return this.handlerStack.size();
    }

    public void setDefaultHandler(ElementHandler handler) {
        this.defaultHandler = handler;
    }

    public void resetHandlers() {
        this.atRoot = true;
        this.path = "/";
        this.pathStack.clear();
        this.handlerStack.clear();
        this.handlers.clear();
        this.defaultHandler = null;
    }

    public String getPath() {
        return this.path;
    }

    @Override // org.dom4j.ElementHandler
    public void onStart(ElementPath elementPath) {
        Element element = elementPath.getCurrent();
        this.pathStack.add(this.path);
        if (this.atRoot) {
            this.path = new StringBuffer().append(this.path).append(element.getName()).toString();
            this.atRoot = false;
        } else {
            this.path = new StringBuffer().append(this.path).append("/").append(element.getName()).toString();
        }
        if (this.handlers != null && this.handlers.containsKey(this.path)) {
            ElementHandler handler = (ElementHandler) this.handlers.get(this.path);
            this.handlerStack.add(handler);
            handler.onStart(elementPath);
        } else if (this.handlerStack.isEmpty() && this.defaultHandler != null) {
            this.defaultHandler.onStart(elementPath);
        }
    }

    @Override // org.dom4j.ElementHandler
    public void onEnd(ElementPath elementPath) {
        if (this.handlers != null && this.handlers.containsKey(this.path)) {
            ElementHandler handler = (ElementHandler) this.handlers.get(this.path);
            this.handlerStack.remove(this.handlerStack.size() - 1);
            handler.onEnd(elementPath);
        } else if (this.handlerStack.isEmpty() && this.defaultHandler != null) {
            this.defaultHandler.onEnd(elementPath);
        }
        this.path = (String) this.pathStack.remove(this.pathStack.size() - 1);
        if (this.pathStack.size() == 0) {
            this.atRoot = true;
        }
    }
}
