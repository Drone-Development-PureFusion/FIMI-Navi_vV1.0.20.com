.class Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ListTypeFieldDeserializer.java"


# instance fields
.field private final array:Z

.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 4
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 26
    const/16 v2, 0xe

    invoke-direct {p0, p2, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    .line 28
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 29
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 30
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 31
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 32
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    .line 40
    :goto_0
    return-void

    .line 33
    .restart local v1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 35
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    goto :goto_0

    .line 37
    :cond_1
    const-class v2, Ljava/lang/Object;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 38
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    goto :goto_0
.end method


# virtual methods
.method final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 20
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 85
    .local v8, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 87
    .local v9, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 88
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v16, v8

    .line 89
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v13, p2

    .line 90
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 92
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 93
    .local v11, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 94
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v11, Ljava/lang/Class;

    .line 97
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v12, -0x1

    .line 98
    .local v12, "paramIndex":I
    if-eqz v11, :cond_1

    .line 99
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    .local v15, "size":I
    :goto_0
    if-ge v4, v15, :cond_1

    .line 100
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    .line 101
    .local v6, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 102
    move v12, v4

    .line 108
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v15    # "size":I
    :cond_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 109
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object v8, v18, v12

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 146
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 148
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    if-nez v9, :cond_3

    .line 149
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .end local v9    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 152
    .restart local v9    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 153
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 154
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 155
    .local v17, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v17    # "val":Ljava/lang/Object;
    :goto_2
    return-void

    .line 99
    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "paramIndex":I
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v15    # "size":I
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 114
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "size":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_5
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object v14, v8

    .line 115
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 116
    .local v14, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 117
    .local v7, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x0

    aget-object v18, v7, v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 118
    const/16 v18, 0x0

    aget-object v16, v7, v18

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v13, p2

    .line 119
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 121
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 122
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 123
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v11, Ljava/lang/Class;

    .line 126
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const/4 v12, -0x1

    .line 127
    .restart local v12    # "paramIndex":I
    if-eqz v11, :cond_7

    .line 128
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    .restart local v15    # "size":I
    :goto_3
    if-ge v4, v15, :cond_7

    .line 129
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    .line 130
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 131
    move v12, v4

    .line 138
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v15    # "size":I
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 139
    const/16 v18, 0x0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    aget-object v19, v19, v12

    aput-object v19, v7, v18

    .line 140
    new-instance v8, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local v8    # "itemType":Ljava/lang/reflect/Type;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v7, v0, v1}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local v8    # "itemType":Ljava/lang/reflect/Type;
    goto/16 :goto_1

    .line 128
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v15    # "size":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 158
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "size":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exepct \'[\', but "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_a

    .line 160
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", type : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    :cond_a
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 166
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_b
    iget-char v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 167
    .local v2, "ch":I
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 168
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 169
    .local v5, "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_c

    const/16 v18, 0x1a

    .line 171
    :goto_4
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 172
    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 191
    .end local v5    # "index":I
    :goto_5
    const/4 v4, 0x0

    .line 192
    .restart local v4    # "i":I
    :goto_6
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 193
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_6

    .line 169
    .end local v4    # "i":I
    .restart local v5    # "index":I
    :cond_c
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 171
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_4

    .line 173
    .end local v5    # "index":I
    :cond_d
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    .line 174
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 175
    .restart local v5    # "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_e

    const/16 v18, 0x1a

    .line 177
    :goto_7
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 178
    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 175
    :cond_e
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 177
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_7

    .line 179
    .end local v5    # "index":I
    :cond_f
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    .line 180
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_5

    .line 181
    :cond_10
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 182
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 183
    .restart local v5    # "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_11

    const/16 v18, 0x1a

    .line 185
    :goto_8
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 186
    const/16 v18, 0xf

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 183
    :cond_11
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 185
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_8

    .line 188
    .end local v5    # "index":I
    :cond_12
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_5

    .line 197
    .restart local v4    # "i":I
    :cond_13
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 231
    iget-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 232
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 233
    .restart local v5    # "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_1c

    const/16 v18, 0x1a

    .line 235
    :goto_9
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 236
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    .line 201
    .end local v5    # "index":I
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 202
    .restart local v17    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 208
    :cond_15
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 209
    iget-char v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 210
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    .line 211
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 212
    .restart local v5    # "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_17

    const/16 v18, 0x1a

    .line 214
    :goto_a
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 215
    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 191
    .end local v5    # "index":I
    :cond_16
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 212
    .restart local v5    # "index":I
    :cond_17
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_a

    .line 216
    .end local v5    # "index":I
    :cond_18
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    .line 217
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 218
    .restart local v5    # "index":I
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_19

    const/16 v18, 0x1a

    .line 220
    :goto_c
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 221
    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    .line 218
    :cond_19
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 220
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_c

    .line 222
    .end local v5    # "index":I
    :cond_1a
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_1b

    .line 223
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_b

    .line 225
    :cond_1b
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_b

    .line 233
    .end local v17    # "val":Ljava/lang/Object;
    .restart local v5    # "index":I
    :cond_1c
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 235
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto/16 :goto_9

    .line 238
    .end local v5    # "index":I
    :cond_1d
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 46
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 80
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 53
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-boolean v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v5, :cond_1

    .line 54
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .restart local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v3

    .line 55
    .local v4, "list":Ljava/util/List;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 60
    :goto_1
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 62
    .local v1, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 63
    invoke-virtual {p0, p1, p3, v4}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 64
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 67
    iget-boolean v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v5, :cond_2

    .line 68
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 69
    .local v0, "arrayValue":[Ljava/lang/Object;
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "fieldValue":[Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 75
    .end local v0    # "arrayValue":[Ljava/lang/Object;
    .end local v2    # "fieldValue":[Ljava/lang/Object;
    :goto_2
    if-nez p2, :cond_3

    .line 76
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v1    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v4    # "list":Ljava/util/List;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "list":Ljava/util/List;
    goto :goto_1

    .line 72
    .restart local v1    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    move-object v2, v4

    .local v2, "fieldValue":Ljava/util/List;
    goto :goto_2

    .line 78
    .end local v2    # "fieldValue":Ljava/util/List;
    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
