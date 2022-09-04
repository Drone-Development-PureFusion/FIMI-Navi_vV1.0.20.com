package org.dom4j.tree;

import com.fimi.kernel.animutils.IOUtils;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Visitor;
/* loaded from: classes2.dex */
public abstract class AbstractDocumentType extends AbstractNode implements DocumentType {
    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 10;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getName() {
        return getElementName();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setName(String name) {
        setElementName(name);
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        return "";
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        return "";
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        List list = getInternalDeclarations();
        if (list == null || list.size() <= 0) {
            return "";
        }
        StringBuffer buffer = new StringBuffer();
        Iterator iter = list.iterator();
        if (iter.hasNext()) {
            Object decl = iter.next();
            buffer.append(decl.toString());
            while (iter.hasNext()) {
                Object decl2 = iter.next();
                buffer.append(IOUtils.LINE_SEPARATOR_UNIX);
                buffer.append(decl2.toString());
            }
        }
        return buffer.toString();
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [DocumentType: ").append(asXML()).append("]").toString();
    }

    @Override // org.dom4j.Node
    public String asXML() {
        StringBuffer buffer = new StringBuffer("<!DOCTYPE ");
        buffer.append(getElementName());
        boolean hasPublicID = false;
        String publicID = getPublicID();
        if (publicID != null && publicID.length() > 0) {
            buffer.append(" PUBLIC \"");
            buffer.append(publicID);
            buffer.append("\"");
            hasPublicID = true;
        }
        String systemID = getSystemID();
        if (systemID != null && systemID.length() > 0) {
            if (!hasPublicID) {
                buffer.append(" SYSTEM");
            }
            buffer.append(" \"");
            buffer.append(systemID);
            buffer.append("\"");
        }
        buffer.append(">");
        return buffer.toString();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void write(Writer writer) throws IOException {
        writer.write("<!DOCTYPE ");
        writer.write(getElementName());
        boolean hasPublicID = false;
        String publicID = getPublicID();
        if (publicID != null && publicID.length() > 0) {
            writer.write(" PUBLIC \"");
            writer.write(publicID);
            writer.write("\"");
            hasPublicID = true;
        }
        String systemID = getSystemID();
        if (systemID != null && systemID.length() > 0) {
            if (!hasPublicID) {
                writer.write(" SYSTEM");
            }
            writer.write(" \"");
            writer.write(systemID);
            writer.write("\"");
        }
        List list = getInternalDeclarations();
        if (list != null && list.size() > 0) {
            writer.write(" [");
            for (Object decl : list) {
                writer.write("\n  ");
                writer.write(decl.toString());
            }
            writer.write("\n]");
        }
        writer.write(">");
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
