package org.jdom;

import ch.qos.logback.core.CoreConstants;
import com.facebook.internal.ServerProtocol;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class Attribute implements Serializable, Cloneable {
    public static final int CDATA_TYPE = 1;
    private static final String CVS_ID = "@(#) $RCSfile: Attribute.java,v $ $Revision: 1.52 $ $Date: 2004/03/01 23:58:28 $ $Name: jdom_1_0 $";
    public static final int ENTITIES_TYPE = 6;
    public static final int ENTITY_TYPE = 5;
    public static final int ENUMERATED_TYPE = 10;
    public static final int IDREFS_TYPE = 4;
    public static final int IDREF_TYPE = 3;
    public static final int ID_TYPE = 2;
    public static final int NMTOKENS_TYPE = 8;
    public static final int NMTOKEN_TYPE = 7;
    public static final int NOTATION_TYPE = 9;
    public static final int UNDECLARED_TYPE = 0;
    protected String name;
    protected transient Namespace namespace;
    protected Object parent;
    protected int type;
    protected String value;

    /* JADX INFO: Access modifiers changed from: protected */
    public Attribute() {
        this.type = 0;
    }

    public Attribute(String name, String value, Namespace namespace) {
        this.type = 0;
        setName(name);
        setValue(value);
        setNamespace(namespace);
    }

    public Attribute(String name, String value, int type, Namespace namespace) {
        this.type = 0;
        setName(name);
        setValue(value);
        setAttributeType(type);
        setNamespace(namespace);
    }

    public Attribute(String name, String value) {
        this(name, value, 0, Namespace.NO_NAMESPACE);
    }

    public Attribute(String name, String value, int type) {
        this(name, value, type, Namespace.NO_NAMESPACE);
    }

    public Element getParent() {
        return (Element) this.parent;
    }

    public Document getDocument() {
        if (this.parent != null) {
            return ((Element) this.parent).getDocument();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Attribute setParent(Element parent) {
        this.parent = parent;
        return this;
    }

    public Attribute detach() {
        Element p = getParent();
        if (p != null) {
            p.removeAttribute(getName(), getNamespace());
        }
        return this;
    }

    public String getName() {
        return this.name;
    }

    public Attribute setName(String name) {
        String reason = Verifier.checkAttributeName(name);
        if (reason != null) {
            throw new IllegalNameException(name, "attribute", reason);
        }
        this.name = name;
        return this;
    }

    public String getQualifiedName() {
        String prefix = this.namespace.getPrefix();
        return (prefix == null || prefix.equals("")) ? getName() : new StringBuffer(prefix).append(CoreConstants.COLON_CHAR).append(getName()).toString();
    }

    public String getNamespacePrefix() {
        return this.namespace.getPrefix();
    }

    public String getNamespaceURI() {
        return this.namespace.getURI();
    }

    public Namespace getNamespace() {
        return this.namespace;
    }

    public Attribute setNamespace(Namespace namespace) {
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        if (namespace != Namespace.NO_NAMESPACE && namespace.getPrefix().equals("")) {
            throw new IllegalNameException("", "attribute namespace", "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace");
        }
        this.namespace = namespace;
        return this;
    }

    public String getValue() {
        return this.value;
    }

    public Attribute setValue(String value) {
        String reason = Verifier.checkCharacterData(value);
        if (reason != null) {
            throw new IllegalDataException(value, "attribute", reason);
        }
        this.value = value;
        return this;
    }

    public int getAttributeType() {
        return this.type;
    }

    public Attribute setAttributeType(int type) {
        if (type < 0 || type > 10) {
            throw new IllegalDataException(String.valueOf(type), "attribute", "Illegal attribute type");
        }
        this.type = type;
        return this;
    }

    public String toString() {
        return new StringBuffer().append("[Attribute: ").append(getQualifiedName()).append("=\"").append(this.value).append("\"").append("]").toString();
    }

    public final boolean equals(Object ob) {
        return ob == this;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public Object clone() {
        Attribute attribute = null;
        try {
            attribute = (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        attribute.parent = null;
        return attribute;
    }

    public int getIntValue() throws DataConversionException {
        try {
            return Integer.parseInt(this.value.trim());
        } catch (NumberFormatException e) {
            throw new DataConversionException(this.name, "int");
        }
    }

    public long getLongValue() throws DataConversionException {
        try {
            return Long.parseLong(this.value.trim());
        } catch (NumberFormatException e) {
            throw new DataConversionException(this.name, "long");
        }
    }

    public float getFloatValue() throws DataConversionException {
        try {
            return Float.valueOf(this.value.trim()).floatValue();
        } catch (NumberFormatException e) {
            throw new DataConversionException(this.name, "float");
        }
    }

    public double getDoubleValue() throws DataConversionException {
        try {
            return Double.valueOf(this.value.trim()).doubleValue();
        } catch (NumberFormatException e) {
            throw new DataConversionException(this.name, "double");
        }
    }

    public boolean getBooleanValue() throws DataConversionException {
        String valueTrim = this.value.trim();
        if (valueTrim.equalsIgnoreCase(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) || valueTrim.equalsIgnoreCase("on") || valueTrim.equalsIgnoreCase("1") || valueTrim.equalsIgnoreCase("yes")) {
            return true;
        }
        if (valueTrim.equalsIgnoreCase("false") || valueTrim.equalsIgnoreCase("off") || valueTrim.equalsIgnoreCase("0") || valueTrim.equalsIgnoreCase("no")) {
            return false;
        }
        throw new DataConversionException(this.name, "boolean");
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeObject(this.namespace.getPrefix());
        out.writeObject(this.namespace.getURI());
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.namespace = Namespace.getNamespace((String) in.readObject(), (String) in.readObject());
    }
}
