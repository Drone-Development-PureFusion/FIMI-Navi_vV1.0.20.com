.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 23
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 35
    .local v14, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_1

    const/16 v17, 0x1

    .line 37
    .local v17, "writeClassName":Z
    :goto_0
    const/4 v6, 0x0

    .line 38
    .local v6, "elementType":Ljava/lang/reflect/Type;
    if-eqz v17, :cond_0

    .line 39
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v15, p4

    .line 40
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 41
    .local v15, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v6, v20, v21

    .line 45
    .end local v15    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    if-nez p2, :cond_3

    .line 46
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_2

    .line 47
    const-string v20, "[]"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 193
    :goto_1
    return-void

    .line 35
    .end local v6    # "elementType":Ljava/lang/reflect/Type;
    .end local v17    # "writeClassName":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 49
    .restart local v6    # "elementType":Ljava/lang/reflect/Type;
    .restart local v17    # "writeClassName":Z
    :cond_2
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    .line 54
    check-cast v12, Ljava/util/List;

    .line 55
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    .line 57
    .local v16, "size":I
    if-nez v16, :cond_4

    .line 58
    const-string v20, "[]"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 62
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 64
    .local v5, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-nez v20, :cond_6

    .line 65
    new-instance v20, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 66
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 67
    new-instance v20, Ljava/util/IdentityHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 69
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_6
    const/4 v10, 0x0

    .line 74
    .local v10, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_b

    .line 75
    const/16 v20, 0x5b

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 78
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v7, v0, :cond_a

    .line 79
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 80
    .local v8, "item":Ljava/lang/Object;
    if-eqz v7, :cond_7

    .line 81
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 85
    if-eqz v8, :cond_9

    .line 86
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 78
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 89
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .line 90
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-direct {v9, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 91
    .local v9, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v8, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 191
    .end local v7    # "i":I
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_0
    move-exception v20

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v20

    .line 95
    .restart local v7    # "i":I
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    .line 99
    .end local v8    # "item":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 101
    const/16 v20, 0x5d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    .line 107
    .end local v7    # "i":I
    :cond_b
    :try_start_2
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v13, v20, 0x1

    .line 108
    .local v13, "newcount":I
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v13, v0, :cond_c

    .line 109
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 110
    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 116
    :cond_c
    :goto_4
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    const/16 v22, 0x5b

    aput-char v22, v20, v21

    .line 117
    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 119
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_19

    .line 120
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 121
    .restart local v8    # "item":Ljava/lang/Object;
    if-eqz v7, :cond_e

    .line 124
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v13, v20, 0x1

    .line 125
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v13, v0, :cond_d

    .line 126
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v20, v0

    if-nez v20, :cond_10

    .line 127
    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 133
    :cond_d
    :goto_6
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    const/16 v22, 0x2c

    aput-char v22, v20, v21

    .line 134
    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 138
    :cond_e
    if-nez v8, :cond_11

    .line 139
    const-string v20, "null"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 119
    .end local v8    # "item":Ljava/lang/Object;
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 112
    .end local v7    # "i":I
    :cond_f
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 113
    const/4 v13, 0x1

    goto :goto_4

    .line 129
    .restart local v7    # "i":I
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 130
    const/4 v13, 0x1

    goto :goto_6

    .line 141
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_12

    .line 144
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_7

    .line 145
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_12
    const-class v20, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_14

    .line 146
    check-cast v8, Ljava/lang/Long;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 147
    .local v18, "val":J
    if-eqz v17, :cond_13

    .line 148
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 149
    const/16 v20, 0x4c

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 151
    :cond_13
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_7

    .line 153
    .end local v18    # "val":J
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_14
    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_16

    .line 154
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 156
    .local v11, "itemStr":Ljava/lang/String;
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_15

    .line 157
    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_7

    .line 159
    :cond_15
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v11, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_7

    .line 162
    .end local v11    # "itemStr":Ljava/lang/String;
    :cond_16
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-nez v20, :cond_17

    .line 163
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-direct {v9, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 164
    .restart local v9    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 167
    .end local v9    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 168
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 170
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v8, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_7

    .line 178
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "item":Ljava/lang/Object;
    :cond_19
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v13, v20, 0x1

    .line 179
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v13, v0, :cond_1a

    .line 180
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v20, v0

    if-nez v20, :cond_1b

    .line 181
    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 187
    :cond_1a
    :goto_8
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    const/16 v22, 0x5d

    aput-char v22, v20, v21

    .line 188
    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    .line 183
    :cond_1b
    :try_start_3
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    const/4 v13, 0x1

    goto :goto_8
.end method
