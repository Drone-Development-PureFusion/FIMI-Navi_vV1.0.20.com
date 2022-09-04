.class public abstract Lrouter/rule/BaseIntentRule;
.super Ljava/lang/Object;
.source "BaseIntentRule.java"

# interfaces
.implements Lrouter/rule/Rule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrouter/rule/Rule",
        "<TT;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private mIntentRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lrouter/rule/BaseIntentRule;, "Lrouter/rule/BaseIntentRule<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrouter/rule/BaseIntentRule;->mIntentRules:Ljava/util/HashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lrouter/rule/BaseIntentRule;, "Lrouter/rule/BaseIntentRule<TT;>;"
    iget-object v1, p0, Lrouter/rule/BaseIntentRule;->mIntentRules:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 34
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lrouter/rule/BaseIntentRule;->throwException(Ljava/lang/String;)V

    .line 35
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lrouter/rule/BaseIntentRule;, "Lrouter/rule/BaseIntentRule<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrouter/rule/BaseIntentRule;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public resolveRule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lrouter/rule/BaseIntentRule;, "Lrouter/rule/BaseIntentRule<TT;>;"
    iget-object v0, p0, Lrouter/rule/BaseIntentRule;->mIntentRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public router(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lrouter/rule/BaseIntentRule;, "Lrouter/rule/BaseIntentRule<TT;>;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lrouter/rule/BaseIntentRule;->mIntentRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public abstract throwException(Ljava/lang/String;)V
.end method
