.class public Lcom/twitter/sdk/android/core/models/Card;
.super Ljava/lang/Object;
.source "Card.java"


# instance fields
.field public final bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binding_values"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/models/BindingValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "bindingValues"    # Lcom/twitter/sdk/android/core/models/BindingValues;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/Card;->bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;

    .line 32
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Card;->name:Ljava/lang/String;

    .line 33
    return-void
.end method
