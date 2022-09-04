.class public Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;
.super Ljava/lang/Object;
.source "PreferenceStoreStrategy.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/persistence/PersistenceStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/persistence/PersistenceStrategy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final serializer:Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;
    .param p3, "preferenceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;",
            "Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;, "Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy<TT;>;"
    .local p2, "serializer":Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;, "Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .line 33
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->serializer:Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;

    .line 34
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->key:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;, "Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public restore()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;, "Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "store":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->serializer:Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->key:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;, "Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->store:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreStrategy;->serializer:Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;

    invoke-interface {v3, p1}, Lcom/twitter/sdk/android/core/internal/persistence/SerializationStrategy;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 41
    return-void
.end method
