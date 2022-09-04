.class public final Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
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
    .line 35
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 37
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 38
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 158
    :goto_0
    return-void

    :cond_0
    move-object/from16 v10, p2

    .line 42
    check-cast v10, Ljava/util/Map;

    .line 43
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 44
    .local v12, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v19, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_1

    const-class v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_1

    const-class v19, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_3

    :cond_1
    const-string v19, "@type"

    .line 45
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v5, 0x1

    .line 47
    .local v5, "containsKey":Z
    :goto_1
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 48
    instance-of v0, v10, Ljava/util/SortedMap;

    move/from16 v19, v0

    if-nez v19, :cond_2

    instance-of v0, v10, Ljava/util/LinkedHashMap;

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 50
    :try_start_0
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v10, v11

    .line 57
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 58
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    .end local v5    # "containsKey":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 62
    .restart local v5    # "containsKey":Z
    :cond_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 63
    .local v14, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 65
    const/16 v19, 0x7b

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 69
    const/4 v15, 0x0

    .line 70
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v16, 0x0

    .line 72
    .local v16, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v8, 0x1

    .line 74
    .local v8, "first":Z
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    .line 75
    if-nez v5, :cond_5

    .line 76
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 78
    const/4 v8, 0x0

    .line 82
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 83
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 85
    .local v18, "value":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 87
    .local v7, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->applyName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v7, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 98
    if-nez v18, :cond_7

    .line 99
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_6

    .line 104
    :cond_7
    instance-of v0, v7, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 105
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 107
    .local v9, "key":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 108
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    :cond_8
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 114
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 131
    .end local v9    # "key":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    .line 133
    if-nez v18, :cond_e

    .line 134
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 150
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entryKey":Ljava/lang/Object;
    .end local v8    # "first":Z
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v19

    .line 116
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entryKey":Ljava/lang/Object;
    .restart local v8    # "first":Z
    .restart local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_a
    if-nez v8, :cond_b

    .line 117
    const/16 v20, 0x2c

    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 120
    :cond_b
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-nez v20, :cond_c

    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_d

    .line 122
    :cond_c
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 128
    .end local v17    # "strEntryKey":Ljava/lang/String;
    :goto_5
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 125
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_5

    .line 138
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 140
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v15, :cond_f

    .line 141
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_3

    .line 143
    :cond_f
    move-object v15, v4

    .line 144
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v16

    .line 146
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 150
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entryKey":Ljava/lang/Object;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 154
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_11

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_11

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 157
    :cond_11
    const/16 v19, 0x7d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 51
    .end local v8    # "first":Z
    .end local v14    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v19

    goto/16 :goto_2
.end method
