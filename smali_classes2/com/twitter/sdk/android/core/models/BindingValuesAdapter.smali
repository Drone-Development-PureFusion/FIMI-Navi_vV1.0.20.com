.class public Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;
.super Ljava/lang/Object;
.source "BindingValuesAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/twitter/sdk/android/core/models/BindingValues;",
        ">;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/twitter/sdk/android/core/models/BindingValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_MEMBER:Ljava/lang/String; = "boolean_value"

.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "BOOLEAN"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "IMAGE"

.field private static final IMAGE_VALUE_MEMBER:Ljava/lang/String; = "image_value"

.field private static final STRING_TYPE:Ljava/lang/String; = "STRING"

.field private static final TYPE_MEMBER:Ljava/lang/String; = "type"

.field private static final TYPE_VALUE_MEMBER:Ljava/lang/String; = "string_value"

.field private static final USER_TYPE:Ljava/lang/String; = "USER"

.field private static final USER_VALUE_MEMBER:Ljava/lang/String; = "user_value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/twitter/sdk/android/core/models/BindingValues;
    .locals 9
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    new-instance v7, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-direct {v7}, Lcom/twitter/sdk/android/core/models/BindingValues;-><init>()V

    .line 71
    :goto_0
    return-object v7

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 60
    .local v5, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 62
    .local v4, "members":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    new-instance v0, Ljava/util/HashMap;

    const/16 v7, 0x20

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    .local v0, "bindingHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "member":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 66
    .local v3, "memberObj":Lcom/google/gson/JsonObject;
    invoke-virtual {p0, v3, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->getValue(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "member":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v3    # "memberObj":Lcom/google/gson/JsonObject;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v7, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-direct {v7, v0}, Lcom/twitter/sdk/android/core/models/BindingValues;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/twitter/sdk/android/core/models/BindingValues;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "context"    # Lcom/google/gson/JsonDeserializationContext;

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 76
    .local v0, "typeObj":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    const-string v1, "string_value"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 80
    :sswitch_0
    const-string v4, "STRING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "IMAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "BOOLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    .line 84
    :pswitch_1
    const-string v1, "image_value"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/core/models/ImageValue;

    invoke-interface {p2, v1, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v1, "user_value"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/core/models/UserValue;

    invoke-interface {p2, v1, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 88
    :pswitch_3
    const-string v1, "boolean_value"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {p2, v1, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x6d97abef -> :sswitch_0
        0x27e3cb -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x2ea6f808 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public serialize(Lcom/twitter/sdk/android/core/models/BindingValues;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Lcom/twitter/sdk/android/core/models/BindingValues;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->serialize(Lcom/twitter/sdk/android/core/models/BindingValues;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
