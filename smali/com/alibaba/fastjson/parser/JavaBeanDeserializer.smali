.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 5
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 36
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 38
    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 40
    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 41
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 43
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 47
    const/4 v2, 0x0

    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    :goto_1
    if-ge v2, v3, :cond_1

    .line 48
    iget-object v4, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 49
    .restart local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 50
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 50
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 320
    const-class v4, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 321
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v39, p4

    .line 758
    .end local p4    # "object":Ljava/lang/Object;
    .local v39, "object":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 324
    .end local v39    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v36, v0

    .line 326
    .local v36, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v46, v0

    .line 327
    .local v46, "token":I
    const/16 v4, 0x8

    move/from16 v0, v46

    if-ne v0, v4, :cond_2

    .line 328
    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    const/4 v4, 0x0

    move-object/from16 v39, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 332
    .end local v39    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, v36

    iget-boolean v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 334
    .local v14, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 335
    .local v12, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz p4, :cond_3

    if-eqz v12, :cond_3

    .line 336
    iget-object v12, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 338
    :cond_3
    const/4 v11, 0x0

    .line 341
    .local v11, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v9, 0x0

    .line 343
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v46

    if-ne v0, v4, :cond_6

    .line 344
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 345
    if-nez p4, :cond_4

    .line 346
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 760
    :cond_4
    if-eqz v11, :cond_5

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    move-object/from16 v4, p4

    .line 348
    goto :goto_0

    .line 351
    .end local v39    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v46

    if-ne v0, v4, :cond_a

    .line 352
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v4, :cond_7

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    :cond_7
    const/16 v35, 0x1

    .line 354
    .local v35, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v35, :cond_a

    .line 355
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 760
    if-eqz v11, :cond_8

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .line 355
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 352
    .end local v35    # "isSupportArrayToBean":Z
    .end local v39    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_9
    const/16 v35, 0x0

    goto :goto_1

    .line 359
    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v46

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, v46

    if-eq v0, v4, :cond_11

    .line 360
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 361
    const/4 v4, 0x0

    .line 760
    if-eqz v11, :cond_b

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .line 361
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 364
    .end local v39    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v46

    if-ne v0, v4, :cond_e

    .line 365
    :try_start_3
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v45

    .line 366
    .local v45, "strVal":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 367
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    const/4 v4, 0x0

    .line 760
    if-eqz v11, :cond_d

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .line 368
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 372
    .end local v39    # "object":Ljava/lang/Object;
    .end local v45    # "strVal":Ljava/lang/String;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_e
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    .line 373
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 374
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 376
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 377
    const-string v4, ", fieldName "

    .line 378
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 379
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 382
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 760
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v11, :cond_10

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    .line 385
    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 386
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 389
    :cond_12
    const/16 v24, 0x0

    .local v24, "fieldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v44, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v44, "size":I
    move-object/from16 v31, v9

    .line 390
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3
    const/4 v6, 0x0

    .line 391
    .local v6, "key":Ljava/lang/String;
    const/16 v21, 0x0

    .line 392
    .local v21, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v25, 0x0

    .line 393
    .local v25, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v20, 0x0

    .line 394
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_13

    .line 395
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v21, v4, v24

    .line 396
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    .line 397
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 400
    :cond_13
    const/16 v38, 0x0

    .line 401
    .local v38, "matchField":Z
    const/16 v49, 0x0

    .line 403
    .local v49, "valueParsed":Z
    const/16 v26, 0x0

    .line 404
    .local v26, "fieldValue":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 405
    .local v30, "fieldValueInt":I
    const-wide/16 v32, 0x0

    .line 406
    .local v32, "fieldValueLong":J
    const/16 v27, 0x0

    .line 407
    .local v27, "fieldValueFloat":F
    const-wide/16 v28, 0x0

    .line 408
    .local v28, "fieldValueDouble":D
    if-eqz v21, :cond_15

    .line 409
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-wide/from16 v22, v0

    .line 410
    .local v22, "fieldHashCode":J
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_14

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1a

    .line 412
    :cond_14
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v30

    .line 414
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_18

    .line 415
    const/16 v38, 0x1

    .line 416
    const/16 v49, 0x1

    .line 535
    .end local v22    # "fieldHashCode":J
    .end local v26    # "fieldValue":Ljava/lang/Object;
    :cond_15
    :goto_4
    if-nez v38, :cond_47

    .line 536
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 538
    if-nez v6, :cond_36

    .line 539
    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v46, v0

    .line 540
    const/16 v4, 0xd

    move/from16 v0, v46

    if-ne v0, v4, :cond_35

    .line 541
    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v31

    .line 726
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    if-nez p4, :cond_67

    .line 727
    if-nez v9, :cond_65

    .line 728
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 729
    if-nez v11, :cond_16

    .line 730
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 760
    :cond_16
    if-eqz v11, :cond_17

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    move-object/from16 v4, p4

    .line 732
    goto/16 :goto_0

    .line 417
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v39    # "object":Ljava/lang/Object;
    .restart local v22    # "fieldHashCode":J
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_18
    :try_start_8
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 389
    .end local v22    # "fieldHashCode":J
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_19
    :goto_6
    add-int/lit8 v24, v24, 0x1

    move-object/from16 v31, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 420
    .restart local v22    # "fieldHashCode":J
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    :cond_1a
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1b

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1d

    .line 422
    :cond_1b
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v32

    .line 424
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1c

    .line 425
    const/16 v38, 0x1

    .line 426
    const/16 v49, 0x1

    goto :goto_4

    .line 427
    :cond_1c
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 428
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 430
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1d
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1f

    .line 432
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v26

    .line 434
    .local v26, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1e

    .line 435
    const/16 v38, 0x1

    .line 436
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 437
    :cond_1e
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 438
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 440
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_20

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_22

    .line 442
    :cond_20
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 444
    .local v26, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_21

    .line 445
    const/16 v38, 0x1

    .line 446
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 447
    :cond_21
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 448
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 450
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_23

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_25

    .line 451
    :cond_23
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v27

    .line 453
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_24

    .line 454
    const/16 v38, 0x1

    .line 455
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 456
    :cond_24
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 457
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 459
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_26

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_28

    .line 460
    :cond_26
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v28

    .line 462
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_27

    .line 463
    const/16 v38, 0x1

    .line 464
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 465
    :cond_27
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 466
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 468
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_28
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v4, :cond_2a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v4, :cond_2a

    .line 473
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v16

    .line 475
    .local v16, "enumNameHashCode":J
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_29

    .line 476
    const/16 v38, 0x1

    .line 477
    const/16 v49, 0x1

    .line 479
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v26

    .local v26, "fieldValue":Ljava/lang/Enum;
    goto/16 :goto_4

    .line 480
    .local v26, "fieldValue":Ljava/lang/Object;
    :cond_29
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 481
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 483
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "enumNameHashCode":J
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2a
    const-class v4, [I

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2c

    .line 484
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v26

    .line 486
    .local v26, "fieldValue":[I
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2b

    .line 487
    const/16 v38, 0x1

    .line 488
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 489
    :cond_2b
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 490
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 492
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2c
    const-class v4, [F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2e

    .line 493
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v26

    .line 495
    .local v26, "fieldValue":[F
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2d

    .line 496
    const/16 v38, 0x1

    .line 497
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 498
    :cond_2d
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 499
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 501
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2e
    const-class v4, [D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_30

    .line 502
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v26

    .line 504
    .local v26, "fieldValue":[D
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2f

    .line 505
    const/16 v38, 0x1

    .line 506
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 507
    :cond_2f
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 508
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 510
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_30
    const-class v4, [[F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_32

    .line 511
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v26

    .line 513
    .local v26, "fieldValue":[[F
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_31

    .line 514
    const/16 v38, 0x1

    .line 515
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 516
    :cond_31
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 517
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 519
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_32
    const-class v4, [[D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_34

    .line 520
    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v26

    .line 522
    .local v26, "fieldValue":[[D
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_33

    .line 523
    const/16 v38, 0x1

    .line 524
    const/16 v49, 0x1

    goto/16 :goto_4

    .line 525
    :cond_33
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v31

    .line 526
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 528
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_34
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 529
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 544
    .end local v22    # "fieldHashCode":J
    .end local v26    # "fieldValue":Ljava/lang/Object;
    :cond_35
    const/16 v4, 0x10

    move/from16 v0, v46

    if-ne v0, v4, :cond_36

    move-object/from16 v9, v31

    .line 545
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 549
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_36
    const-string v4, "$ref"

    if-ne v4, v6, :cond_40

    .line 550
    const/16 v4, 0x3a

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 551
    move-object/from16 v0, v36

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v46, v0

    .line 552
    const/4 v4, 0x4

    move/from16 v0, v46

    if-ne v0, v4, :cond_3d

    .line 553
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v42

    .line 554
    .local v42, "ref":Ljava/lang/String;
    const-string v4, "@"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 555
    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 584
    :goto_7
    const/16 v4, 0xd

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 585
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3e

    .line 586
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    .end local v27    # "fieldValueFloat":F
    .end local v28    # "fieldValueDouble":D
    .end local v30    # "fieldValueInt":I
    .end local v32    # "fieldValueLong":J
    .end local v38    # "matchField":Z
    .end local v42    # "ref":Ljava/lang/String;
    .end local v49    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v31

    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 556
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v27    # "fieldValueFloat":F
    .restart local v28    # "fieldValueDouble":D
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v32    # "fieldValueLong":J
    .restart local v38    # "matchField":Z
    .restart local v42    # "ref":Ljava/lang/String;
    .restart local v49    # "valueParsed":Z
    :cond_37
    const-string v4, ".."

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 557
    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v41, v0

    .line 558
    .local v41, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_38

    .line 559
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 561
    :cond_38
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 562
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_7

    .line 564
    .end local v41    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_39
    const-string v4, "$"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 565
    move-object/from16 v43, v12

    .line 566
    .local v43, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_8
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_3a

    .line 567
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v43, v0

    goto :goto_8

    .line 570
    :cond_3a
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_3b

    .line 571
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 573
    :cond_3b
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 574
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 577
    .end local v43    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3c
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v42

    invoke-direct {v4, v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 578
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 581
    .end local v42    # "ref":Ljava/lang/String;
    :cond_3d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v46 .. v46}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    .restart local v42    # "ref":Ljava/lang/String;
    :cond_3e
    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 590
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 760
    if-eqz v11, :cond_3f

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_3f
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    move-object/from16 v4, p4

    .line 592
    goto/16 :goto_0

    .line 595
    .end local v39    # "object":Ljava/lang/Object;
    .end local v42    # "ref":Ljava/lang/String;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_40
    :try_start_9
    const-string v4, "@type"

    if-ne v4, v6, :cond_47

    .line 596
    const/16 v4, 0x3a

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 597
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_46

    .line 598
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v47

    .line 599
    .local v47, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 601
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_41

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 602
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6c

    .line 603
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v9, v31

    .line 604
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 609
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_41
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v5, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v13

    .line 610
    .local v13, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v48, 0x0

    .line 611
    .local v48, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_43

    .line 612
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v48

    .line 614
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 615
    .local v19, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v19, :cond_42

    if-eqz v48, :cond_45

    .line 616
    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 617
    :cond_42
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    .line 623
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v4

    .line 760
    if-eqz v11, :cond_44

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_44
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .line 623
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 619
    .end local v39    # "object":Ljava/lang/Object;
    .restart local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_45
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 625
    .end local v13    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v47    # "typeName":Ljava/lang/String;
    .end local v48    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_46
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_47
    if-nez p4, :cond_6b

    if-nez v31, :cond_6b

    .line 631
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 632
    if-nez p4, :cond_6a

    .line 633
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 635
    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_9
    if-nez v14, :cond_48

    .line 636
    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    .line 640
    :cond_48
    :goto_a
    if-eqz v38, :cond_61

    .line 641
    if-nez v49, :cond_4a

    .line 642
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 708
    :cond_49
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_19

    .line 712
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_63

    .line 713
    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_5

    .line 644
    :cond_4a
    if-nez p4, :cond_53

    .line 645
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_4b

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_4d

    .line 646
    :cond_4b
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 654
    :cond_4c
    :goto_b
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_c
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_49

    goto/16 :goto_5

    .line 647
    :cond_4d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_4e

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_4f

    .line 648
    :cond_4e
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .local v26, "fieldValue":Ljava/lang/Long;
    goto :goto_b

    .line 649
    .end local v26    # "fieldValue":Ljava/lang/Long;
    :cond_4f
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_50

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_51

    .line 650
    :cond_50
    new-instance v26, Ljava/lang/Float;

    invoke-direct/range {v26 .. v27}, Ljava/lang/Float;-><init>(F)V

    .local v26, "fieldValue":Ljava/lang/Float;
    goto :goto_b

    .line 651
    .end local v26    # "fieldValue":Ljava/lang/Float;
    :cond_51
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_52

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_4c

    .line 652
    :cond_52
    new-instance v26, Ljava/lang/Double;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .local v26, "fieldValue":Ljava/lang/Double;
    goto :goto_b

    .line 655
    .end local v26    # "fieldValue":Ljava/lang/Double;
    :cond_53
    if-nez v26, :cond_60

    .line 657
    :try_start_c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_54

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_56

    .line 658
    :cond_54
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_55

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_55

    .line 659
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_c

    .line 684
    :catch_0
    move-exception v18

    .line 685
    .local v18, "ex":Ljava/lang/IllegalAccessException;
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set property error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 661
    .end local v18    # "ex":Ljava/lang/IllegalAccessException;
    :cond_55
    :try_start_e
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 663
    :cond_56
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_57

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_59

    .line 664
    :cond_57
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_58

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_58

    .line 665
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_c

    .line 667
    :cond_58
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 669
    :cond_59
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5a

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5c

    .line 670
    :cond_5a
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_5b

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5b

    .line 671
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto/16 :goto_c

    .line 673
    :cond_5b
    new-instance v4, Ljava/lang/Float;

    move/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 675
    :cond_5c
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5d

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5f

    .line 676
    :cond_5d
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_5e

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5e

    .line 677
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_c

    .line 679
    :cond_5e
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v28

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 682
    :cond_5f
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_c

    .line 688
    :cond_60
    :try_start_f
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_61
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 695
    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v37

    .line 696
    .local v37, "match":Z
    if-nez v37, :cond_62

    .line 697
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_19

    .line 698
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_5

    .line 703
    :cond_62
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_49

    .line 704
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 717
    .end local v37    # "match":Z
    :cond_63
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_64

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 718
    :cond_64
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v44, v0

    .line 736
    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    .line 737
    .local v40, "params":[Ljava/lang/Object;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_d
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_66

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v34

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    .line 739
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v40, v34

    .line 737
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 742
    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v4, :cond_69

    .line 744
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object p4

    .line 760
    .end local v34    # "i":I
    .end local v40    # "params":[Ljava/lang/Object;
    :cond_67
    :goto_e
    if-eqz v11, :cond_68

    .line 761
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 763
    :cond_68
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v39, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v39    # "object":Ljava/lang/Object;
    move-object/from16 v4, p4

    .line 758
    goto/16 :goto_0

    .line 745
    .end local v39    # "object":Ljava/lang/Object;
    .restart local v34    # "i":I
    .restart local v40    # "params":[Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v15

    .line 746
    .local v15, "e":Ljava/lang/Exception;
    :try_start_11
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 747
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 749
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_67

    .line 751
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object p4

    goto :goto_e

    .line 752
    :catch_2
    move-exception v15

    .line 753
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v34    # "i":I
    .end local v40    # "params":[Ljava/lang/Object;
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6a
    move-object/from16 v9, v31

    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6b
    move-object/from16 v9, v31

    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6c
    move-object/from16 v9, v31

    .end local v31    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 101
    .local v15, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    .line 104
    .local v20, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v12, v0, :cond_2f

    .line 105
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    const/16 v19, 0x5d

    .line 106
    .local v19, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    aget-object v10, v23, v12

    .line 107
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 108
    .local v11, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 110
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_7

    .line 111
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 112
    .local v14, "intValue":I
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 113
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 118
    :goto_2
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 119
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 120
    .local v13, "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_3

    const/16 v23, 0x1a

    .line 122
    :goto_3
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 123
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 104
    .end local v13    # "index":I
    .end local v14    # "intValue":I
    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 105
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "seperator":C
    :cond_1
    const/16 v19, 0x2c

    goto :goto_1

    .line 115
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v14    # "intValue":I
    .restart local v19    # "seperator":C
    :cond_2
    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 300
    .end local v14    # "intValue":I
    :catch_0
    move-exception v6

    .line 301
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "error"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 120
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v13    # "index":I
    .restart local v14    # "intValue":I
    :cond_3
    :try_start_1
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 122
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_3

    .line 124
    .end local v13    # "index":I
    :cond_4
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 125
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 126
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_5

    const/16 v23, 0x1a

    .line 128
    :goto_5
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 129
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_4

    .line 126
    :cond_5
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 128
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_5

    .line 131
    .end local v13    # "index":I
    :cond_6
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4

    .line 133
    .end local v14    # "intValue":I
    :cond_7
    const-class v23, Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_10

    .line 135
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 136
    const/16 v23, 0x22

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v21

    .line 151
    .local v21, "strVal":Ljava/lang/String;
    :goto_6
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 152
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :goto_7
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 158
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 159
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_c

    const/16 v23, 0x1a

    .line 161
    :goto_8
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 162
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 137
    .end local v13    # "index":I
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_8
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x6e

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "null"

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v25, v0

    .line 138
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 139
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 141
    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 142
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    const/16 v23, 0x1a

    .line 144
    :goto_9
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 146
    const/16 v21, 0x0

    .restart local v21    # "strVal":Ljava/lang/String;
    goto :goto_6

    .line 142
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_9
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 144
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_9

    .line 148
    .end local v13    # "index":I
    :cond_a
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "not match string. feild : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 154
    .restart local v21    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 159
    .restart local v13    # "index":I
    :cond_c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 161
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto/16 :goto_8

    .line 163
    .end local v13    # "index":I
    :cond_d
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 164
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 165
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    const/16 v23, 0x1a

    .line 167
    :goto_a
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 168
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 165
    :cond_e
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 167
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_a

    .line 170
    .end local v13    # "index":I
    :cond_f
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 172
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_10
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_16

    .line 173
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    .line 174
    .local v16, "longValue":J
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 175
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 180
    :goto_b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 181
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 182
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_12

    const/16 v23, 0x1a

    .line 184
    :goto_c
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 185
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 177
    .end local v13    # "index":I
    :cond_11
    new-instance v23, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 182
    .restart local v13    # "index":I
    :cond_12
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 184
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_c

    .line 186
    .end local v13    # "index":I
    :cond_13
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 187
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 188
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_14

    const/16 v23, 0x1a

    .line 190
    :goto_d
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 191
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 188
    :cond_14
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 190
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_d

    .line 193
    .end local v13    # "index":I
    :cond_15
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 195
    .end local v16    # "longValue":J
    :cond_16
    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_1c

    .line 196
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v4

    .line 197
    .local v4, "booleanValue":Z
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 198
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 203
    :goto_e
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 204
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 205
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_18

    const/16 v23, 0x1a

    .line 207
    :goto_f
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 208
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 200
    .end local v13    # "index":I
    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 205
    .restart local v13    # "index":I
    :cond_18
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 207
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_f

    .line 209
    .end local v13    # "index":I
    :cond_19
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 210
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 211
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_1a

    const/16 v23, 0x1a

    .line 213
    :goto_10
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 214
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 211
    :cond_1a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 213
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_10

    .line 216
    .end local v13    # "index":I
    :cond_1b
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 218
    .end local v4    # "booleanValue":Z
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_24

    .line 219
    iget-char v5, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 221
    .local v5, "ch":C
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    .line 222
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "enumName":Ljava/lang/String;
    if-nez v8, :cond_1d

    const/16 v22, 0x0

    .line 235
    .end local v8    # "enumName":Ljava/lang/String;
    .local v22, "value":Ljava/lang/Enum;
    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 238
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 239
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_20

    const/16 v23, 0x1a

    .line 241
    :goto_12
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 242
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 225
    .end local v13    # "index":I
    .end local v22    # "value":Ljava/lang/Enum;
    .restart local v8    # "enumName":Ljava/lang/String;
    :cond_1d
    invoke-static {v9, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v22

    goto :goto_11

    .line 226
    .end local v8    # "enumName":Ljava/lang/String;
    :cond_1e
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v5, v0, :cond_1f

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v5, v0, :cond_1f

    .line 227
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 229
    .local v18, "ordinal":I
    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 230
    .local v7, "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;->values:[Ljava/lang/Enum;

    move-object/from16 v23, v0

    aget-object v22, v23, v18

    .line 231
    .restart local v22    # "value":Ljava/lang/Enum;
    goto :goto_11

    .line 232
    .end local v7    # "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    .end local v18    # "ordinal":I
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_1f
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "illegal enum."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 239
    .restart local v13    # "index":I
    .restart local v22    # "value":Ljava/lang/Enum;
    :cond_20
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 241
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_12

    .line 243
    .end local v13    # "index":I
    :cond_21
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 244
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 245
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_22

    const/16 v23, 0x1a

    .line 247
    :goto_13
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 248
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 245
    :cond_22
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 247
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_13

    .line 250
    .end local v13    # "index":I
    :cond_23
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 252
    .end local v5    # "ch":C
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_24
    const-class v23, Ljava/util/Date;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_29

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 253
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    .line 254
    .restart local v16    # "longValue":J
    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 257
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 258
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_25

    const/16 v23, 0x1a

    .line 260
    :goto_14
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 261
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 258
    :cond_25
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 260
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_14

    .line 262
    .end local v13    # "index":I
    :cond_26
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 263
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_27

    const/16 v23, 0x1a

    .line 266
    :goto_15
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 267
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 264
    :cond_27
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 266
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_15

    .line 269
    .end local v13    # "index":I
    :cond_28
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 272
    .end local v16    # "longValue":J
    :cond_29
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 273
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 274
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2a

    const/16 v23, 0x1a

    .line 276
    :goto_16
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 277
    const/16 v23, 0xe

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 288
    .end local v13    # "index":I
    :goto_17
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 290
    const/16 v23, 0x5d

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    .line 291
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 292
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 274
    .restart local v13    # "index":I
    :cond_2a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 276
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_16

    .line 278
    .end local v13    # "index":I
    :cond_2b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x7b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 279
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 280
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2c

    const/16 v23, 0x1a

    .line 282
    :goto_18
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 283
    const/16 v23, 0xc

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_17

    .line 280
    :cond_2c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 282
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_18

    .line 285
    .end local v13    # "index":I
    :cond_2d
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_17

    .line 294
    :cond_2e
    const/16 v23, 0x2c

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 295
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "seperator":C
    :cond_2f
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 306
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 307
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_30

    const/16 v23, 0x1a

    .line 309
    :goto_19
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 310
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 315
    .end local v13    # "index":I
    :goto_1a
    return-object p4

    .line 307
    .restart local v13    # "index":I
    :cond_30
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 309
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_19

    .line 312
    .end local v13    # "index":I
    :cond_31
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1a
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 24
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 806
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v21, v0

    .line 808
    .local v21, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v17

    .line 810
    .local v17, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v17, :cond_0

    .line 811
    const-string v6, "is"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 813
    .local v23, "startsWithIs":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v16, v7, v6

    .line 814
    .local v16, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 815
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v15, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 816
    .local v15, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 817
    .local v19, "fieldName":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 818
    move-object/from16 v17, v16

    .line 831
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v19    # "fieldName":Ljava/lang/String;
    .end local v23    # "startsWithIs":Z
    :cond_0
    :goto_1
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v22, v0

    .line 832
    .local v22, "mask":I
    if-nez v17, :cond_9

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int v6, v6, v22

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int v6, v6, v22

    if-eqz v6, :cond_9

    .line 835
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v6, :cond_8

    .line 836
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v8, 0x1

    invoke-direct {v14, v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 837
    .local v14, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v20

    .line 838
    .local v20, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v20

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v10, v20, v6

    .line 839
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    .line 840
    .restart local v19    # "fieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 838
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 822
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v20    # "fields":[Ljava/lang/reflect/Field;
    .end local v22    # "mask":I
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v23    # "startsWithIs":Z
    :cond_3
    if-eqz v23, :cond_5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v9, :cond_4

    const-class v9, Ljava/lang/Boolean;

    if-ne v15, v9, :cond_5

    :cond_4
    const/4 v9, 0x2

    .line 824
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 825
    move-object/from16 v17, v16

    .line 826
    goto :goto_1

    .line 813
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 843
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "startsWithIs":Z
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v20    # "fields":[Ljava/lang/reflect/Field;
    .restart local v22    # "mask":I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 844
    .local v18, "fieldModifiers":I
    and-int/lit8 v8, v18, 0x10

    if-nez v8, :cond_2

    and-int/lit8 v8, v18, 0x8

    if-nez v8, :cond_2

    .line 847
    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 849
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v18    # "fieldModifiers":I
    .end local v19    # "fieldName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 852
    .end local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v20    # "fields":[Ljava/lang/reflect/Field;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 853
    .local v13, "deserOrField":Ljava/lang/Object;
    if-eqz v13, :cond_9

    .line 854
    instance-of v6, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v6, :cond_a

    move-object/from16 v17, v13

    .line 855
    check-cast v17, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 866
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_9
    :goto_4
    if-nez v17, :cond_b

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    const/4 v6, 0x0

    .line 876
    :goto_5
    return v6

    .restart local v13    # "deserOrField":Ljava/lang/Object;
    :cond_a
    move-object v10, v13

    .line 857
    check-cast v10, Ljava/lang/reflect/Field;

    .line 858
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 859
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 860
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v17, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    .end local v17    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v5}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 861
    .restart local v17    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 872
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_b
    const/16 v6, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 874
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 876
    const/4 v6, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 55
    instance-of v10, p2, Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 56
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v0, p2

    .line 57
    check-cast v0, Ljava/lang/Class;

    .line 58
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 59
    .local v4, "loader":Ljava/lang/ClassLoader;
    iget-object v10, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    move v6, v8

    .line 60
    .local v6, "ordered":Z
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 61
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v9

    invoke-static {v4, v8, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 91
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "ordered":Z
    :goto_1
    return-object v7

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    move v6, v9

    .line 59
    goto :goto_0

    .line 66
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_2

    .line 67
    const/4 v7, 0x0

    goto :goto_1

    .line 72
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 73
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v8, :cond_4

    .line 74
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 79
    .local v5, "object":Ljava/lang/Object;
    :goto_2
    if-eqz p1, :cond_5

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_5

    .line 81
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_5

    aget-object v3, v8, v9

    .line 82
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_3

    .line 83
    const-string v11, ""

    invoke-virtual {v3, v5, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 76
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "object":Ljava/lang/Object;
    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v11, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v11, v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 87
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create instance error, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_5
    move-object v7, v5

    .line 91
    goto :goto_1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 17
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 916
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 918
    .local v9, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v14, :cond_2

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 921
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 922
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 923
    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v4, :cond_0

    .line 927
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 928
    .local v13, "value":Ljava/lang/Object;
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v14, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 929
    .local v8, "method":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1

    .line 930
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v14

    const/16 v16, 0x0

    aget-object v10, v14, v16

    .line 931
    .local v10, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p2

    invoke-static {v13, v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    .line 932
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-virtual {v8, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 934
    .end local v10    # "paramType":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v14, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 935
    .local v3, "field":Ljava/lang/reflect/Field;
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v10, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 936
    .restart local v10    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p2

    invoke-static {v13, v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    .line 937
    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 944
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "paramType":Ljava/lang/reflect/Type;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v6, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 945
    .local v6, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v12, v6

    .line 946
    .local v12, "size":I
    new-array v11, v12, [Ljava/lang/Object;

    .line 947
    .local v11, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v12, :cond_3

    .line 948
    aget-object v5, v6, v7

    .line 949
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v14, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v7

    .line 947
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 952
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v14, :cond_4

    .line 954
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v14, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 961
    .end local v6    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "i":I
    .end local v9    # "object":Ljava/lang/Object;
    .end local v11    # "params":[Ljava/lang/Object;
    .end local v12    # "size":I
    :cond_4
    return-object v9

    .line 955
    .restart local v6    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "i":I
    .restart local v9    # "object":Ljava/lang/Object;
    .restart local v11    # "params":[Ljava/lang/Object;
    .restart local v12    # "size":I
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create instance error, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v16, v0

    .line 957
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 769
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v6

    .line 773
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    if-eqz v7, :cond_3

    .line 774
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 775
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 776
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v3

    goto :goto_0

    .line 774
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 782
    .end local v3    # "i":I
    :cond_3
    const/4 v4, 0x0

    .line 783
    .local v4, "low":I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .line 785
    .local v2, "high":I
    :goto_2
    if-gt v4, v2, :cond_0

    .line 786
    add-int v7, v4, v2

    ushr-int/lit8 v5, v7, 0x1

    .line 788
    .local v5, "mid":I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 790
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 792
    .local v0, "cmp":I
    if-gez v0, :cond_4

    .line 793
    add-int/lit8 v4, v5, 0x1

    goto :goto_2

    .line 794
    :cond_4
    if-lez v0, :cond_5

    .line 795
    add-int/lit8 v2, v5, -0x1

    goto :goto_2

    .line 797
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v5

    goto :goto_0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 965
    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 986
    :cond_0
    :goto_0
    return-object v2

    .line 969
    :cond_1
    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 970
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 971
    .local v1, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v9, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 972
    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 974
    .local v2, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 975
    .local v3, "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 979
    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v4

    .line 980
    .local v4, "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 981
    goto :goto_0

    .line 969
    .end local v2    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v3    # "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .end local v4    # "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    move-object v2, v5

    .line 986
    goto :goto_0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 881
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 882
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setter not found, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 885
    :cond_0
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 886
    const/4 v6, 0x0

    .line 887
    .local v6, "type":Ljava/lang/reflect/Type;
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 888
    .local v3, "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
    if-eqz v3, :cond_1

    .line 889
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 890
    .local v2, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v2, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 891
    goto :goto_0

    .line 894
    .end local v2    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    :cond_1
    if-nez v6, :cond_3

    .line 895
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 898
    .local v7, "value":Ljava/lang/Object;
    :goto_1
    instance-of v8, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v8, :cond_4

    move-object v0, p2

    .line 899
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 900
    .local v0, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v0, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 910
    .end local v0    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_2
    return-void

    .line 896
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 904
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 905
    .local v1, "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
    if-eqz v1, :cond_2

    .line 906
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 907
    .local v5, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v5, p2, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
