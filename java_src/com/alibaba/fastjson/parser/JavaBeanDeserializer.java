package com.alibaba.fastjson.parser;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.umeng.commonsdk.proguard.C2354g;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    public final JavaBeanInfo beanInfo;
    private final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig config, Class<?> clazz, Type type) {
        this(config, clazz, type, JavaBeanInfo.build(clazz, clazz.getModifiers(), type, false, true, true, true, config.propertyNamingStrategy));
    }

    public JavaBeanDeserializer(ParserConfig config, Class<?> clazz, Type type, JavaBeanInfo beanInfo) {
        this.clazz = clazz;
        this.beanInfo = beanInfo;
        this.sortedFieldDeserializers = new FieldDeserializer[beanInfo.sortedFields.length];
        int size = beanInfo.sortedFields.length;
        for (int i = 0; i < size; i++) {
            FieldInfo fieldInfo = beanInfo.sortedFields[i];
            FieldDeserializer fieldDeserializer = config.createFieldDeserializer(config, clazz, fieldInfo);
            this.sortedFieldDeserializers[i] = fieldDeserializer;
        }
        this.fieldDeserializers = new FieldDeserializer[beanInfo.fields.length];
        int size2 = beanInfo.fields.length;
        for (int i2 = 0; i2 < size2; i2++) {
            FieldInfo fieldInfo2 = beanInfo.fields[i2];
            FieldDeserializer fieldDeserializer2 = getFieldDeserializer(fieldInfo2.name);
            this.fieldDeserializers[i2] = fieldDeserializer2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object createInstance(DefaultJSONParser parser, Type type) {
        FieldInfo[] fieldInfoArr;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            Class<?> clazz = (Class) type;
            ClassLoader loader = Thread.currentThread().getContextClassLoader();
            boolean ordered = (parser.lexer.features & Feature.OrderedField.mask) != 0;
            return Proxy.newProxyInstance(loader, new Class[]{clazz}, new JSONObject(ordered));
        } else if (this.beanInfo.defaultConstructor == null) {
            return null;
        } else {
            try {
                Constructor<?> constructor = this.beanInfo.defaultConstructor;
                Object object = this.beanInfo.defaultConstructorParameterSize == 0 ? constructor.newInstance(new Object[0]) : constructor.newInstance(parser.contex.object);
                if (parser != null && (parser.lexer.features & Feature.InitStringFieldAsEmpty.mask) != 0) {
                    for (FieldInfo fieldInfo : this.beanInfo.fields) {
                        if (fieldInfo.fieldClass == String.class) {
                            fieldInfo.set(object, "");
                        }
                    }
                }
                return object;
            } catch (Exception e) {
                throw new JSONException("create instance error, class " + this.clazz.getName(), e);
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        return (T) deserialze(parser, type, fieldName, null);
    }

    private <T> T deserialzeArrayMapping(DefaultJSONParser parser, Type type, Object fieldName, Object object) {
        Enum value;
        String strVal;
        JSONLexer lexer = parser.lexer;
        Object object2 = createInstance(parser, type);
        T t = (T) object2;
        int size = this.sortedFieldDeserializers.length;
        int i = 0;
        while (i < size) {
            char seperator = i == size + (-1) ? ']' : CoreConstants.COMMA_CHAR;
            FieldDeserializer fieldDeser = this.sortedFieldDeserializers[i];
            FieldInfo fieldInfo = fieldDeser.fieldInfo;
            Class<?> fieldClass = fieldInfo.fieldClass;
            try {
                if (fieldClass == Integer.TYPE) {
                    int intValue = (int) lexer.scanLongValue();
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.setInt(t, intValue);
                    } else {
                        fieldDeser.setValue(t, new Integer(intValue));
                    }
                    if (lexer.f57ch == ',') {
                        int index = lexer.f56bp + 1;
                        lexer.f56bp = index;
                        lexer.f57ch = index >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index2 = lexer.f56bp + 1;
                        lexer.f56bp = index2;
                        lexer.f57ch = index2 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index2);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else if (fieldClass == String.class) {
                    if (lexer.f57ch == '\"') {
                        strVal = lexer.scanStringValue(CoreConstants.DOUBLE_QUOTE_CHAR);
                    } else if (lexer.f57ch == 'n' && lexer.text.startsWith("null", lexer.f56bp)) {
                        lexer.f56bp += 4;
                        lexer.f57ch = lexer.f56bp >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(lexer.f56bp);
                        strVal = null;
                    } else {
                        throw new JSONException("not match string. feild : " + fieldName);
                    }
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.set(t, strVal);
                    } else {
                        fieldDeser.setValue(t, strVal);
                    }
                    if (lexer.f57ch == ',') {
                        int index3 = lexer.f56bp + 1;
                        lexer.f56bp = index3;
                        lexer.f57ch = index3 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index3);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index4 = lexer.f56bp + 1;
                        lexer.f56bp = index4;
                        lexer.f57ch = index4 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index4);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else if (fieldClass == Long.TYPE) {
                    long longValue = lexer.scanLongValue();
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.setLong(t, longValue);
                    } else {
                        fieldDeser.setValue(t, new Long(longValue));
                    }
                    if (lexer.f57ch == ',') {
                        int index5 = lexer.f56bp + 1;
                        lexer.f56bp = index5;
                        lexer.f57ch = index5 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index5);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index6 = lexer.f56bp + 1;
                        lexer.f56bp = index6;
                        lexer.f57ch = index6 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index6);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else if (fieldClass == Boolean.TYPE) {
                    boolean booleanValue = lexer.scanBoolean();
                    if (fieldInfo.fieldAccess) {
                        fieldInfo.field.setBoolean(t, booleanValue);
                    } else {
                        fieldDeser.setValue(t, Boolean.valueOf(booleanValue));
                    }
                    if (lexer.f57ch == ',') {
                        int index7 = lexer.f56bp + 1;
                        lexer.f56bp = index7;
                        lexer.f57ch = index7 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index7);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index8 = lexer.f56bp + 1;
                        lexer.f56bp = index8;
                        lexer.f57ch = index8 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index8);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else if (fieldClass.isEnum()) {
                    char ch2 = lexer.f57ch;
                    if (ch2 == '\"') {
                        String enumName = lexer.scanSymbol(parser.symbolTable);
                        value = enumName == null ? null : Enum.valueOf(fieldClass, enumName);
                    } else if (ch2 >= '0' && ch2 <= '9') {
                        int ordinal = (int) lexer.scanLongValue();
                        EnumDeserializer enumDeser = (EnumDeserializer) ((DefaultFieldDeserializer) fieldDeser).getFieldValueDeserilizer(parser.config);
                        value = enumDeser.values[ordinal];
                    } else {
                        throw new JSONException("illegal enum." + lexer.info());
                    }
                    fieldDeser.setValue(t, value);
                    if (lexer.f57ch == ',') {
                        int index9 = lexer.f56bp + 1;
                        lexer.f56bp = index9;
                        lexer.f57ch = index9 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index9);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index10 = lexer.f56bp + 1;
                        lexer.f56bp = index10;
                        lexer.f57ch = index10 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index10);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else if (fieldClass == Date.class && lexer.f57ch == '1') {
                    fieldDeser.setValue(t, new Date(lexer.scanLongValue()));
                    if (lexer.f57ch == ',') {
                        int index11 = lexer.f56bp + 1;
                        lexer.f56bp = index11;
                        lexer.f57ch = index11 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index11);
                        lexer.token = 16;
                    } else if (lexer.f57ch == ']') {
                        int index12 = lexer.f56bp + 1;
                        lexer.f56bp = index12;
                        lexer.f57ch = index12 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index12);
                        lexer.token = 15;
                    } else {
                        lexer.nextToken();
                    }
                } else {
                    if (lexer.f57ch == '[') {
                        int index13 = lexer.f56bp + 1;
                        lexer.f56bp = index13;
                        lexer.f57ch = index13 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index13);
                        lexer.token = 14;
                    } else if (lexer.f57ch == '{') {
                        int index14 = lexer.f56bp + 1;
                        lexer.f56bp = index14;
                        lexer.f57ch = index14 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index14);
                        lexer.token = 12;
                    } else {
                        lexer.nextToken();
                    }
                    fieldDeser.parseField(parser, t, fieldInfo.fieldType, null);
                    if (seperator == ']') {
                        if (lexer.token != 15) {
                            throw new JSONException("syntax error");
                        }
                    } else if (seperator == ',' && lexer.token != 16) {
                        throw new JSONException("syntax error");
                    }
                }
                i++;
            } catch (IllegalAccessException e) {
                throw new JSONException("set " + fieldInfo.name + "error", e);
            }
        }
        if (lexer.f57ch == ',') {
            int index15 = lexer.f56bp + 1;
            lexer.f56bp = index15;
            lexer.f57ch = index15 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index15);
            lexer.token = 16;
        } else {
            lexer.nextToken();
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:261:0x04f6, code lost:
        r13 = getSeeAlso(r51.config, r50.beanInfo, r47);
        r48 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0508, code lost:
        if (r13 != null) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x050a, code lost:
        r48 = com.alibaba.fastjson.util.TypeUtils.loadClass(r47, r51.config.defaultClassLoader);
        r19 = com.alibaba.fastjson.util.TypeUtils.getClass(r52);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x051a, code lost:
        if (r19 == null) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x051c, code lost:
        if (r48 == null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0526, code lost:
        if (r19.isAssignableFrom(r48) == false) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0553, code lost:
        throw new com.alibaba.fastjson.JSONException("type not match");
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0528, code lost:
        r13 = r51.config.getDeserializer(r48);
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0532, code lost:
        r4 = (T) r13.deserialze(r51, r48, r53);
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x053c, code lost:
        if (r11 == null) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x053e, code lost:
        r11.object = r54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0542, code lost:
        r51.setContext(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:?, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0758, code lost:
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r0.token));
     */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0593 A[Catch: all -> 0x0107, TryCatch #3 {all -> 0x0107, blocks: (B:18:0x0048, B:20:0x004f, B:27:0x0069, B:29:0x0071, B:33:0x0080, B:43:0x00a1, B:52:0x00bc, B:54:0x00c6, B:60:0x00d9, B:62:0x00f2, B:63:0x00fd, B:64:0x0106, B:65:0x0114, B:67:0x011b, B:68:0x0120, B:214:0x01a5, B:216:0x01ab, B:221:0x0759, B:224:0x076e, B:226:0x0785, B:237:0x078d, B:228:0x07ce, B:231:0x07d6, B:234:0x07e5, B:235:0x0807, B:240:0x07ab, B:241:0x07cd, B:321:0x0572, B:324:0x0580, B:325:0x058b, B:327:0x0593, B:339:0x059b, B:329:0x0729, B:331:0x0731, B:334:0x0738, B:335:0x0758, B:342:0x05a6, B:346:0x05c8, B:350:0x05d9, B:354:0x05eb, B:358:0x05b6, B:359:0x05bf, B:363:0x05f7, B:364:0x05e5, B:365:0x05d4, B:366:0x05b2, B:370:0x0603, B:374:0x0652, B:378:0x0682, B:382:0x06b5, B:386:0x06e8, B:387:0x06c1, B:389:0x06c7, B:391:0x06cd, B:392:0x06d8, B:393:0x068e, B:395:0x0694, B:397:0x069a, B:398:0x06a5, B:399:0x065e, B:401:0x0664, B:403:0x066a, B:404:0x0675, B:405:0x060f, B:407:0x0615, B:409:0x061b, B:410:0x0645, B:368:0x06f3, B:413:0x0626, B:414:0x0644, B:415:0x06fe, B:417:0x070c, B:420:0x0714, B:422:0x0719, B:425:0x0721, B:426:0x0728), top: B:15:0x0044, inners: #0, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x01cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName, Object object) {
        Map<String, Object> fieldValues;
        int token;
        if (type == JSON.class || type == JSONObject.class) {
            return (T) parser.parse();
        }
        JSONLexer lexer = parser.lexer;
        int token2 = lexer.token;
        if (token2 == 8) {
            lexer.nextToken(16);
            return null;
        }
        boolean disableCircularReferenceDetect = lexer.disableCircularReferenceDetect;
        ParseContext context = parser.contex;
        if (object != null && context != null) {
            context = context.parent;
        }
        ParseContext childContext = null;
        try {
            if (token2 == 13) {
                lexer.nextToken(16);
                if (object == null) {
                    object = createInstance(parser, type);
                }
                if (0 != 0) {
                    childContext.object = object;
                }
                parser.setContext(context);
                return (T) object;
            }
            if (token2 == 14) {
                boolean isSupportArrayToBean = this.beanInfo.supportBeanToArray || (lexer.features & Feature.SupportArrayToBean.mask) != 0;
                if (isSupportArrayToBean) {
                    T t = (T) deserialzeArrayMapping(parser, type, fieldName, object);
                    if (0 != 0) {
                        childContext.object = object;
                    }
                    parser.setContext(context);
                    return t;
                }
            }
            if (token2 != 12 && token2 != 16) {
                if (lexer.isBlankInput()) {
                    if (0 != 0) {
                        childContext.object = object;
                    }
                    parser.setContext(context);
                    return null;
                }
                if (token2 == 4) {
                    String strVal = lexer.stringVal();
                    if (strVal.length() == 0) {
                        lexer.nextToken();
                        if (0 != 0) {
                            childContext.object = object;
                        }
                        parser.setContext(context);
                        return null;
                    }
                }
                StringBuffer buf = new StringBuffer().append("syntax error, expect {, actual ").append(lexer.info());
                if (fieldName instanceof String) {
                    buf.append(", fieldName ").append(fieldName);
                }
                throw new JSONException(buf.toString());
            }
            if (parser.resolveStatus == 2) {
                parser.resolveStatus = 0;
            }
            int fieldIndex = 0;
            int size = this.sortedFieldDeserializers.length;
            Map<String, Object> fieldValues2 = null;
            while (true) {
                String key = null;
                FieldDeserializer fieldDeser = null;
                FieldInfo fieldInfo = null;
                Class<?> fieldClass = null;
                if (fieldIndex < size) {
                    try {
                        fieldDeser = this.sortedFieldDeserializers[fieldIndex];
                        fieldInfo = fieldDeser.fieldInfo;
                        fieldClass = fieldInfo.fieldClass;
                    } catch (Throwable th) {
                        th = th;
                        if (childContext != null) {
                            childContext.object = object;
                        }
                        parser.setContext(context);
                        throw th;
                    }
                }
                boolean matchField = false;
                boolean valueParsed = false;
                Object fieldValue = null;
                int fieldValueInt = 0;
                long fieldValueLong = 0;
                float fieldValueFloat = 0.0f;
                double fieldValueDouble = 0.0d;
                if (fieldDeser != null) {
                    long fieldHashCode = fieldInfo.nameHashCode;
                    if (fieldClass == Integer.TYPE || fieldClass == Integer.class) {
                        fieldValueInt = lexer.scanFieldInt(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == Long.TYPE || fieldClass == Long.class) {
                        fieldValueLong = lexer.scanFieldLong(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == String.class) {
                        fieldValue = lexer.scanFieldString(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == Boolean.TYPE || fieldClass == Boolean.class) {
                        fieldValue = Boolean.valueOf(lexer.scanFieldBoolean(fieldHashCode));
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == Float.TYPE || fieldClass == Float.class) {
                        fieldValueFloat = lexer.scanFieldFloat(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == Double.TYPE || fieldClass == Double.class) {
                        fieldValueDouble = lexer.scanFieldDouble(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldInfo.isEnum && (parser.config.getDeserializer(fieldClass) instanceof EnumDeserializer)) {
                        long enumNameHashCode = lexer.scanFieldSymbol(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                            fieldValue = fieldDeser.getEnumByHashCode(enumNameHashCode);
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == int[].class) {
                        fieldValue = lexer.scanFieldIntArray(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == float[].class) {
                        fieldValue = lexer.scanFieldFloatArray(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == double[].class) {
                        fieldValue = lexer.scanFieldDoubleArray(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == float[][].class) {
                        fieldValue = lexer.scanFieldFloatArray2(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else if (fieldClass == double[][].class) {
                        fieldValue = lexer.scanFieldDoubleArray2(fieldHashCode);
                        if (lexer.matchStat > 0) {
                            matchField = true;
                            valueParsed = true;
                        } else if (lexer.matchStat == -2) {
                            fieldValues = fieldValues2;
                        }
                    } else {
                        if (lexer.matchField(fieldInfo.nameHashCode)) {
                            matchField = true;
                        }
                        fieldValues = fieldValues2;
                    }
                    fieldIndex++;
                    fieldValues2 = fieldValues;
                }
                if (!matchField) {
                    key = lexer.scanSymbol(parser.symbolTable);
                    if (key == null) {
                        int token3 = lexer.token;
                        if (token3 == 13) {
                            lexer.nextToken(16);
                            fieldValues = fieldValues2;
                            break;
                        } else if (token3 == 16) {
                            fieldValues = fieldValues2;
                            fieldIndex++;
                            fieldValues2 = fieldValues;
                        }
                    }
                    if ("$ref" == key) {
                        lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        if (lexer.token != 4) {
                            throw new JSONException("illegal ref, " + JSONToken.name(token));
                        }
                        String ref = lexer.stringVal();
                        if ("@".equals(ref)) {
                            object = context.object;
                        } else if ("..".equals(ref)) {
                            ParseContext parentContext = context.parent;
                            if (parentContext.object != null) {
                                object = parentContext.object;
                            } else {
                                parser.addResolveTask(new DefaultJSONParser.ResolveTask(parentContext, ref));
                                parser.resolveStatus = 1;
                            }
                        } else if ("$".equals(ref)) {
                            ParseContext rootContext = context;
                            while (rootContext.parent != null) {
                                rootContext = rootContext.parent;
                            }
                            if (rootContext.object != null) {
                                object = rootContext.object;
                            } else {
                                parser.addResolveTask(new DefaultJSONParser.ResolveTask(rootContext, ref));
                                parser.resolveStatus = 1;
                            }
                        } else {
                            parser.addResolveTask(new DefaultJSONParser.ResolveTask(context, ref));
                            parser.resolveStatus = 1;
                        }
                        lexer.nextToken(13);
                        if (lexer.token != 13) {
                            throw new JSONException("illegal ref");
                        }
                        lexer.nextToken(16);
                        parser.setContext(context, object, fieldName);
                        if (childContext != null) {
                            childContext.object = object;
                        }
                        parser.setContext(context);
                        return (T) object;
                    } else if (JSON.DEFAULT_TYPE_KEY == key) {
                        lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        if (lexer.token != 4) {
                            throw new JSONException("syntax error");
                        }
                        String typeName = lexer.stringVal();
                        lexer.nextToken(16);
                        if (!(type instanceof Class) || !typeName.equals(((Class) type).getName())) {
                            break;
                        }
                        if (lexer.token == 13) {
                            lexer.nextToken();
                            fieldValues = fieldValues2;
                            break;
                        }
                        fieldValues = fieldValues2;
                        fieldIndex++;
                        fieldValues2 = fieldValues;
                    }
                }
                if (object == null && fieldValues2 == null) {
                    object = createInstance(parser, type);
                    fieldValues = object == null ? new HashMap<>(this.fieldDeserializers.length) : fieldValues2;
                    if (!disableCircularReferenceDetect) {
                        childContext = parser.setContext(context, object, fieldName);
                    }
                } else {
                    fieldValues = fieldValues2;
                }
                if (matchField) {
                    if (valueParsed) {
                        if (object == null) {
                            if (fieldClass == Integer.TYPE || fieldClass == Integer.class) {
                                fieldValue = Integer.valueOf(fieldValueInt);
                            } else if (fieldClass == Long.TYPE || fieldClass == Long.class) {
                                fieldValue = Long.valueOf(fieldValueLong);
                            } else if (fieldClass == Float.TYPE || fieldClass == Float.class) {
                                fieldValue = new Float(fieldValueFloat);
                            } else if (fieldClass == Double.TYPE || fieldClass == Double.class) {
                                fieldValue = new Double(fieldValueDouble);
                            }
                            fieldValues.put(fieldInfo.name, fieldValue);
                        } else if (fieldValue == null) {
                            try {
                                if (fieldClass == Integer.TYPE || fieldClass == Integer.class) {
                                    if (!fieldInfo.fieldAccess || fieldClass != Integer.TYPE) {
                                        fieldDeser.setValue(object, Integer.valueOf(fieldValueInt));
                                    } else {
                                        fieldDeser.setValue(object, fieldValueInt);
                                    }
                                } else if (fieldClass == Long.TYPE || fieldClass == Long.class) {
                                    if (!fieldInfo.fieldAccess || fieldClass != Long.TYPE) {
                                        fieldDeser.setValue(object, Long.valueOf(fieldValueLong));
                                    } else {
                                        fieldDeser.setValue(object, fieldValueLong);
                                    }
                                } else if (fieldClass == Float.TYPE || fieldClass == Float.class) {
                                    if (!fieldInfo.fieldAccess || fieldClass != Float.TYPE) {
                                        fieldDeser.setValue(object, new Float(fieldValueFloat));
                                    } else {
                                        fieldDeser.setValue(object, fieldValueFloat);
                                    }
                                } else if (fieldClass != Double.TYPE && fieldClass != Double.class) {
                                    fieldDeser.setValue(object, fieldValue);
                                } else if (!fieldInfo.fieldAccess || fieldClass != Double.TYPE) {
                                    fieldDeser.setValue(object, new Double(fieldValueDouble));
                                } else {
                                    fieldDeser.setValue(object, fieldValueDouble);
                                }
                            } catch (IllegalAccessException ex) {
                                throw new JSONException("set property error, " + fieldInfo.name, ex);
                            }
                        } else {
                            fieldDeser.setValue(object, fieldValue);
                        }
                        if (lexer.matchStat == 4) {
                            break;
                        }
                    } else {
                        fieldDeser.parseField(parser, object, type, fieldValues);
                    }
                    if (lexer.token == 16) {
                        continue;
                    } else if (lexer.token == 13) {
                        lexer.nextToken(16);
                        break;
                    } else if (lexer.token == 18 || lexer.token == 1) {
                        break;
                    }
                    fieldIndex++;
                    fieldValues2 = fieldValues;
                } else {
                    boolean match = parseField(parser, key, object, type, fieldValues);
                    if (match) {
                        if (lexer.token == 17) {
                            throw new JSONException("syntax error, unexpect token ':'");
                        }
                        if (lexer.token == 16) {
                        }
                        fieldIndex++;
                        fieldValues2 = fieldValues;
                    } else if (lexer.token == 13) {
                        lexer.nextToken();
                        break;
                    } else {
                        fieldIndex++;
                        fieldValues2 = fieldValues;
                    }
                }
            }
            if (object == null) {
                if (fieldValues == null) {
                    T t2 = (T) createInstance(parser, type);
                    if (childContext == null) {
                        childContext = parser.setContext(context, t2, fieldName);
                    }
                    if (childContext != null) {
                        childContext.object = t2;
                    }
                    parser.setContext(context);
                    return t2;
                }
                int size2 = this.fieldDeserializers.length;
                Object[] params = new Object[size2];
                for (int i = 0; i < size2; i++) {
                    FieldInfo fieldInfo2 = this.fieldDeserializers[i].fieldInfo;
                    params[i] = fieldValues.get(fieldInfo2.name);
                }
                if (this.beanInfo.creatorConstructor != null) {
                    try {
                        object = this.beanInfo.creatorConstructor.newInstance(params);
                    } catch (Exception e) {
                        throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e);
                    }
                } else if (this.beanInfo.factoryMethod != null) {
                    try {
                        object = this.beanInfo.factoryMethod.invoke(null, params);
                    } catch (Exception e2) {
                        throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e2);
                    }
                }
            }
            if (childContext != null) {
                childContext.object = object;
            }
            parser.setContext(context);
            return (T) object;
        } catch (Throwable th2) {
            th = th2;
            if (childContext != null) {
            }
            parser.setContext(context);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldDeserializer getFieldDeserializer(String key) {
        if (key == null) {
            return null;
        }
        if (this.beanInfo.ordered) {
            for (int i = 0; i < this.sortedFieldDeserializers.length; i++) {
                if (this.sortedFieldDeserializers[i].fieldInfo.name.equalsIgnoreCase(key)) {
                    return this.sortedFieldDeserializers[i];
                }
            }
            return null;
        }
        int low = 0;
        int high = this.sortedFieldDeserializers.length - 1;
        while (low <= high) {
            int mid = (low + high) >>> 1;
            String fieldName = this.sortedFieldDeserializers[mid].fieldInfo.name;
            int cmp = fieldName.compareTo(key);
            if (cmp < 0) {
                low = mid + 1;
            } else if (cmp <= 0) {
                return this.sortedFieldDeserializers[mid];
            } else {
                high = mid - 1;
            }
        }
        return null;
    }

    private boolean parseField(DefaultJSONParser parser, String key, Object object, Type objectType, Map<String, Object> fieldValues) {
        JSONLexer lexer = parser.lexer;
        FieldDeserializer fieldDeserializer = getFieldDeserializer(key);
        if (fieldDeserializer == null) {
            boolean startsWithIs = key.startsWith(C2354g.f992ac);
            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
            int length = fieldDeserializerArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                FieldDeserializer fieldDeser = fieldDeserializerArr[i];
                FieldInfo fieldInfo = fieldDeser.fieldInfo;
                Class<?> fieldClass = fieldInfo.fieldClass;
                String fieldName = fieldInfo.name;
                if (fieldName.equalsIgnoreCase(key)) {
                    fieldDeserializer = fieldDeser;
                    break;
                } else if (!startsWithIs || ((fieldClass != Boolean.TYPE && fieldClass != Boolean.class) || !fieldName.equalsIgnoreCase(key.substring(2)))) {
                    i++;
                } else {
                    fieldDeserializer = fieldDeser;
                    break;
                }
            }
        }
        int mask = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer == null && ((parser.lexer.features & mask) != 0 || (this.beanInfo.parserFeatures & mask) != 0)) {
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap extraFieldDeserializers = new ConcurrentHashMap(1, 0.75f, 1);
                Field[] fields = this.clazz.getDeclaredFields();
                for (Field field : fields) {
                    String fieldName2 = field.getName();
                    if (getFieldDeserializer(fieldName2) == null) {
                        int fieldModifiers = field.getModifiers();
                        if ((fieldModifiers & 16) == 0 && (fieldModifiers & 8) == 0) {
                            extraFieldDeserializers.put(fieldName2, field);
                        }
                    }
                }
                this.extraFieldDeserializers = extraFieldDeserializers;
            }
            Object deserOrField = this.extraFieldDeserializers.get(key);
            if (deserOrField != null) {
                if (deserOrField instanceof FieldDeserializer) {
                    fieldDeserializer = (FieldDeserializer) deserOrField;
                } else {
                    Field field2 = (Field) deserOrField;
                    field2.setAccessible(true);
                    fieldDeserializer = new DefaultFieldDeserializer(parser.config, this.clazz, new FieldInfo(key, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0));
                    this.extraFieldDeserializers.put(key, fieldDeserializer);
                }
            }
        }
        if (fieldDeserializer == null) {
            parseExtra(parser, object, key);
            return false;
        }
        lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
        fieldDeserializer.parseField(parser, object, objectType, fieldValues);
        return true;
    }

    void parseExtra(DefaultJSONParser parser, Object object, String key) {
        Object value;
        JSONLexer lexer = parser.lexer;
        if ((parser.lexer.features & Feature.IgnoreNotMatch.mask) == 0) {
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + key);
        }
        lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
        Type type = null;
        List<ExtraTypeProvider> extraTypeProviders = parser.extraTypeProviders;
        if (extraTypeProviders != null) {
            for (ExtraTypeProvider extraProvider : extraTypeProviders) {
                type = extraProvider.getExtraType(object, key);
            }
        }
        if (type == null) {
            value = parser.parse();
        } else {
            value = parser.parseObject(type);
        }
        if (object instanceof ExtraProcessable) {
            ExtraProcessable extraProcessable = (ExtraProcessable) object;
            extraProcessable.processExtra(key, value);
            return;
        }
        List<ExtraProcessor> extraProcessors = parser.extraProcessors;
        if (extraProcessors != null) {
            for (ExtraProcessor process : extraProcessors) {
                process.processExtra(object, key, value);
            }
        }
    }

    public Object createInstance(Map<String, Object> map, ParserConfig config) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.beanInfo.creatorConstructor == null) {
            Object object = createInstance((DefaultJSONParser) null, this.clazz);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                FieldDeserializer fieldDeser = getFieldDeserializer(entry.getKey());
                if (fieldDeser != null) {
                    Object value = entry.getValue();
                    Method method = fieldDeser.fieldInfo.method;
                    if (method != null) {
                        Type paramType = method.getGenericParameterTypes()[0];
                        method.invoke(object, TypeUtils.cast(value, paramType, config));
                    } else {
                        Field field = fieldDeser.fieldInfo.field;
                        Type paramType2 = fieldDeser.fieldInfo.fieldType;
                        field.set(object, TypeUtils.cast(value, paramType2, config));
                    }
                }
            }
            return object;
        }
        FieldInfo[] fieldInfoList = this.beanInfo.fields;
        int size = fieldInfoList.length;
        Object[] params = new Object[size];
        for (int i = 0; i < size; i++) {
            FieldInfo fieldInfo = fieldInfoList[i];
            params[i] = map.get(fieldInfo.name);
        }
        if (this.beanInfo.creatorConstructor == null) {
            return null;
        }
        try {
            return this.beanInfo.creatorConstructor.newInstance(params);
        } catch (Exception e) {
            throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e);
        }
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig config, JavaBeanInfo beanInfo, String typeName) {
        Class<?>[] seeAlso;
        if (beanInfo.jsonType == null) {
            return null;
        }
        for (Class<?> seeAlsoClass : beanInfo.jsonType.seeAlso()) {
            ObjectDeserializer seeAlsoDeser = config.getDeserializer(seeAlsoClass);
            if (seeAlsoDeser instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer seeAlsoJavaBeanDeser = (JavaBeanDeserializer) seeAlsoDeser;
                JavaBeanInfo subBeanInfo = seeAlsoJavaBeanDeser.beanInfo;
                if (!subBeanInfo.typeName.equals(typeName)) {
                    JavaBeanDeserializer subSeeAlso = getSeeAlso(config, subBeanInfo, typeName);
                    if (subSeeAlso != null) {
                        return subSeeAlso;
                    }
                } else {
                    return seeAlsoJavaBeanDeser;
                }
            }
        }
        return null;
    }
}
