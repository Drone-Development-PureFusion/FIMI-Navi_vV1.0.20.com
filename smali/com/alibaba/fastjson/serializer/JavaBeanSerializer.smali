.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    .line 39
    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    .line 40
    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 16
    .param p2, "classModifiers"    # I
    .param p4, "fieldOnly"    # Z
    .param p5, "jsonTypeSupport"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 90
    if-eqz p5, :cond_1

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v4, v1

    .line 94
    .local v4, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_0
    if-eqz v4, :cond_0

    .line 95
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 97
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 104
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v12

    .line 113
    .local v12, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v13, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 116
    .local v11, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v10, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 118
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v4    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v12    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    .restart local v4    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v12    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 124
    const/4 v14, 0x0

    .line 126
    .local v14, "orders":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 127
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v14

    .line 130
    :cond_3
    if-eqz v14, :cond_5

    array-length v1, v14

    if-eqz v1, :cond_5

    .line 131
    const/4 v6, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v12

    .line 140
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .restart local v13    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 143
    .restart local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v10, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 144
    .restart local v10    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 159
    :goto_3
    return-void

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    new-array v15, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 150
    .local v15, "sortedGetters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v5

    invoke-static {v1, v2, v15, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-static {v15, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_3

    .line 156
    :cond_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 56
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 60
    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 65
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 627
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 629
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 630
    .local v0, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_0
    return-object v1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 70
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
    .line 162
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v43, v0

    .line 164
    .local v43, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 165
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 624
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v66, v0

    if-eqz v66, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v66, v0

    if-eqz v66, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v66, v0

    .line 172
    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_2

    .line 173
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_2
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_b

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v27, v0

    .line 185
    .local v27, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v44, v0

    .line 187
    .local v44, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_4

    .line 188
    new-instance v66, Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v67, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v44

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 189
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v66, v0

    if-nez v66, :cond_3

    .line 190
    new-instance v66, Ljava/util/IdentityHashMap;

    invoke-direct/range {v66 .. v66}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 192
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v66, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v67, v0

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_5

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_c

    :cond_5
    const/16 v64, 0x1

    .line 201
    .local v64, "writeAsArray":Z
    :goto_2
    if-eqz v64, :cond_d

    const/16 v57, 0x5b

    .line 202
    .local v57, "startSeperator":C
    :goto_3
    if-eqz v64, :cond_e

    const/16 v17, 0x5d

    .line 205
    .local v17, "endSeperator":C
    :goto_4
    :try_start_0
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    add-int/lit8 v37, v66, 0x1

    .line 206
    .local v37, "newcount":I
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v37

    move/from16 v1, v66

    if-le v0, v1, :cond_6

    .line 207
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v66, v0

    if-nez v66, :cond_f

    .line 208
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 214
    :cond_6
    :goto_5
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    aput-char v57, v66, v67

    .line 215
    move/from16 v0, v37

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 218
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v66, v0

    if-lez v66, :cond_7

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_7

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 224
    :cond_7
    const/4 v13, 0x0

    .line 227
    .local v13, "commaFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_8

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_10

    if-nez p4, :cond_8

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v66, v0

    if-eqz v66, :cond_10

    :cond_8
    const/16 v29, 0x1

    .line 233
    .local v29, "isWriteClassName":Z
    :goto_6
    if-eqz v29, :cond_a

    .line 234
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    .line 235
    .local v39, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v39

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 236
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 238
    .local v58, "typeName":Ljava/lang/String;
    if-nez v58, :cond_9

    .line 239
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v58

    .line 241
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 242
    const/4 v13, 0x1

    .line 246
    .end local v39    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v58    # "typeName":Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_11

    const/16 v55, 0x2c

    .line 248
    .local v55, "seperator":C
    :goto_7
    move/from16 v36, v55

    .line 249
    .local v36, "newSeperator":C
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    move-object/from16 v66, v0

    if-eqz v66, :cond_12

    .line 250
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    move-object/from16 v66, v0

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :goto_8
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_12

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 251
    .local v10, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v36

    .line 252
    goto :goto_8

    .line 182
    .end local v10    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    .end local v13    # "commaFlag":Z
    .end local v17    # "endSeperator":C
    .end local v27    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v29    # "isWriteClassName":Z
    .end local v36    # "newSeperator":C
    .end local v37    # "newcount":I
    .end local v44    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v55    # "seperator":C
    .end local v57    # "startSeperator":C
    .end local v64    # "writeAsArray":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v27, v0

    .restart local v27    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1

    .line 197
    .restart local v44    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_c
    const/16 v64, 0x0

    goto/16 :goto_2

    .line 201
    .restart local v64    # "writeAsArray":Z
    :cond_d
    const/16 v57, 0x7b

    goto/16 :goto_3

    .line 202
    .restart local v57    # "startSeperator":C
    :cond_e
    const/16 v17, 0x7d

    goto/16 :goto_4

    .line 210
    .restart local v17    # "endSeperator":C
    .restart local v37    # "newcount":I
    :cond_f
    :try_start_1
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 211
    const/16 v37, 0x1

    goto/16 :goto_5

    .line 227
    .restart local v13    # "commaFlag":Z
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 246
    .restart local v29    # "isWriteClassName":Z
    :cond_11
    const/16 v55, 0x0

    goto :goto_7

    .line 254
    .restart local v36    # "newSeperator":C
    .restart local v55    # "seperator":C
    :cond_12
    const/16 v66, 0x2c

    move/from16 v0, v36

    move/from16 v1, v66

    if-ne v0, v1, :cond_14

    const/4 v13, 0x1

    .line 256
    :goto_9
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_15

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_15

    const/4 v14, 0x1

    .line 258
    .local v14, "directWritePrefix":Z
    :goto_a
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_16

    const/16 v59, 0x1

    .line 259
    .local v59, "useSingleQuote":Z
    :goto_b
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_17

    const/16 v38, 0x1

    .line 261
    .local v38, "notWriteDefaultValue":Z
    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v46, v0

    .line 262
    .local v46, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v35, v0

    .line 263
    .local v35, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v62, v0

    .line 264
    .local v62, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 266
    .local v25, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_d
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_51

    .line 267
    aget-object v23, v27, v28

    .line 268
    .local v23, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    .line 269
    .local v21, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 270
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 271
    .local v22, "fieldInfoName":Ljava/lang/String;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_18

    .line 272
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v0

    .line 273
    .local v19, "field":Ljava/lang/reflect/Field;
    if-eqz v19, :cond_18

    .line 274
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    move/from16 v66, v0

    if-eqz v66, :cond_18

    .line 266
    .end local v19    # "field":Ljava/lang/reflect/Field;
    :cond_13
    :goto_e
    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    .line 254
    .end local v14    # "directWritePrefix":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v28    # "i":I
    .end local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "notWriteDefaultValue":Z
    .end local v46    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v59    # "useSingleQuote":Z
    .end local v62    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 256
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 258
    .restart local v14    # "directWritePrefix":Z
    :cond_16
    const/16 v59, 0x0

    goto :goto_b

    .line 259
    .restart local v59    # "useSingleQuote":Z
    :cond_17
    const/16 v38, 0x0

    goto :goto_c

    .line 280
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v28    # "i":I
    .restart local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "notWriteDefaultValue":Z
    .restart local v46    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v62    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_18
    const/4 v9, 0x1

    .line 282
    .local v9, "applyName":Z
    if-eqz v25, :cond_1a

    .line 283
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :cond_19
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_1a

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 284
    .local v24, "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_19

    .line 285
    const/4 v9, 0x0

    .line 291
    .end local v24    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_1a
    if-eqz v9, :cond_13

    .line 295
    const/16 v47, 0x0

    .line 296
    .local v47, "propertyValue":Ljava/lang/Object;
    const/16 v50, 0x0

    .line 297
    .local v50, "propertyValueInt":I
    const-wide/16 v52, 0x0

    .line 298
    .local v52, "propertyValueLong":J
    const/16 v48, 0x0

    .line 300
    .local v48, "propertyValueBoolean":Z
    const/16 v49, 0x0

    .line 301
    .local v49, "propertyValueGot":Z
    const/16 v63, 0x0

    .line 302
    .local v63, "valueGot":Z
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v66, v0

    if-eqz v66, :cond_21

    .line 303
    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_1e

    .line 304
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v50

    .line 305
    const/16 v63, 0x1

    .line 321
    .end local v47    # "propertyValue":Ljava/lang/Object;
    :goto_f
    const/4 v8, 0x1

    .line 323
    .local v8, "apply":Z
    if-eqz v46, :cond_59

    .line 324
    if-eqz v63, :cond_58

    .line 325
    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_22

    .line 326
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 327
    .local v47, "propertyValue":Ljava/lang/Integer;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    .line 337
    .end local v47    # "propertyValue":Ljava/lang/Integer;
    :goto_10
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :cond_1b
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_1c

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 338
    .local v45, "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    move-object/from16 v0, v45

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_1b

    .line 339
    const/4 v8, 0x0

    .line 346
    .end local v45    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_1c
    :goto_11
    if-eqz v8, :cond_13

    .line 350
    move-object/from16 v31, v22

    .line 352
    .local v31, "key":Ljava/lang/String;
    if-eqz v35, :cond_26

    .line 353
    if-eqz v63, :cond_1d

    if-nez v49, :cond_1d

    .line 354
    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_24

    .line 355
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 356
    .restart local v47    # "propertyValue":Ljava/lang/Integer;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    .line 366
    .end local v47    # "propertyValue":Ljava/lang/Integer;
    :cond_1d
    :goto_12
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :goto_13
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_26

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 367
    .local v34, "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 368
    goto :goto_13

    .line 306
    .end local v8    # "apply":Z
    .end local v31    # "key":Ljava/lang/String;
    .end local v34    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    .local v47, "propertyValue":Ljava/lang/Object;
    :cond_1e
    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_1f

    .line 307
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v52

    .line 308
    const/16 v63, 0x1

    goto/16 :goto_f

    .line 309
    :cond_1f
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_20

    .line 310
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v48

    .line 311
    const/16 v63, 0x1

    goto/16 :goto_f

    .line 313
    :cond_20
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .line 314
    const/16 v49, 0x1

    goto/16 :goto_f

    .line 317
    :cond_21
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .line 318
    const/16 v49, 0x1

    goto/16 :goto_f

    .line 328
    .end local v47    # "propertyValue":Ljava/lang/Object;
    .restart local v8    # "apply":Z
    :cond_22
    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_23

    .line 329
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    .line 330
    .local v47, "propertyValue":Ljava/lang/Long;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    goto/16 :goto_10

    .line 331
    .end local v47    # "propertyValue":Ljava/lang/Long;
    :cond_23
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_58

    .line 332
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    .line 333
    .local v47, "propertyValue":Ljava/lang/Boolean;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    goto/16 :goto_10

    .line 357
    .end local v47    # "propertyValue":Ljava/lang/Boolean;
    .restart local v31    # "key":Ljava/lang/String;
    :cond_24
    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_25

    .line 358
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    .line 359
    .local v47, "propertyValue":Ljava/lang/Long;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    goto/16 :goto_12

    .line 360
    .end local v47    # "propertyValue":Ljava/lang/Long;
    :cond_25
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_1d

    .line 361
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    .line 362
    .local v47, "propertyValue":Ljava/lang/Boolean;
    const/16 v49, 0x1

    move-object/from16 v41, v47

    goto/16 :goto_12

    .line 374
    .end local v47    # "propertyValue":Ljava/lang/Boolean;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_26
    if-eqz v62, :cond_29

    .line 375
    if-eqz v63, :cond_57

    if-nez v49, :cond_57

    .line 376
    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_27

    .line 377
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 378
    .local v47, "propertyValue":Ljava/lang/Integer;
    move-object/from16 v41, v47

    .line 379
    .local v41, "originalValue":Ljava/lang/Integer;
    const/16 v49, 0x1

    move-object/from16 v42, v41

    .local v42, "originalValue":Ljava/lang/Object;
    move-object/from16 v67, v47

    .line 391
    .end local v41    # "originalValue":Ljava/lang/Integer;
    .end local v47    # "propertyValue":Ljava/lang/Integer;
    :goto_14
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :goto_15
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_2a

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 392
    .local v61, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    move-object/from16 v0, v61

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v67

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .local v47, "propertyValue":Ljava/lang/Object;
    move-object/from16 v67, v47

    .line 393
    goto :goto_15

    .line 380
    .end local v42    # "originalValue":Ljava/lang/Object;
    .end local v47    # "propertyValue":Ljava/lang/Object;
    .end local v61    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_27
    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_28

    .line 381
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    .line 382
    .local v47, "propertyValue":Ljava/lang/Long;
    move-object/from16 v41, v47

    .line 383
    .local v41, "originalValue":Ljava/lang/Long;
    const/16 v49, 0x1

    move-object/from16 v42, v41

    .restart local v42    # "originalValue":Ljava/lang/Object;
    move-object/from16 v67, v47

    goto :goto_14

    .line 384
    .end local v42    # "originalValue":Ljava/lang/Object;
    .end local v47    # "propertyValue":Ljava/lang/Long;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_28
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_57

    .line 385
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    .line 386
    .local v47, "propertyValue":Ljava/lang/Boolean;
    move-object/from16 v41, v47

    .line 387
    .local v41, "originalValue":Ljava/lang/Boolean;
    const/16 v49, 0x1

    move-object/from16 v42, v41

    .restart local v42    # "originalValue":Ljava/lang/Object;
    move-object/from16 v67, v47

    goto :goto_14

    .end local v42    # "originalValue":Ljava/lang/Object;
    .end local v47    # "propertyValue":Ljava/lang/Boolean;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_29
    move-object/from16 v42, v41

    move-object/from16 v67, v41

    .line 397
    .end local v41    # "originalValue":Ljava/lang/Object;
    :cond_2a
    if-eqz v49, :cond_2b

    if-nez v67, :cond_2b

    if-nez v64, :cond_2b

    .line 398
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    move/from16 v66, v0

    if-nez v66, :cond_2b

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    and-int v66, v66, v68

    if-eqz v66, :cond_13

    .line 404
    :cond_2b
    if-eqz v49, :cond_2e

    if-eqz v67, :cond_2e

    if-eqz v38, :cond_2e

    .line 405
    sget-object v66, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_2c

    sget-object v66, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_2c

    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_2c

    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_2c

    sget-object v66, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_2c

    sget-object v66, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_2d

    :cond_2c
    move-object/from16 v0, v67

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v66, v0

    if-eqz v66, :cond_2d

    move-object/from16 v0, v67

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v66, v0

    .line 413
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Number;->byteValue()B

    move-result v66

    if-eqz v66, :cond_13

    .line 415
    :cond_2d
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, v67

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v66, v0

    if-eqz v66, :cond_2e

    move-object/from16 v0, v67

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v66, v0

    .line 417
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-eqz v66, :cond_13

    .line 422
    :cond_2e
    if-eqz v13, :cond_30

    .line 425
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    add-int/lit8 v37, v66, 0x1

    .line 426
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v37

    move/from16 v1, v66

    if-le v0, v1, :cond_2f

    .line 427
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v66, v0

    if-nez v66, :cond_33

    .line 428
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 434
    :cond_2f
    :goto_16
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v68, v0

    const/16 v69, 0x2c

    aput-char v69, v66, v68

    .line 435
    move/from16 v0, v37

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 437
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    and-int v66, v66, v68

    if-eqz v66, :cond_30

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 442
    :cond_30
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_34

    .line 443
    if-nez v64, :cond_31

    .line 444
    const/16 v66, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 447
    :cond_31
    move-object/from16 v0, p1

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 585
    :cond_32
    :goto_17
    const/4 v13, 0x1

    goto/16 :goto_e

    .line 430
    :cond_33
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 431
    const/16 v37, 0x1

    goto :goto_16

    .line 448
    :cond_34
    move-object/from16 v0, v42

    move-object/from16 v1, v67

    if-eq v0, v1, :cond_37

    .line 449
    if-nez v64, :cond_35

    .line 450
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 452
    :cond_35
    move-object/from16 v0, p1

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_17

    .line 615
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v13    # "commaFlag":Z
    .end local v14    # "directWritePrefix":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v28    # "i":I
    .end local v29    # "isWriteClassName":Z
    .end local v31    # "key":Ljava/lang/String;
    .end local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v36    # "newSeperator":C
    .end local v37    # "newcount":I
    .end local v38    # "notWriteDefaultValue":Z
    .end local v46    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v48    # "propertyValueBoolean":Z
    .end local v49    # "propertyValueGot":Z
    .end local v50    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v55    # "seperator":C
    .end local v59    # "useSingleQuote":Z
    .end local v62    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v63    # "valueGot":Z
    :catch_0
    move-exception v15

    .line 616
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v18, "write javaBean error"

    .line 617
    .local v18, "errorMessage":Ljava/lang/String;
    if-eqz p3, :cond_36

    .line 618
    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v66

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ", fieldName : "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 620
    :cond_36
    new-instance v66, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v66

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v66
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v66

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v66

    .line 454
    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v13    # "commaFlag":Z
    .restart local v14    # "directWritePrefix":Z
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v28    # "i":I
    .restart local v29    # "isWriteClassName":Z
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v36    # "newSeperator":C
    .restart local v37    # "newcount":I
    .restart local v38    # "notWriteDefaultValue":Z
    .restart local v46    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v48    # "propertyValueBoolean":Z
    .restart local v49    # "propertyValueGot":Z
    .restart local v50    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v55    # "seperator":C
    .restart local v59    # "useSingleQuote":Z
    .restart local v62    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v63    # "valueGot":Z
    :cond_37
    if-nez v64, :cond_39

    .line 455
    if-eqz v14, :cond_3b

    .line 458
    :try_start_3
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->name_chars:[C

    .line 459
    .local v11, "c":[C
    const/16 v40, 0x0

    .line 460
    .local v40, "off":I
    array-length v0, v11

    move/from16 v32, v0

    .line 462
    .local v32, "len":I
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    add-int v37, v66, v32

    .line 463
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v37

    move/from16 v1, v66

    if-le v0, v1, :cond_38

    .line 464
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v66, v0

    if-nez v66, :cond_3a

    .line 465
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 478
    :cond_38
    :goto_18
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v68, v0

    move/from16 v0, v40

    move-object/from16 v1, v66

    move/from16 v2, v68

    move/from16 v3, v32

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    move/from16 v0, v37

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 486
    .end local v11    # "c":[C
    .end local v32    # "len":I
    .end local v40    # "off":I
    :cond_39
    :goto_19
    if-eqz v63, :cond_45

    if-nez v49, :cond_45

    .line 487
    sget-object v66, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_42

    .line 490
    const/high16 v66, -0x80000000

    move/from16 v0, v50

    move/from16 v1, v66

    if-ne v0, v1, :cond_3c

    .line 491
    const-string v66, "-2147483648"

    move-object/from16 v0, v43

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 468
    .restart local v11    # "c":[C
    .restart local v32    # "len":I
    .restart local v40    # "off":I
    :cond_3a
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v68, v0

    sub-int v54, v66, v68

    .line 469
    .local v54, "rest":I
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v68, v0

    move/from16 v0, v40

    move-object/from16 v1, v66

    move/from16 v2, v68

    move/from16 v3, v54

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 471
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 472
    sub-int v32, v32, v54

    .line 473
    add-int v40, v40, v54

    .line 474
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v32

    move/from16 v1, v66

    if-gt v0, v1, :cond_3a

    .line 475
    move/from16 v37, v32

    goto/16 :goto_18

    .line 482
    .end local v11    # "c":[C
    .end local v32    # "len":I
    .end local v40    # "off":I
    .end local v54    # "rest":I
    :cond_3b
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_19

    .line 494
    :cond_3c
    if-gez v50, :cond_3f

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v65, v0

    .line 495
    .local v65, "x":I
    :goto_1a
    const/16 v30, 0x0

    .line 496
    .local v30, "j":I
    :goto_1b
    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v66, v66, v30

    move/from16 v0, v65

    move/from16 v1, v66

    if-gt v0, v1, :cond_40

    .line 497
    add-int/lit8 v56, v30, 0x1

    .line 502
    .local v56, "size":I
    if-gez v50, :cond_3d

    .line 503
    add-int/lit8 v56, v56, 0x1

    .line 506
    :cond_3d
    const/16 v26, 0x0

    .line 507
    .local v26, "flushed":Z
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    add-int v37, v66, v56

    .line 508
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v37

    move/from16 v1, v66

    if-le v0, v1, :cond_3e

    .line 509
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v66, v0

    if-nez v66, :cond_41

    .line 510
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 519
    :cond_3e
    :goto_1c
    if-nez v26, :cond_32

    .line 520
    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v68, v0

    move-wide/from16 v0, v66

    move/from16 v2, v37

    move-object/from16 v3, v68

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 521
    move/from16 v0, v37

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_17

    .end local v26    # "flushed":Z
    .end local v30    # "j":I
    .end local v56    # "size":I
    .end local v65    # "x":I
    :cond_3f
    move/from16 v65, v50

    .line 494
    goto :goto_1a

    .line 495
    .restart local v30    # "j":I
    .restart local v65    # "x":I
    :cond_40
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b

    .line 512
    .restart local v26    # "flushed":Z
    .restart local v56    # "size":I
    :cond_41
    move/from16 v0, v56

    new-array v12, v0, [C

    .line 513
    .local v12, "chars":[C
    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v0, v66

    move/from16 v2, v56

    invoke-static {v0, v1, v2, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 514
    const/16 v66, 0x0

    array-length v0, v12

    move/from16 v67, v0

    move-object/from16 v0, v43

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 515
    const/16 v26, 0x1

    goto :goto_1c

    .line 525
    .end local v12    # "chars":[C
    .end local v26    # "flushed":Z
    .end local v30    # "j":I
    .end local v56    # "size":I
    .end local v65    # "x":I
    :cond_42
    sget-object v66, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_43

    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_17

    .line 527
    :cond_43
    sget-object v66, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_32

    .line 528
    if-eqz v48, :cond_44

    .line 529
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/16 v68, 0x0

    sget-object v69, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    move-object/from16 v0, v69

    array-length v0, v0

    move/from16 v69, v0

    invoke-virtual/range {v66 .. v69}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_17

    .line 531
    :cond_44
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    const/16 v68, 0x0

    sget-object v69, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    move-object/from16 v0, v69

    array-length v0, v0

    move/from16 v69, v0

    invoke-virtual/range {v66 .. v69}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_17

    .line 535
    :cond_45
    if-nez v64, :cond_50

    .line 536
    const-class v66, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_4a

    .line 537
    if-nez v67, :cond_48

    .line 538
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-nez v66, :cond_46

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_47

    .line 541
    :cond_46
    const-string v66, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 543
    :cond_47
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_17

    .line 546
    :cond_48
    move-object/from16 v0, v67

    check-cast v0, Ljava/lang/String;

    move-object/from16 v51, v0

    .line 548
    .local v51, "propertyValueString":Ljava/lang/String;
    if-eqz v59, :cond_49

    .line 549
    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 551
    :cond_49
    const/16 v66, 0x0

    const/16 v67, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v51

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_17

    .line 555
    .end local v51    # "propertyValueString":Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    move/from16 v66, v0

    if-eqz v66, :cond_4f

    .line 556
    if-eqz v67, :cond_4e

    .line 557
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    and-int v66, v66, v68

    if-eqz v66, :cond_4d

    .line 558
    move-object/from16 v0, v67

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    .line 560
    .local v16, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    .line 561
    .local v33, "name":Ljava/lang/String;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_4b

    const/16 v60, 0x1

    .line 563
    .local v60, "userSingleQuote":Z
    :goto_1d
    if-eqz v60, :cond_4c

    .line 564
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 561
    .end local v60    # "userSingleQuote":Z
    :cond_4b
    const/16 v60, 0x0

    goto :goto_1d

    .line 566
    .restart local v60    # "userSingleQuote":Z
    :cond_4c
    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_17

    .line 569
    .end local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v33    # "name":Ljava/lang/String;
    .end local v60    # "userSingleQuote":Z
    :cond_4d
    move-object/from16 v0, v67

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    .line 570
    .restart local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v66

    move-object/from16 v0, v43

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto/16 :goto_17

    .line 573
    .end local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_4e
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_17

    .line 576
    :cond_4f
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 580
    :cond_50
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 589
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v31    # "key":Ljava/lang/String;
    .end local v48    # "propertyValueBoolean":Z
    .end local v49    # "propertyValueGot":Z
    .end local v50    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v63    # "valueGot":Z
    :cond_51
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    move-object/from16 v66, v0

    if-eqz v66, :cond_53

    .line 590
    if-eqz v13, :cond_52

    const/16 v7, 0x2c

    .line 591
    .local v7, "afterOperator":C
    :goto_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    move-object/from16 v66, v0

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :goto_1f
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_53

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 592
    .local v6, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1, v7}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v7

    .line 593
    goto :goto_1f

    .line 590
    .end local v6    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    .end local v7    # "afterOperator":C
    :cond_52
    const/4 v7, 0x0

    goto :goto_1e

    .line 596
    :cond_53
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v66, v0

    if-lez v66, :cond_54

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v66, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v66, v66, v67

    if-eqz v66, :cond_54

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 603
    :cond_54
    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    add-int/lit8 v37, v66, 0x1

    .line 604
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v37

    move/from16 v1, v66

    if-le v0, v1, :cond_55

    .line 605
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v66, v0

    if-nez v66, :cond_56

    .line 606
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 612
    :cond_55
    :goto_20
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    aput-char v17, v66, v67

    .line 613
    move/from16 v0, v37

    move-object/from16 v1, v43

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    .line 608
    :cond_56
    :try_start_4
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 609
    const/16 v37, 0x1

    goto :goto_20

    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v41    # "originalValue":Ljava/lang/Object;
    .restart local v48    # "propertyValueBoolean":Z
    .restart local v49    # "propertyValueGot":Z
    .restart local v50    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v63    # "valueGot":Z
    :cond_57
    move-object/from16 v42, v41

    .end local v41    # "originalValue":Ljava/lang/Object;
    .restart local v42    # "originalValue":Ljava/lang/Object;
    move-object/from16 v67, v41

    goto/16 :goto_14

    .end local v31    # "key":Ljava/lang/String;
    .end local v42    # "originalValue":Ljava/lang/Object;
    :cond_58
    move-object/from16 v41, v47

    goto/16 :goto_10

    :cond_59
    move-object/from16 v41, v47

    goto/16 :goto_11
.end method
