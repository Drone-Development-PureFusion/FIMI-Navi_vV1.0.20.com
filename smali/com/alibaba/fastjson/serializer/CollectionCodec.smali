.class public Lcom/alibaba/fastjson/serializer/CollectionCodec;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 121
    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 122
    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 123
    const/4 v0, 0x0

    .line 191
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 126
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    const-class v8, Lcom/alibaba/fastjson/JSONArray;

    if-ne p2, v8, :cond_1

    .line 127
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 128
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    goto :goto_0

    .line 133
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    move-object v7, p2

    .line 134
    .local v7, "t":Ljava/lang/reflect/Type;
    :goto_1
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_4

    move-object v5, v7

    .line 135
    check-cast v5, Ljava/lang/Class;

    .line 145
    .local v5, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/util/AbstractCollection;

    if-eq v5, v8, :cond_2

    const-class v8, Ljava/util/Collection;

    if-ne v5, v8, :cond_6

    .line 147
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, "list":Ljava/util/Collection;
    :goto_2
    const/4 v3, 0x0

    .line 173
    .local v3, "itemType":Ljava/lang/reflect/Type;
    instance-of v8, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_d

    .line 174
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v3, v8, v10

    .line 189
    :cond_3
    :goto_3
    invoke-virtual {p1, v3, v4, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v0, v4

    .line 191
    goto :goto_0

    .line 137
    .end local v3    # "itemType":Ljava/lang/reflect/Type;
    .end local v4    # "list":Ljava/util/Collection;
    .end local v5    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_5

    .line 138
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .end local v7    # "t":Ljava/lang/reflect/Type;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "t":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 140
    :cond_5
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "TODO"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    .restart local v5    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const-class v8, Ljava/util/HashSet;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 149
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .restart local v4    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 150
    .end local v4    # "list":Ljava/util/Collection;
    :cond_7
    const-class v8, Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 151
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v4    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 152
    .end local v4    # "list":Ljava/util/Collection;
    :cond_8
    const-class v8, Ljava/util/TreeSet;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 153
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .restart local v4    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 154
    .end local v4    # "list":Ljava/util/Collection;
    :cond_9
    const-class v8, Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 156
    .end local v4    # "list":Ljava/util/Collection;
    :cond_a
    const-class v8, Ljava/util/EnumSet;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 158
    instance-of v8, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_b

    move-object v8, p2

    .line 159
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v3, v8, v10

    .line 163
    .restart local v3    # "itemType":Ljava/lang/reflect/Type;
    :goto_4
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "itemType":Ljava/lang/reflect/Type;
    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 164
    .restart local v4    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 161
    .end local v4    # "list":Ljava/util/Collection;
    :cond_b
    const-class v3, Ljava/lang/Object;

    .restart local v3    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_4

    .line 166
    .end local v3    # "itemType":Ljava/lang/reflect/Type;
    :cond_c
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "list":Ljava/util/Collection;
    goto/16 :goto_2

    .line 167
    .end local v4    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create instane error, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "itemType":Ljava/lang/reflect/Type;
    .restart local v4    # "list":Ljava/util/Collection;
    :cond_d
    const/4 v1, 0x0

    .line 177
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v8, p2, Ljava/lang/Class;

    if-eqz v8, :cond_e

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "java."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 180
    .local v6, "superClass":Ljava/lang/reflect/Type;
    instance-of v8, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_e

    .line 181
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .end local v6    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v3, v8, v10

    .line 185
    :cond_e
    if-nez v3, :cond_3

    .line 186
    const-class v3, Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 18
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
    .line 47
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 49
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 50
    iget v14, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 51
    const-string v14, "[]"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 58
    :cond_1
    const/4 v7, 0x0

    .line 59
    .local v7, "elementType":Ljava/lang/reflect/Type;
    iget v14, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_2

    .line 60
    move-object/from16 v0, p4

    instance-of v14, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_2

    move-object/from16 v13, p4

    .line 61
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 62
    .local v13, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v7, v14, v15

    .end local v13    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    move-object/from16 v5, p2

    .line 66
    check-cast v5, Ljava/util/Collection;

    .line 68
    .local v5, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 69
    .local v6, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    iget v14, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_3

    .line 72
    const-class v14, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    if-ne v14, v15, :cond_5

    .line 73
    const-string v14, "Set"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 80
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 81
    .local v8, "i":I
    const/16 v14, 0x5b

    :try_start_0
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 82
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_2
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 84
    .local v10, "item":Ljava/lang/Object;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    if-eqz v9, :cond_4

    .line 85
    const/16 v15, 0x2c

    :try_start_2
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 88
    :cond_4
    if-nez v10, :cond_6

    .line 89
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v8

    .line 90
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 74
    .end local v9    # "i":I
    .end local v10    # "item":Ljava/lang/Object;
    :cond_5
    const-class v14, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    if-ne v14, v15, :cond_3

    .line 75
    const-string v14, "TreeSet"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 93
    .restart local v8    # "i":I
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_6
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 95
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/lang/Integer;

    if-ne v4, v15, :cond_7

    .line 96
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "item":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move v9, v8

    .line 97
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 100
    .end local v9    # "i":I
    .restart local v8    # "i":I
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_7
    const-class v15, Ljava/lang/Long;

    if-ne v4, v15, :cond_8

    .line 101
    check-cast v10, Ljava/lang/Long;

    .end local v10    # "item":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 103
    iget v15, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_a

    .line 104
    const/16 v15, 0x4c

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 109
    .end local v9    # "i":I
    .restart local v8    # "i":I
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v15, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v11

    .line 110
    .local v11, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v15, v8, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v10, v15, v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v8

    .line 111
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 112
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_9
    const/16 v14, 0x5d

    :try_start_4
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :catchall_0
    move-exception v14

    :goto_3
    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v14

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catchall_1
    move-exception v14

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_3

    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2
.end method
