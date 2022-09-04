.class public Lcom/alibaba/fastjson/parser/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 16
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
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
    .line 20
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 22
    .local v15, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 23
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 24
    const/4 v10, 0x0

    .line 143
    :cond_0
    :goto_0
    return-object v10

    .line 27
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 28
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 36
    .local v4, "cause":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 38
    .local v12, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v6, p2

    .line 39
    check-cast v6, Ljava/lang/Class;

    .line 40
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v20, Ljava/lang/Throwable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 41
    move-object v12, v6

    .line 45
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/16 v16, 0x0

    .line 46
    .local v16, "message":Ljava/lang/String;
    const/16 v19, 0x0

    .line 47
    .local v19, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v18, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, "key":Ljava/lang/String;
    if-nez v14, :cond_7

    .line 54
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 55
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 97
    :goto_1
    const/4 v10, 0x0

    .line 98
    .local v10, "ex":Ljava/lang/Throwable;
    if-nez v12, :cond_f

    .line 99
    new-instance v10, Ljava/lang/Exception;

    .end local v10    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-direct {v10, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .restart local v10    # "ex":Ljava/lang/Throwable;
    :goto_2
    if-eqz v19, :cond_0

    .line 140
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    .line 30
    .end local v4    # "cause":Ljava/lang/Throwable;
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v12    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "message":Ljava/lang/String;
    .end local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_5
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 31
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 58
    .restart local v4    # "cause":Ljava/lang/Throwable;
    .restart local v12    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "message":Ljava/lang/String;
    .restart local v18    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_6
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 63
    :cond_7
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 65
    const-string v20, "@type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 66
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 67
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 68
    .local v13, "exClassName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 72
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 91
    .end local v13    # "exClassName":Ljava/lang/String;
    :goto_3
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 92
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 70
    :cond_8
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 73
    :cond_9
    const-string v20, "message"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 74
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 75
    const/16 v16, 0x0

    .line 81
    :goto_4
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 76
    :cond_a
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 77
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 79
    :cond_b
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 82
    :cond_c
    const-string v20, "cause"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 83
    const/16 v20, 0x0

    const-string v21, "cause"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cause":Ljava/lang/Throwable;
    check-cast v4, Ljava/lang/Throwable;

    .restart local v4    # "cause":Ljava/lang/Throwable;
    goto :goto_3

    .line 84
    :cond_d
    const-string v20, "stackTrace"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 85
    const-class v20, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    check-cast v19, [Ljava/lang/StackTraceElement;

    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    goto/16 :goto_3

    .line 88
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 102
    .restart local v10    # "ex":Ljava/lang/Throwable;
    :cond_f
    const/4 v8, 0x0

    .line 103
    .local v8, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v17, 0x0

    .line 104
    .local v17, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 105
    .local v5, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    aget-object v7, v21, v20

    .line 106
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_11

    .line 107
    move-object v8, v7

    .line 105
    :cond_10
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 111
    :cond_11
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 112
    move-object/from16 v17, v7

    .line 113
    goto :goto_6

    .line 116
    :cond_12
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 117
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/Throwable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 118
    move-object v5, v7

    .line 119
    goto :goto_6

    .line 123
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_13
    if-eqz v5, :cond_14

    .line 124
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v10

    .line 131
    .end local v10    # "ex":Ljava/lang/Throwable;
    .local v11, "ex":Ljava/lang/Throwable;
    :goto_7
    if-nez v11, :cond_16

    .line 132
    :try_start_1
    new-instance v10, Ljava/lang/Exception;

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 125
    :cond_14
    if-eqz v17, :cond_15

    .line 126
    const/16 v20, 0x1

    :try_start_2
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0

    move-object v11, v10

    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto :goto_7

    .line 127
    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "ex":Ljava/lang/Throwable;
    :cond_15
    if-eqz v8, :cond_17

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto :goto_7

    .line 134
    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v9

    .line 135
    .local v9, "e":Ljava/lang/Exception;
    :goto_8
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string v21, "create instance error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 134
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    move-object v10, v11

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto :goto_8

    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :cond_16
    move-object v10, v11

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_2

    :cond_17
    move-object v11, v10

    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto :goto_7
.end method
