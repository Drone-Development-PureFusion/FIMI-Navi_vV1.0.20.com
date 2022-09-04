package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ListTypeFieldDeserializer extends FieldDeserializer {
    private final boolean array;
    private ObjectDeserializer deserializer;
    private final Type itemType;

    public ListTypeFieldDeserializer(ParserConfig mapping, Class<?> clazz, FieldInfo fieldInfo) {
        super(clazz, fieldInfo, 14);
        Type fieldType = fieldInfo.fieldType;
        Class<?> fieldClass = fieldInfo.fieldClass;
        if (fieldType instanceof ParameterizedType) {
            this.itemType = ((ParameterizedType) fieldType).getActualTypeArguments()[0];
            this.array = false;
        } else if (fieldClass.isArray()) {
            this.itemType = fieldClass.getComponentType();
            this.array = true;
        } else {
            this.itemType = Object.class;
            this.array = false;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public void parseField(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> fieldValues) {
        List list;
        Object obj;
        if (parser.lexer.token == 8) {
            setValue(object, (Object) null);
            parser.lexer.nextToken();
            return;
        }
        JSONArray jsonArray = null;
        if (this.array) {
            jsonArray = new JSONArray();
            list = jsonArray;
            jsonArray.setComponentType(this.itemType);
        } else {
            list = new ArrayList();
        }
        ParseContext context = parser.contex;
        parser.setContext(context, object, this.fieldInfo.name);
        parseArray(parser, objectType, list);
        parser.setContext(context);
        if (this.array) {
            Object[] arrayValue = (Object[]) Array.newInstance((Class) this.itemType, list.size());
            obj = list.toArray(arrayValue);
            jsonArray.setRelatedArray(obj);
        } else {
            obj = list;
        }
        if (object == null) {
            fieldValues.put(this.fieldInfo.name, obj);
        } else {
            setValue(object, obj);
        }
    }

    final void parseArray(DefaultJSONParser parser, Type objectType, Collection array) {
        Type itemType = this.itemType;
        ObjectDeserializer itemTypeDeser = this.deserializer;
        if (objectType instanceof ParameterizedType) {
            if (itemType instanceof TypeVariable) {
                TypeVariable typeVar = (TypeVariable) itemType;
                ParameterizedType paramType = (ParameterizedType) objectType;
                Class<?> objectClass = null;
                if (paramType.getRawType() instanceof Class) {
                    objectClass = (Class) paramType.getRawType();
                }
                int paramIndex = -1;
                if (objectClass != null) {
                    int i = 0;
                    int size = objectClass.getTypeParameters().length;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        TypeVariable item = objectClass.getTypeParameters()[i];
                        if (!item.getName().equals(typeVar.getName())) {
                            i++;
                        } else {
                            paramIndex = i;
                            break;
                        }
                    }
                }
                if (paramIndex != -1) {
                    itemType = paramType.getActualTypeArguments()[paramIndex];
                    if (!itemType.equals(this.itemType)) {
                        itemTypeDeser = parser.config.getDeserializer(itemType);
                    }
                }
            } else if (itemType instanceof ParameterizedType) {
                ParameterizedType parameterizedItemType = (ParameterizedType) itemType;
                Type[] itemActualTypeArgs = parameterizedItemType.getActualTypeArguments();
                if (itemActualTypeArgs.length == 1 && (itemActualTypeArgs[0] instanceof TypeVariable)) {
                    TypeVariable typeVar2 = (TypeVariable) itemActualTypeArgs[0];
                    ParameterizedType paramType2 = (ParameterizedType) objectType;
                    Class<?> objectClass2 = null;
                    if (paramType2.getRawType() instanceof Class) {
                        objectClass2 = (Class) paramType2.getRawType();
                    }
                    int paramIndex2 = -1;
                    if (objectClass2 != null) {
                        int i2 = 0;
                        int size2 = objectClass2.getTypeParameters().length;
                        while (true) {
                            if (i2 >= size2) {
                                break;
                            }
                            TypeVariable item2 = objectClass2.getTypeParameters()[i2];
                            if (!item2.getName().equals(typeVar2.getName())) {
                                i2++;
                            } else {
                                paramIndex2 = i2;
                                break;
                            }
                        }
                    }
                    if (paramIndex2 != -1) {
                        itemActualTypeArgs[0] = paramType2.getActualTypeArguments()[paramIndex2];
                        itemType = new ParameterizedTypeImpl(itemActualTypeArgs, parameterizedItemType.getOwnerType(), parameterizedItemType.getRawType());
                    }
                }
            }
        }
        JSONLexer lexer = parser.lexer;
        if (itemTypeDeser == null) {
            itemTypeDeser = parser.config.getDeserializer(itemType);
            this.deserializer = itemTypeDeser;
        }
        if (lexer.token != 14) {
            if (lexer.token == 12) {
                Object val = itemTypeDeser.deserialze(parser, itemType, 0);
                array.add(val);
                return;
            }
            String errorMessage = "exepct '[', but " + JSONToken.name(lexer.token);
            if (objectType != null) {
                errorMessage = errorMessage + ", type : " + objectType;
            }
            throw new JSONException(errorMessage);
        }
        int ch2 = lexer.f57ch;
        if (ch2 == 91) {
            int index = lexer.f56bp + 1;
            lexer.f56bp = index;
            lexer.f57ch = index >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index);
            lexer.token = 14;
        } else if (ch2 == 123) {
            int index2 = lexer.f56bp + 1;
            lexer.f56bp = index2;
            lexer.f57ch = index2 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index2);
            lexer.token = 12;
        } else if (ch2 == 34) {
            lexer.scanString();
        } else if (ch2 == 93) {
            int index3 = lexer.f56bp + 1;
            lexer.f56bp = index3;
            lexer.f57ch = index3 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index3);
            lexer.token = 15;
        } else {
            lexer.nextToken();
        }
        int i3 = 0;
        while (true) {
            if (lexer.token == 16) {
                lexer.nextToken();
            } else if (lexer.token == 15) {
                break;
            } else {
                Object val2 = itemTypeDeser.deserialze(parser, itemType, Integer.valueOf(i3));
                array.add(val2);
                if (parser.resolveStatus == 1) {
                    parser.checkListResolve(array);
                }
                if (lexer.token == 16) {
                    int ch3 = lexer.f57ch;
                    if (ch3 == 91) {
                        int index4 = lexer.f56bp + 1;
                        lexer.f56bp = index4;
                        lexer.f57ch = index4 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index4);
                        lexer.token = 14;
                    } else if (ch3 == 123) {
                        int index5 = lexer.f56bp + 1;
                        lexer.f56bp = index5;
                        lexer.f57ch = index5 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index5);
                        lexer.token = 12;
                    } else if (ch3 == 34) {
                        lexer.scanString();
                    } else {
                        lexer.nextToken();
                    }
                }
                i3++;
            }
        }
        if (lexer.f57ch == ',') {
            int index6 = lexer.f56bp + 1;
            lexer.f56bp = index6;
            lexer.f57ch = index6 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index6);
            lexer.token = 16;
            return;
        }
        lexer.nextToken();
    }
}
