.class public final Lcom/fimi/kernel/security/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/security/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/fimi/kernel/security/SecurePreferences;


# direct methods
.method private constructor <init>(Lcom/fimi/kernel/security/SecurePreferences;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/kernel/security/SecurePreferences;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->access$100(Lcom/fimi/kernel/security/SecurePreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/kernel/security/SecurePreferences;Lcom/fimi/kernel/security/SecurePreferences$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/kernel/security/SecurePreferences;
    .param p2, "x1"    # Lcom/fimi/kernel/security/SecurePreferences$1;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/fimi/kernel/security/SecurePreferences$Editor;-><init>(Lcom/fimi/kernel/security/SecurePreferences;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/kernel/security/SecurePreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 622
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    .line 609
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 601
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    .line 602
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 603
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    .line 588
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 589
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 594
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    .line 595
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 596
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    .line 553
    invoke-static {v2, p2}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 4
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
    .line 575
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    .line 576
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 577
    .local v0, "encryptedValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->this$0:Lcom/fimi/kernel/security/SecurePreferences;

    invoke-static {v3, v1}, Lcom/fimi/kernel/security/SecurePreferences;->access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 582
    return-object p0
.end method

.method public putUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 616
    return-object p0
.end method
