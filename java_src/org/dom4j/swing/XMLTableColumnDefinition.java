package org.dom4j.swing;

import java.io.Serializable;
import org.dom4j.DocumentHelper;
import org.dom4j.XPath;
/* loaded from: classes2.dex */
public class XMLTableColumnDefinition implements Serializable {
    public static final int NODE_TYPE = 3;
    public static final int NUMBER_TYPE = 2;
    public static final int OBJECT_TYPE = 0;
    public static final int STRING_TYPE = 1;
    static Class class$java$lang$Number;
    static Class class$java$lang$Object;
    static Class class$java$lang$String;
    static Class class$org$dom4j$Node;
    private XPath columnNameXPath;
    private String name;
    private int type;
    private XPath xpath;

    public XMLTableColumnDefinition() {
    }

    public XMLTableColumnDefinition(String name, String expression, int type) {
        this.name = name;
        this.type = type;
        this.xpath = createXPath(expression);
    }

    public XMLTableColumnDefinition(String name, XPath xpath, int type) {
        this.name = name;
        this.xpath = xpath;
        this.type = type;
    }

    public XMLTableColumnDefinition(XPath columnXPath, XPath xpath, int type) {
        this.xpath = xpath;
        this.columnNameXPath = columnXPath;
        this.type = type;
    }

    public static int parseType(String typeName) {
        if (typeName != null && typeName.length() > 0) {
            if (typeName.equals("string")) {
                return 1;
            }
            if (typeName.equals("number")) {
                return 2;
            }
            if (typeName.equals("node")) {
                return 3;
            }
        }
        return 0;
    }

    public Class getColumnClass() {
        switch (this.type) {
            case 1:
                if (class$java$lang$String != null) {
                    return class$java$lang$String;
                }
                Class class$ = class$("java.lang.String");
                class$java$lang$String = class$;
                return class$;
            case 2:
                if (class$java$lang$Number != null) {
                    return class$java$lang$Number;
                }
                Class class$2 = class$("java.lang.Number");
                class$java$lang$Number = class$2;
                return class$2;
            case 3:
                if (class$org$dom4j$Node != null) {
                    return class$org$dom4j$Node;
                }
                Class class$3 = class$("org.dom4j.Node");
                class$org$dom4j$Node = class$3;
                return class$3;
            default:
                if (class$java$lang$Object != null) {
                    return class$java$lang$Object;
                }
                Class class$4 = class$("java.lang.Object");
                class$java$lang$Object = class$4;
                return class$4;
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public Object getValue(Object row) {
        switch (this.type) {
            case 1:
                return this.xpath.valueOf(row);
            case 2:
                return this.xpath.numberValueOf(row);
            case 3:
                return this.xpath.selectSingleNode(row);
            default:
                return this.xpath.evaluate(row);
        }
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public XPath getXPath() {
        return this.xpath;
    }

    public void setXPath(XPath xPath) {
        this.xpath = xPath;
    }

    public XPath getColumnNameXPath() {
        return this.columnNameXPath;
    }

    public void setColumnNameXPath(XPath columnNameXPath) {
        this.columnNameXPath = columnNameXPath;
    }

    protected XPath createXPath(String expression) {
        return DocumentHelper.createXPath(expression);
    }

    protected void handleException(Exception e) {
        System.out.println(new StringBuffer().append("Caught: ").append(e).toString());
    }
}
