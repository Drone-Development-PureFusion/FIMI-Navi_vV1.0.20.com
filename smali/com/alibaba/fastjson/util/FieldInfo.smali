.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 47
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 50
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 51
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 52
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 53
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 55
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 57
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 58
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 60
    if-eqz p5, :cond_2

    .line 61
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 62
    .local v4, "modifiers":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 63
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 68
    .end local v4    # "modifiers":I
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 70
    const-wide/32 v2, -0x7ee3623b

    .line 71
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 73
    .local v0, "c":C
    int-to-long v6, v0

    xor-long/2addr v2, v6

    .line 74
    const-wide/32 v6, 0x1000193

    mul-long/2addr v2, v6

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "hashCode":J
    .restart local v4    # "modifiers":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 65
    .end local v4    # "modifiers":I
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 66
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_1

    .line 76
    .restart local v1    # "i":I
    .restart local v2    # "hashCode":J
    :cond_3
    iput-wide v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 78
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 94
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 95
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 96
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 99
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v6, 0x0

    .line 100
    .local v6, "format":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 104
    const/4 v6, 0x0

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 109
    if-eqz p3, :cond_4

    .line 110
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 111
    .local v11, "modifiers":I
    if-eqz p2, :cond_1

    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    if-ne v14, v15, :cond_2

    :cond_1
    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 112
    and-int/lit16 v14, v11, 0x80

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 118
    .end local v11    # "modifiers":I
    :goto_2
    const-wide/32 v8, -0x7ee3623b

    .line 119
    .local v8, "hashCode":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v10, v14, :cond_5

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 121
    .local v3, "c":C
    int-to-long v14, v3

    xor-long/2addr v8, v14

    .line 122
    const-wide/32 v14, 0x1000193

    mul-long/2addr v8, v14

    .line 119
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 111
    .end local v3    # "c":C
    .end local v8    # "hashCode":J
    .end local v10    # "i":I
    .restart local v11    # "modifiers":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 112
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 114
    .end local v11    # "modifiers":I
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 115
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_2

    .line 124
    .restart local v8    # "hashCode":J
    .restart local v10    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 128
    if-eqz p2, :cond_c

    .line 129
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 130
    .local v12, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v14, v12

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 131
    const/4 v14, 0x0

    aget-object v4, v12, v14

    .line 132
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/lang/Class;

    if-eq v4, v14, :cond_6

    const-class v14, Ljava/lang/String;

    if-eq v4, v14, :cond_6

    .line 134
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 135
    :cond_6
    move-object v5, v4

    .line 139
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 149
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 164
    .end local v12    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_6
    if-eqz p4, :cond_10

    const-class v14, Ljava/lang/Object;

    if-ne v4, v14, :cond_10

    instance-of v14, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v14, :cond_10

    move-object v13, v5

    .line 168
    check-cast v13, Ljava/lang/reflect/TypeVariable;

    .line 169
    .local v13, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 170
    .local v7, "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v7, :cond_10

    .line 171
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 172
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 174
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 196
    .end local v13    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_7
    return-void

    .line 137
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    .end local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v12    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_7
    if-eqz p10, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :goto_8
    goto :goto_4

    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_8
    move-object v5, v4

    goto :goto_8

    .line 141
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 142
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/lang/Class;

    if-ne v4, v14, :cond_a

    .line 143
    move-object v5, v4

    .line 147
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto :goto_5

    .line 145
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_a
    if-eqz p10, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :goto_a
    goto :goto_9

    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_b
    move-object v5, v4

    goto :goto_a

    .line 151
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 152
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_d

    const-class v14, Ljava/lang/String;

    if-eq v4, v14, :cond_d

    .line 154
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 155
    :cond_d
    move-object v5, v4

    .line 160
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 161
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto :goto_6

    .line 157
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_e
    if-eqz p10, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :goto_c
    goto :goto_b

    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_f
    move-object v5, v4

    goto :goto_c

    .line 179
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_10
    move-object v7, v5

    .line 181
    .restart local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v14, v5, Ljava/lang/Class;

    if-nez v14, :cond_11

    .line 182
    if-eqz p5, :cond_12

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_d
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 183
    if-eq v7, v5, :cond_11

    .line 184
    instance-of v14, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_13

    .line 185
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 192
    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 193
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 195
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-nez v14, :cond_14

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    goto/16 :goto_7

    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_12
    move-object/from16 p5, p4

    .line 182
    goto :goto_d

    .line 186
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_13
    instance-of v14, v7, Ljava/lang/Class;

    if-eqz v14, :cond_11

    .line 187
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_e

    .line 195
    :cond_14
    const/4 v14, 0x0

    goto :goto_f
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 21
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .local v9, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 272
    :goto_0
    return-object v10

    .line 203
    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v11, p2

    .line 204
    check-cast v11, Ljava/lang/reflect/GenericArrayType;

    .line 205
    .local v11, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v11}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 206
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 207
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v6, v7, :cond_2

    .line 208
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .local v10, "fieldTypeX":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .line 209
    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .end local v10    # "fieldTypeX":Ljava/lang/reflect/Type;
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 212
    goto :goto_0

    .line 215
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .end local v11    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 216
    goto :goto_0

    .line 219
    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 221
    .local v14, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v15

    .local v15, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v17, p2

    .line 222
    check-cast v17, Ljava/lang/reflect/TypeVariable;

    .line 224
    .local v17, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_6

    .line 225
    invoke-virtual {v15}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v19

    aget-object v19, v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 226
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    aget-object p2, v19, v12

    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 227
    goto :goto_0

    .line 224
    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 232
    .end local v12    # "i":I
    .end local v14    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v16, p2

    .line 233
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 235
    .local v16, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 236
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 237
    .local v5, "changed":Z
    const/16 v18, 0x0

    .line 238
    .local v18, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 240
    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v14, 0x0

    .line 241
    .restart local v14    # "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v14, p1

    .line 242
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 243
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    .line 249
    :cond_7
    :goto_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_c

    if-eqz v14, :cond_c

    .line 250
    aget-object v8, v4, v12

    .line 251
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v17, v8

    .line 252
    check-cast v17, Ljava/lang/reflect/TypeVariable;

    .line 254
    .restart local v17    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    .line 255
    aget-object v19, v18, v13

    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 256
    if-nez v3, :cond_8

    .line 257
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 259
    :cond_8
    aget-object v19, v3, v13

    aput-object v19, v4, v12

    .line 260
    const/4 v5, 0x1

    .line 254
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 244
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v17    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 245
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v14

    .end local v14    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 246
    .restart local v14    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    goto :goto_2

    .line 249
    .restart local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .restart local v12    # "i":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 265
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_c
    if-eqz v5, :cond_d

    .line 266
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v19

    .line 267
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 268
    goto/16 :goto_0

    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v4    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "changed":Z
    .end local v9    # "fieldType":Ljava/lang/reflect/Type;
    .end local v12    # "i":I
    .end local v14    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v18    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    :cond_d
    move-object/from16 v9, p2

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v10, p2

    .line 272
    goto/16 :goto_0
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v9, 0x0

    .line 276
    const/4 v6, 0x0

    .line 277
    .local v6, "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    .line 279
    .local v1, "gd":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 280
    if-nez v6, :cond_1

    move-object v8, v9

    .line 298
    :goto_0
    return-object v8

    .line 283
    :cond_1
    instance-of v8, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_6

    move-object v3, v6

    .line 284
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 285
    .local v3, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 286
    .local v4, "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    instance-of v8, v1, Ljava/lang/Class;

    if-eqz v8, :cond_3

    instance-of v8, v4, Ljava/lang/Class;

    if-eqz v8, :cond_3

    move-object v8, v1

    check-cast v8, Ljava/lang/Class;

    check-cast v4, Ljava/lang/Class;

    .end local v4    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 287
    .local v0, "eq":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 288
    invoke-interface {v1}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 289
    .local v5, "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 290
    .local v7, "types":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v5

    if-ge v2, v8, :cond_5

    .line 291
    aget-object v8, v5, v2

    if-ne v8, p1, :cond_4

    aget-object v8, v7, v2

    goto :goto_0

    .line 286
    .end local v0    # "eq":Z
    .end local v2    # "i":I
    .end local v5    # "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v7    # "types":[Ljava/lang/reflect/Type;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    .restart local v0    # "eq":Z
    .restart local v2    # "i":I
    .restart local v5    # "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v7    # "types":[Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v8, v9

    .line 293
    goto :goto_0

    .line 296
    .end local v0    # "eq":Z
    .end local v2    # "i":I
    .end local v3    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v7    # "types":[Ljava/lang/reflect/Type;
    :cond_6
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 297
    if-nez v6, :cond_0

    move-object v8, v9

    .line 298
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 306
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    .line 307
    const/4 v0, -0x1

    .line 314
    :goto_0
    return v0

    .line 310
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-le v0, v1, :cond_1

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v0, 0x1

    .line 318
    if-ne p1, p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 333
    iget-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
