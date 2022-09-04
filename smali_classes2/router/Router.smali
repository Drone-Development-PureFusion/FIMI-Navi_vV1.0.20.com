.class public Lrouter/Router;
.super Ljava/lang/Object;
.source "Router.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "rule"    # Lrouter/rule/Rule;

    .prologue
    .line 25
    invoke-static {}, Lrouter/RouterInternal;->get()Lrouter/RouterInternal;

    move-result-object v0

    .line 26
    .local v0, "router":Lrouter/RouterInternal;
    invoke-virtual {v0, p0, p1}, Lrouter/RouterInternal;->addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;

    .line 27
    return-object v0
.end method

.method public static invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lrouter/RouterInternal;->get()Lrouter/RouterInternal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lrouter/RouterInternal;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static resolveRouter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lrouter/RouterInternal;->get()Lrouter/RouterInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrouter/RouterInternal;->resolveRouter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrouter/RouterInternal;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lrouter/RouterInternal;->get()Lrouter/RouterInternal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lrouter/RouterInternal;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    move-result-object v0

    return-object v0
.end method
