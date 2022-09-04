.class public Lcom/securepreferences/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/securepreferences/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/securepreferences/SecurePreferences;


# direct methods
.method private constructor <init>(Lcom/securepreferences/SecurePreferences;)V
    .locals 1

    .prologue
    .line 516
    iput-object p1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->access$100(Lcom/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/securepreferences/SecurePreferences;Lcom/securepreferences/SecurePreferences$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/securepreferences/SecurePreferences;
    .param p2, "x1"    # Lcom/securepreferences/SecurePreferences$1;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/securepreferences/SecurePreferences$Editor;-><init>(Lcom/securepreferences/SecurePreferences;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 594
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 573
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 566
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {v2, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
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
    .line 547
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 549
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

    .line 550
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {v3, v2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 554
    return-object p0
.end method

.method public putUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 588
    return-object p0
.end method
