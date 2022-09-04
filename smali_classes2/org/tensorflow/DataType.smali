.class public final enum Lorg/tensorflow/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/tensorflow/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/DataType;

.field public static final enum BOOL:Lorg/tensorflow/DataType;

.field public static final enum DOUBLE:Lorg/tensorflow/DataType;

.field public static final enum FLOAT:Lorg/tensorflow/DataType;

.field public static final enum INT32:Lorg/tensorflow/DataType;

.field public static final enum INT64:Lorg/tensorflow/DataType;

.field public static final enum STRING:Lorg/tensorflow/DataType;

.field public static final enum UINT8:Lorg/tensorflow/DataType;

.field private static final typeCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/tensorflow/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final values:[Lorg/tensorflow/DataType;


# instance fields
.field private final byteSize:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 26
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v9, v5, v6}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    .line 29
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "DOUBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v7, v2}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    .line 32
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "INT32"

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    .line 35
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "UINT8"

    invoke-direct {v0, v1, v8, v6, v5}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->UINT8:Lorg/tensorflow/DataType;

    .line 42
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "STRING"

    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    .line 45
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "INT64"

    const/4 v2, 0x5

    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    .line 48
    new-instance v0, Lorg/tensorflow/DataType;

    const-string v1, "BOOL"

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/tensorflow/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/tensorflow/DataType;->BOOL:Lorg/tensorflow/DataType;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/tensorflow/DataType;

    sget-object v1, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/tensorflow/DataType;->UINT8:Lorg/tensorflow/DataType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/tensorflow/DataType;->BOOL:Lorg/tensorflow/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/tensorflow/DataType;->$VALUES:[Lorg/tensorflow/DataType;

    .line 76
    invoke-static {}, Lorg/tensorflow/DataType;->values()[Lorg/tensorflow/DataType;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/DataType;->values:[Lorg/tensorflow/DataType;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    .line 108
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Lorg/tensorflow/types/UInt8;

    sget-object v2, Lorg/tensorflow/DataType;->UINT8:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/tensorflow/DataType;->BOOL:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "byteSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lorg/tensorflow/DataType;->value:I

    .line 60
    iput p4, p0, Lorg/tensorflow/DataType;->byteSize:I

    .line 61
    return-void
.end method

.method static fromC(I)Lorg/tensorflow/DataType;
    .locals 5
    .param p0, "c"    # I

    .prologue
    .line 79
    sget-object v2, Lorg/tensorflow/DataType;->values:[Lorg/tensorflow/DataType;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 80
    .local v0, "t":Lorg/tensorflow/DataType;
    iget v4, v0, Lorg/tensorflow/DataType;->value:I

    if-ne v4, p0, :cond_0

    .line 81
    return-object v0

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "t":Lorg/tensorflow/DataType;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not recognized in Java (version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-static {}, Lorg/tensorflow/TensorFlow;->version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/tensorflow/DataType;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/tensorflow/DataType;->typeCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/DataType;

    .line 98
    .local v0, "dtype":Lorg/tensorflow/DataType;
    if-nez v0, :cond_0

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " objects cannot be used as elements in a TensorFlow Tensor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/tensorflow/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/DataType;

    return-object v0
.end method

.method public static values()[Lorg/tensorflow/DataType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/tensorflow/DataType;->$VALUES:[Lorg/tensorflow/DataType;

    invoke-virtual {v0}, [Lorg/tensorflow/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/DataType;

    return-object v0
.end method


# virtual methods
.method public byteSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/tensorflow/DataType;->byteSize:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/tensorflow/DataType;->value:I

    return v0
.end method
