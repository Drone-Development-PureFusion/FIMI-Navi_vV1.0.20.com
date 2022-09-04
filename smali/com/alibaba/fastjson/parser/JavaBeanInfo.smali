.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V
    .locals 8
    .param p4, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p5, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p6, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 49
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 50
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 51
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 52
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 53
    iput-object p7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "parserFeatures":I
    if-eqz p7, :cond_1

    .line 57
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "typeName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 64
    :goto_0
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 65
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v7, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v7

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_0

    .line 68
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 70
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "supportBeanToArray":Z
    if-eqz p7, :cond_4

    .line 74
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 75
    .restart local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v0, v7, :cond_3

    .line 76
    const/4 v2, 0x1

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 82
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p6

    .line 83
    invoke-static {p5, p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .end local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_3
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    :goto_4
    iput v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 86
    return-void

    .restart local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    move-object p5, p6

    .line 83
    goto :goto_3

    .line 85
    .end local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6
    const/4 v4, 0x0

    goto :goto_4
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "fieldOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez p2, :cond_2

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 174
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 175
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v3, 0x0

    .line 187
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 185
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 72
    .param p1, "classModifiers"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .param p7, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v54, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v52, 0x0

    .line 203
    .local v52, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_0

    .line 205
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v52

    .line 210
    :goto_0
    if-nez v52, :cond_0

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_0

    .line 212
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v11, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_0

    aget-object v49, v5, v4

    .line 213
    .local v49, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v49 .. v49}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v68

    .line 214
    .local v68, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v68

    array-length v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x0

    aget-object v12, v68, v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 215
    move-object/from16 v52, v49

    .line 223
    .end local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/4 v14, 0x0

    .line 224
    .local v14, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz p3, :cond_2

    const/16 v64, 0x0

    .line 228
    .local v64, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v51

    .line 230
    .local v51, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v52, :cond_1a

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_1a

    move/from16 v0, p1

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_1a

    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v11, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_4

    aget-object v49, v5, v4

    .line 235
    .restart local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v32

    check-cast v32, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 236
    .local v32, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v32, :cond_6

    .line 237
    if-eqz v14, :cond_3

    .line 238
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "multi-json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    .end local v14    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v51    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v64    # "methods":[Ljava/lang/reflect/Method;
    .restart local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 226
    .end local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v14    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v64

    goto :goto_2

    .line 241
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v51    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v64    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    move-object/from16 v14, v49

    .line 246
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_4
    if-eqz v14, :cond_d

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 249
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v68

    .line 250
    .restart local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_7

    .line 251
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v58

    .line 254
    .local v58, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_4
    const/16 v59, 0x0

    .local v59, "i":I
    :goto_5
    move-object/from16 v0, v68

    array-length v4, v0

    move/from16 v0, v59

    if-ge v0, v4, :cond_b

    .line 255
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    aget-object v67, v4, v59

    .line 256
    .local v67, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v33, 0x0

    .line 257
    .local v33, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v67

    array-length v5, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_5

    aget-object v66, v67, v4

    .line 258
    .local v66, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v66

    instance-of v11, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v11, :cond_8

    move-object/from16 v33, v66

    .line 259
    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 263
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_5
    if-nez v33, :cond_9

    .line 264
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v58    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v59    # "i":I
    .end local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v49    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v58, v68

    .line 251
    goto :goto_4

    .line 257
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v58    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v59    # "i":I
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 267
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_9
    aget-object v6, v68, v59

    .line 268
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v7, v58, v59

    .line 269
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 271
    .local v8, "field":Ljava/lang/reflect/Field;
    if-eqz v8, :cond_a

    .line 272
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v8, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 275
    :cond_a
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 276
    .local v9, "ordinal":I
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 277
    .local v10, "serialzeFeatures":I
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 284
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v54

    move/from16 v1, p3

    invoke-static {v0, v3, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 254
    add-int/lit8 v59, v59, 0x1

    goto :goto_5

    .line 287
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_b
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    .line 288
    .local v16, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 291
    .local v17, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v11, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 294
    if-eqz p4, :cond_c

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v18, v4

    .line 295
    .local v18, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_7
    new-instance v11, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v18}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    .line 635
    .end local v58    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v59    # "i":I
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_8
    return-object v11

    .line 294
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v58    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v59    # "i":I
    .restart local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    .line 298
    .end local v16    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v58    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v59    # "i":I
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_d
    const/16 v23, 0x0

    .line 300
    .local v23, "factoryMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, v64

    array-length v5, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_11

    aget-object v26, v64, v4

    .line 301
    .local v26, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 302
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 300
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 307
    :cond_f
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v32

    check-cast v32, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 308
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v32, :cond_e

    .line 309
    if-eqz v23, :cond_10

    .line 310
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "multi-json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_10
    move-object/from16 v23, v26

    .line 319
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_11
    if-eqz v23, :cond_19

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 322
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v68

    .line 323
    .restart local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_13

    .line 324
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v57

    .line 327
    .local v57, "genericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_a
    const/16 v59, 0x0

    .restart local v59    # "i":I
    :goto_b
    move-object/from16 v0, v68

    array-length v4, v0

    move/from16 v0, v59

    if-ge v0, v4, :cond_16

    .line 328
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    aget-object v67, v4, v59

    .line 329
    .restart local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v33, 0x0

    .line 330
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v67

    array-length v5, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v5, :cond_12

    aget-object v66, v67, v4

    .line 331
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v66

    instance-of v11, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v11, :cond_14

    move-object/from16 v33, v66

    .line 332
    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 336
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_12
    if-nez v33, :cond_15

    .line 337
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v57    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v59    # "i":I
    .end local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_13
    move-object/from16 v57, v68

    .line 324
    goto :goto_a

    .line 330
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v57    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v59    # "i":I
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 340
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_15
    aget-object v6, v68, v59

    .line 341
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v7, v57, v59

    .line 342
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 343
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 344
    .restart local v9    # "ordinal":I
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 345
    .restart local v10    # "serialzeFeatures":I
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 352
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v54

    move/from16 v1, p3

    invoke-static {v0, v3, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 327
    add-int/lit8 v59, v59, 0x1

    goto :goto_b

    .line 355
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_16
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    .line 356
    .restart local v16    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 359
    .restart local v17    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v11, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 362
    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 363
    move-object/from16 v17, v16

    .line 366
    :cond_17
    if-eqz p4, :cond_18

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v18, v4

    .line 367
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_d
    new-instance v19, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, p0

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    .local v19, "beanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    move-object/from16 v11, v19

    .line 368
    goto/16 :goto_8

    .line 366
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v19    # "beanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    :cond_18
    const/16 v18, 0x0

    goto :goto_d

    .line 371
    .end local v16    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v57    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v59    # "i":I
    .end local v68    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_19
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "default constructor not found. "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    .end local v23    # "factoryMethod":Ljava/lang/reflect/Method;
    :cond_1a
    if-eqz v52, :cond_1b

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 378
    :cond_1b
    if-nez p3, :cond_2b

    .line 379
    move-object/from16 v0, v64

    array-length v11, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v11, :cond_2b

    aget-object v26, v64, v5

    .line 380
    .restart local v26    # "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .restart local v9    # "ordinal":I
    const/4 v10, 0x0

    .line 381
    .restart local v10    # "serialzeFeatures":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v62

    .line 382
    .local v62, "methodName":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v12, 0x4

    if-lt v4, v12, :cond_1c

    .line 383
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 379
    :cond_1c
    :goto_f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e

    .line 390
    :cond_1d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v69

    .line 391
    .local v69, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v69

    if-eq v0, v4, :cond_1e

    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v69

    if-ne v0, v4, :cond_1c

    .line 392
    :cond_1e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    .line 393
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v12, Ljava/lang/Object;

    if-eq v4, v12, :cond_1c

    .line 398
    if-eqz p5, :cond_20

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v32, v4

    .line 400
    .local v32, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_10
    if-nez v32, :cond_1f

    if-eqz p5, :cond_1f

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v32

    .line 404
    :cond_1f
    if-eqz v32, :cond_21

    .line 405
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 409
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 410
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 412
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_21

    .line 413
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 414
    .local v25, "propertyName":Ljava/lang/String;
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v27, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p2

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v34, p6

    invoke-direct/range {v24 .. v34}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_f

    .line 398
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_20
    const/16 v32, 0x0

    goto :goto_10

    .line 431
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_21
    const-string v4, "set"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 435
    const/4 v4, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v47

    .line 438
    .local v47, "c3":C
    invoke-static/range {v47 .. v47}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 439
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_23

    .line 440
    const/4 v4, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 454
    .restart local v25    # "propertyName":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 455
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_22

    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v12, :cond_22

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v12, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v12, 0x1

    .line 457
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 458
    .local v60, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 461
    .end local v60    # "isFieldName":Ljava/lang/String;
    :cond_22
    if-eqz v8, :cond_29

    .line 462
    if-eqz p5, :cond_27

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v33, v4

    .line 464
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_12
    if-eqz v33, :cond_29

    .line 465
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 466
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 468
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28

    .line 469
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 470
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v27, v8

    move-object/from16 v28, p0

    move-object/from16 v29, p2

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v34, p6

    invoke-direct/range {v24 .. v34}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_f

    .line 442
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v12, 0x4

    move-object/from16 v0, v62

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_11

    .line 444
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_24
    const/16 v4, 0x5f

    move/from16 v0, v47

    if-ne v0, v4, :cond_25

    .line 445
    const/4 v4, 0x4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_11

    .line 446
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_25
    const/16 v4, 0x66

    move/from16 v0, v47

    if-ne v0, v4, :cond_26

    .line 447
    const/4 v4, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_11

    .line 448
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_26
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v12, 0x5

    if-lt v4, v12, :cond_1c

    const/4 v4, 0x4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 449
    const/4 v4, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_11

    .line 462
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    :cond_27
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 478
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_28
    if-nez v32, :cond_29

    .line 479
    move-object/from16 v32, v33

    .line 484
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_29
    if-eqz p7, :cond_2a

    .line 485
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 488
    :cond_2a
    new-instance v34, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v37, 0x0

    const/16 v43, 0x0

    move-object/from16 v35, v25

    move-object/from16 v36, v26

    move-object/from16 v38, p0

    move-object/from16 v39, p2

    move/from16 v40, v9

    move/from16 v41, v10

    move-object/from16 v42, v32

    move/from16 v44, p6

    invoke-direct/range {v34 .. v44}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_f

    .line 498
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v47    # "c3":C
    .end local v62    # "methodName":Ljava/lang/String;
    .end local v69    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    new-instance v48, Ljava/util/ArrayList;

    move-object/from16 v0, v51

    array-length v4, v0

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .local v48, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v51

    array-length v5, v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v5, :cond_31

    aget-object v53, v51, v4

    .line 500
    .local v53, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v65

    .line 501
    .local v65, "modifiers":I
    and-int/lit8 v11, v65, 0x8

    if-eqz v11, :cond_2d

    .line 499
    :cond_2c
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 505
    :cond_2d
    and-int/lit8 v11, v65, 0x10

    if-eqz v11, :cond_2f

    .line 506
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v56

    .line 507
    .local v56, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-virtual {v11, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-class v11, Ljava/util/Collection;

    move-object/from16 v0, v56

    invoke-virtual {v11, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_30

    :cond_2e
    const/16 v71, 0x1

    .line 508
    .local v71, "supportReadOnly":Z
    :goto_15
    if-eqz v71, :cond_2c

    .line 513
    .end local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "supportReadOnly":Z
    :cond_2f
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2c

    .line 514
    move-object/from16 v0, v48

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 507
    .restart local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    const/16 v71, 0x0

    goto :goto_15

    .line 518
    .end local v53    # "f":Ljava/lang/reflect/Field;
    .end local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "modifiers":I
    :cond_31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v46

    .local v46, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    if-eqz v46, :cond_38

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v46

    if-eq v0, v4, :cond_38

    .line 519
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v11, v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v11, :cond_37

    aget-object v53, v5, v4

    .line 520
    .restart local v53    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v65

    .line 521
    .restart local v65    # "modifiers":I
    and-int/lit8 v12, v65, 0x8

    if-eqz v12, :cond_33

    .line 519
    :cond_32
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 525
    :cond_33
    and-int/lit8 v12, v65, 0x10

    if-eqz v12, :cond_35

    .line 526
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v56

    .line 527
    .restart local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_34

    const-class v12, Ljava/util/Collection;

    move-object/from16 v0, v56

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_36

    :cond_34
    const/16 v71, 0x1

    .line 528
    .restart local v71    # "supportReadOnly":Z
    :goto_19
    if-eqz v71, :cond_32

    .line 533
    .end local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "supportReadOnly":Z
    :cond_35
    and-int/lit8 v12, v65, 0x1

    if-eqz v12, :cond_32

    .line 534
    move-object/from16 v0, v48

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 527
    .restart local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    const/16 v71, 0x0

    goto :goto_19

    .line 518
    .end local v53    # "f":Ljava/lang/reflect/Field;
    .end local v56    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "modifiers":I
    :cond_37
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v46

    goto :goto_16

    .line 540
    :cond_38
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 541
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v55

    .line 542
    .local v55, "fieldName":Ljava/lang/String;
    const/16 v50, 0x0

    .line 543
    .local v50, "contains":Z
    const/16 v59, 0x0

    .restart local v59    # "i":I
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v70

    .local v70, "size":I
    :goto_1b
    move/from16 v0, v59

    move/from16 v1, v70

    if-ge v0, v1, :cond_3b

    .line 544
    move-object/from16 v0, v54

    move/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 545
    .local v61, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 546
    const/16 v50, 0x1

    .line 543
    :cond_3a
    add-int/lit8 v59, v59, 0x1

    goto :goto_1b

    .line 551
    .end local v61    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3b
    if-nez v50, :cond_39

    .line 555
    const/4 v9, 0x0

    .restart local v9    # "ordinal":I
    const/4 v10, 0x0

    .line 556
    .restart local v10    # "serialzeFeatures":I
    move-object/from16 v25, v55

    .line 558
    .restart local v25    # "propertyName":Ljava/lang/String;
    if-eqz p5, :cond_3e

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v33, v4

    .line 560
    .restart local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1c
    if-eqz v33, :cond_3c

    .line 561
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 562
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 564
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 565
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 569
    :cond_3c
    if-eqz p7, :cond_3d

    .line 570
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 573
    :cond_3d
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v8, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 574
    new-instance v34, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v36, 0x0

    const/16 v42, 0x0

    move-object/from16 v35, v25

    move-object/from16 v37, v8

    move-object/from16 v38, p0

    move-object/from16 v39, p2

    move/from16 v40, v9

    move/from16 v41, v10

    move-object/from16 v43, v33

    move/from16 v44, p6

    invoke-direct/range {v34 .. v44}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_1a

    .line 558
    .end local v33    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3e
    const/16 v33, 0x0

    goto :goto_1c

    .line 588
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v50    # "contains":Z
    .end local v55    # "fieldName":Ljava/lang/String;
    .end local v59    # "i":I
    .end local v70    # "size":I
    :cond_3f
    if-nez p3, :cond_45

    .line 589
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v11

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    if-ge v5, v12, :cond_45

    aget-object v26, v11, v5

    .line 590
    .restart local v26    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v62

    .line 591
    .restart local v62    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x4

    if-lt v4, v13, :cond_40

    .line 592
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 589
    :cond_40
    :goto_1e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1d

    .line 598
    :cond_41
    const-string v4, "get"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x3

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 599
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_40

    .line 603
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v63

    .line 604
    .local v63, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/Collection;

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_42

    const-class v4, Ljava/util/Map;

    .line 605
    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 609
    :cond_42
    if-eqz p5, :cond_43

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v32, v4

    .line 612
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1f
    if-eqz v32, :cond_44

    .line 613
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v45

    .local v45, "annotationName":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    move-object/from16 v25, v45

    .line 617
    .end local v45    # "annotationName":Ljava/lang/String;
    .restart local v25    # "propertyName":Ljava/lang/String;
    :goto_20
    new-instance v34, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    move-object/from16 v35, v25

    move-object/from16 v36, v26

    move-object/from16 v38, p0

    move-object/from16 v39, p2

    move-object/from16 v42, v32

    move/from16 v44, p6

    invoke-direct/range {v34 .. v44}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_1e

    .line 609
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_43
    const/16 v32, 0x0

    goto :goto_1f

    .line 613
    .restart local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    .line 615
    move-object/from16 v0, v62

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v13, 0x4

    move-object/from16 v0, v62

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_20

    .line 627
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v32    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v62    # "methodName":Ljava/lang/String;
    .end local v63    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    .line 628
    .restart local v16    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 630
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 631
    .restart local v17    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v11, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 634
    if-eqz p4, :cond_46

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v18, v4

    .line 635
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_21
    new-instance v34, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, v52

    move-object/from16 v39, v16

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    invoke-direct/range {v34 .. v41}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    move-object/from16 v11, v34

    goto/16 :goto_8

    .line 634
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_46
    const/16 v18, 0x0

    goto :goto_21

    .line 206
    .end local v14    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v46    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v48    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v51    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v64    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 13
    .param p1, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v12, 0x1

    .line 89
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v10, :cond_0

    move-object v9, p2

    .end local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v9, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v6, p2

    .line 168
    :goto_0
    return-object v6

    .line 93
    .end local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "orders":[Ljava/lang/String;
    if-eqz v8, :cond_14

    array-length v10, v8

    if-eqz v10, :cond_14

    .line 95
    const/4 v1, 0x1

    .line 96
    .local v1, "containsAll":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v8

    if-ge v4, v10, :cond_2

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "got":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v10, p2

    if-ge v5, v10, :cond_1

    .line 99
    aget-object v10, p2, v5

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    const/4 v3, 0x1

    .line 104
    :cond_1
    if-nez v3, :cond_4

    .line 105
    const/4 v1, 0x0

    .line 110
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_2
    if-nez v1, :cond_5

    move-object v9, p2

    .end local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v6, p2

    .line 111
    goto :goto_0

    .line 98
    .end local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "got":Z
    .restart local v5    # "j":I
    .restart local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_5
    array-length v10, v8

    array-length v11, p1

    if-ne v10, v11, :cond_c

    .line 115
    const/4 v7, 0x1

    .line 116
    .local v7, "orderMatch":Z
    const/4 v4, 0x0

    :goto_3
    array-length v10, v8

    if-ge v4, v10, :cond_6

    .line 117
    aget-object v10, p2, v4

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 118
    const/4 v7, 0x0

    .line 123
    :cond_6
    if-eqz v7, :cond_8

    move-object v9, p2

    .end local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v6, p2

    .line 124
    goto :goto_0

    .line 116
    .end local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 127
    :cond_8
    array-length v10, p2

    new-array v6, v10, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 128
    .local v6, "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_b

    .line 129
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    array-length v10, p2

    if-ge v5, v10, :cond_9

    .line 130
    aget-object v10, p2, v5

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 131
    aget-object v10, p2, v5

    aput-object v10, v6, v4

    .line 128
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 129
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 136
    .end local v5    # "j":I
    :cond_b
    move-object p2, v6

    .line 137
    iput-boolean v12, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    move-object v9, p2

    .line 138
    .end local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_0

    .line 141
    .end local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "orderMatch":Z
    .end local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_c
    array-length v10, p2

    new-array v6, v10, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 142
    .restart local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    :goto_6
    array-length v10, v8

    if-ge v4, v10, :cond_f

    .line 143
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    array-length v10, p2

    if-ge v5, v10, :cond_d

    .line 144
    aget-object v10, p2, v5

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 145
    aget-object v10, p2, v5

    aput-object v10, v6, v4

    .line 142
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 143
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 151
    .end local v5    # "j":I
    :cond_f
    array-length v2, v8

    .line 152
    .local v2, "fieldIndex":I
    const/4 v4, 0x0

    :goto_8
    array-length v10, p2

    if-ge v4, v10, :cond_13

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "contains":Z
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    array-length v10, v6

    if-ge v5, v10, :cond_10

    if-ge v5, v2, :cond_10

    .line 155
    aget-object v10, v6, v4

    aget-object v11, p2, v5

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 156
    const/4 v0, 0x1

    .line 160
    :cond_10
    if-nez v0, :cond_11

    .line 161
    aget-object v10, p2, v4

    aput-object v10, v6, v2

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 152
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 154
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 165
    .end local v0    # "contains":Z
    .end local v5    # "j":I
    :cond_13
    iput-boolean v12, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .end local v1    # "containsAll":Z
    .end local v2    # "fieldIndex":I
    .end local v4    # "i":I
    .end local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_14
    move-object v9, p2

    .end local p2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v6, p2

    .line 168
    goto/16 :goto_0
.end method
