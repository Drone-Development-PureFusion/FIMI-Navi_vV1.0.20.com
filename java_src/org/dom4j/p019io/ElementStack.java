package org.dom4j.p019io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
/* renamed from: org.dom4j.io.ElementStack */
/* loaded from: classes2.dex */
class ElementStack implements ElementPath {
    private DispatchHandler handler;
    protected int lastElementIndex;
    protected Element[] stack;

    public ElementStack() {
        this(50);
    }

    public ElementStack(int defaultCapacity) {
        this.lastElementIndex = -1;
        this.handler = null;
        this.stack = new Element[defaultCapacity];
    }

    public void setDispatchHandler(DispatchHandler dispatchHandler) {
        this.handler = dispatchHandler;
    }

    public DispatchHandler getDispatchHandler() {
        return this.handler;
    }

    public void clear() {
        this.lastElementIndex = -1;
    }

    public Element peekElement() {
        if (this.lastElementIndex < 0) {
            return null;
        }
        return this.stack[this.lastElementIndex];
    }

    public Element popElement() {
        if (this.lastElementIndex < 0) {
            return null;
        }
        Element[] elementArr = this.stack;
        int i = this.lastElementIndex;
        this.lastElementIndex = i - 1;
        return elementArr[i];
    }

    public void pushElement(Element element) {
        int length = this.stack.length;
        int i = this.lastElementIndex + 1;
        this.lastElementIndex = i;
        if (i >= length) {
            reallocate(length * 2);
        }
        this.stack[this.lastElementIndex] = element;
    }

    protected void reallocate(int size) {
        Element[] oldStack = this.stack;
        this.stack = new Element[size];
        System.arraycopy(oldStack, 0, this.stack, 0, oldStack.length);
    }

    @Override // org.dom4j.ElementPath
    public int size() {
        return this.lastElementIndex + 1;
    }

    @Override // org.dom4j.ElementPath
    public Element getElement(int depth) {
        try {
            Element element = this.stack[depth];
            return element;
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        }
    }

    @Override // org.dom4j.ElementPath
    public String getPath() {
        if (this.handler == null) {
            setDispatchHandler(new DispatchHandler());
        }
        return this.handler.getPath();
    }

    @Override // org.dom4j.ElementPath
    public Element getCurrent() {
        return peekElement();
    }

    @Override // org.dom4j.ElementPath
    public void addHandler(String path, ElementHandler elementHandler) {
        this.handler.addHandler(getHandlerPath(path), elementHandler);
    }

    @Override // org.dom4j.ElementPath
    public void removeHandler(String path) {
        this.handler.removeHandler(getHandlerPath(path));
    }

    public boolean containsHandler(String path) {
        return this.handler.containsHandler(path);
    }

    private String getHandlerPath(String path) {
        if (this.handler == null) {
            setDispatchHandler(new DispatchHandler());
        }
        if (path.startsWith("/")) {
            return path;
        }
        if (getPath().equals("/")) {
            String handlerPath = new StringBuffer().append(getPath()).append(path).toString();
            return handlerPath;
        }
        String handlerPath2 = new StringBuffer().append(getPath()).append("/").append(path).toString();
        return handlerPath2;
    }
}
