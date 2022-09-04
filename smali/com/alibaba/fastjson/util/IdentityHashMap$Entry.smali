.class public final Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
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
.field public final hashCode:I

.field public final key:Ljava/lang/reflect/Type;

.field public final next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;I",
            "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/reflect/Type;

    .line 74
    iput-object p2, p0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 75
    iput-object p4, p0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .line 76
    iput p3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->hashCode:I

    .line 77
    return-void
.end method
