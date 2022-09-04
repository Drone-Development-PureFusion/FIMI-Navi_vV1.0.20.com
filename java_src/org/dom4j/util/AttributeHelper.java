package org.dom4j.util;

import com.facebook.internal.ServerProtocol;
import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class AttributeHelper {
    protected AttributeHelper() {
    }

    public static boolean booleanValue(Element element, String attributeName) {
        return booleanValue(element.attribute(attributeName));
    }

    public static boolean booleanValue(Element element, QName attributeQName) {
        return booleanValue(element.attribute(attributeQName));
    }

    protected static boolean booleanValue(Attribute attribute) {
        Object value;
        if (attribute == null || (value = attribute.getData()) == null) {
            return false;
        }
        if (value instanceof Boolean) {
            Boolean b = (Boolean) value;
            return b.booleanValue();
        }
        return ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(value.toString());
    }
}
