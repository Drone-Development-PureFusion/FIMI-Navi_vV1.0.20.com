package org.dom4j.dtd;
/* loaded from: classes2.dex */
public class ElementDecl {
    private String model;
    private String name;

    public ElementDecl() {
    }

    public ElementDecl(String name, String model) {
        this.name = name;
        this.model = model;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String toString() {
        return new StringBuffer().append("<!ELEMENT ").append(this.name).append(" ").append(this.model).append(">").toString();
    }
}
