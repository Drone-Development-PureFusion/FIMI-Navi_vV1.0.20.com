package org.dom4j.swing;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.XPath;
import org.jaxen.VariableContext;
/* loaded from: classes2.dex */
public class XMLTableDefinition implements Serializable, VariableContext {
    private XMLTableColumnDefinition[] columnArray;
    private Map columnNameIndex;
    private List columns = new ArrayList();
    private Object rowValue;
    private XPath rowXPath;
    private VariableContext variableContext;

    public static XMLTableDefinition load(Document definition) {
        return load(definition.getRootElement());
    }

    public static XMLTableDefinition load(Element definition) {
        XMLTableDefinition answer = new XMLTableDefinition();
        answer.setRowExpression(definition.attributeValue("select"));
        Iterator iter = definition.elementIterator("column");
        while (iter.hasNext()) {
            Element element = (Element) iter.next();
            String expression = element.attributeValue("select");
            String name = element.getText();
            String typeName = element.attributeValue("type", "string");
            String columnXPath = element.attributeValue("columnNameXPath");
            int type = XMLTableColumnDefinition.parseType(typeName);
            if (columnXPath != null) {
                answer.addColumnWithXPathName(columnXPath, expression, type);
            } else {
                answer.addColumn(name, expression, type);
            }
        }
        return answer;
    }

    public Class getColumnClass(int columnIndex) {
        return getColumn(columnIndex).getColumnClass();
    }

    public int getColumnCount() {
        return this.columns.size();
    }

    public String getColumnName(int columnIndex) {
        return getColumn(columnIndex).getName();
    }

    public XPath getColumnXPath(int columnIndex) {
        return getColumn(columnIndex).getXPath();
    }

    public XPath getColumnNameXPath(int columnIndex) {
        return getColumn(columnIndex).getColumnNameXPath();
    }

    public synchronized Object getValueAt(Object row, int columnIndex) {
        Object answer;
        XMLTableColumnDefinition column = getColumn(columnIndex);
        synchronized (this) {
            this.rowValue = row;
            answer = column.getValue(row);
            this.rowValue = null;
        }
        return answer;
        return answer;
    }

    public void addColumn(String name, String expression) {
        addColumn(name, expression, 0);
    }

    public void addColumn(String name, String expression, int type) {
        XPath xpath = createColumnXPath(expression);
        addColumn(new XMLTableColumnDefinition(name, xpath, type));
    }

    public void addColumnWithXPathName(String columnNameXPathExpression, String expression, int type) {
        XPath columnNameXPath = createColumnXPath(columnNameXPathExpression);
        XPath xpath = createColumnXPath(expression);
        addColumn(new XMLTableColumnDefinition(columnNameXPath, xpath, type));
    }

    public void addStringColumn(String name, String expression) {
        addColumn(name, expression, 1);
    }

    public void addNumberColumn(String name, String expression) {
        addColumn(name, expression, 2);
    }

    public void addColumn(XMLTableColumnDefinition column) {
        clearCaches();
        this.columns.add(column);
    }

    public void removeColumn(XMLTableColumnDefinition column) {
        clearCaches();
        this.columns.remove(column);
    }

    public void clear() {
        clearCaches();
        this.columns.clear();
    }

    public XMLTableColumnDefinition getColumn(int index) {
        if (this.columnArray == null) {
            this.columnArray = new XMLTableColumnDefinition[this.columns.size()];
            this.columns.toArray(this.columnArray);
        }
        return this.columnArray[index];
    }

    public XMLTableColumnDefinition getColumn(String columnName) {
        if (this.columnNameIndex == null) {
            this.columnNameIndex = new HashMap();
            for (XMLTableColumnDefinition column : this.columns) {
                this.columnNameIndex.put(column.getName(), column);
            }
        }
        return (XMLTableColumnDefinition) this.columnNameIndex.get(columnName);
    }

    public XPath getRowXPath() {
        return this.rowXPath;
    }

    public void setRowXPath(XPath rowXPath) {
        this.rowXPath = rowXPath;
    }

    public void setRowExpression(String xpath) {
        setRowXPath(createXPath(xpath));
    }

    public Object getVariableValue(String namespaceURI, String prefix, String localName) {
        XMLTableColumnDefinition column = getColumn(localName);
        if (column != null) {
            return column.getValue(this.rowValue);
        }
        return null;
    }

    protected XPath createXPath(String expression) {
        return DocumentHelper.createXPath(expression);
    }

    protected XPath createColumnXPath(String expression) {
        XPath xpath = createXPath(expression);
        xpath.setVariableContext(this);
        return xpath;
    }

    protected void clearCaches() {
        this.columnArray = null;
        this.columnNameIndex = null;
    }

    protected void handleException(Exception e) {
        System.out.println(new StringBuffer().append("Caught: ").append(e).toString());
    }
}
