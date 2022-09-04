package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class EnumSerializer implements ObjectSerializer {
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        if ((out.features & SerializerFeature.WriteEnumUsingToString.mask) != 0) {
            Enum<?> e = (Enum) object;
            String name = e.toString();
            boolean userSingleQuote = (out.features & SerializerFeature.UseSingleQuotes.mask) != 0;
            if (userSingleQuote) {
                out.writeStringWithSingleQuote(name);
                return;
            } else {
                out.writeStringWithDoubleQuote(name, (char) 0, false);
                return;
            }
        }
        Enum<?> e2 = (Enum) object;
        out.writeInt(e2.ordinal());
    }
}
