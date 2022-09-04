.class public Lcom/alibaba/fastjson/util/IdentityHashMap;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final indexMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    .line 32
    new-array v0, p1, [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .line 33
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 37
    .local v2, "hash":I
    iget v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int v0, v2, v3

    .line 39
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    .line 41
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 45
    :goto_1
    return-object v3

    .line 39
    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 50
    .local v2, "hash":I
    iget v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int v0, v2, v3

    .line 52
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    iget-object v3, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    .line 54
    iput-object p2, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 55
    const/4 v3, 0x1

    .line 62
    :goto_1
    return v3

    .line 52
    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .end local v1    # "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v3, v3, v0

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V

    .line 60
    .restart local v1    # "entry":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aput-object v1, v3, v0

    .line 62
    const/4 v3, 0x0

    goto :goto_1
.end method
