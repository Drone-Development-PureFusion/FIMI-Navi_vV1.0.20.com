.class public Lcom/securepreferences/SecurePreferencesOld$Editor;
.super Ljava/lang/Object;
.source "SecurePreferencesOld.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/securepreferences/SecurePreferencesOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    invoke-static {}, Lcom/securepreferences/SecurePreferencesOld;->access$100()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 413
    return-void
.end method

.method synthetic constructor <init>(Lcom/securepreferences/SecurePreferencesOld$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/securepreferences/SecurePreferencesOld$1;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/securepreferences/SecurePreferencesOld$Editor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferencesOld$Editor;->commit()Z

    goto :goto_0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 489
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 468
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 461
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    return-object p0
.end method

.method public putStringNoEncrypted(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 442
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 444
    .local v0, "encryptedValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 449
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    return-object p0
.end method
