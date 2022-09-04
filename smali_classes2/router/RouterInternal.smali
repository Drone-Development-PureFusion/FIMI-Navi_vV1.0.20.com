.class public Lrouter/RouterInternal;
.super Ljava/lang/Object;
.source "RouterInternal.java"


# static fields
.field private static sInstance:Lrouter/RouterInternal;


# instance fields
.field private mRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lrouter/rule/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrouter/RouterInternal;->mRules:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0}, Lrouter/RouterInternal;->initDefaultRouter()V

    .line 27
    return-void
.end method

.method static get()Lrouter/RouterInternal;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lrouter/RouterInternal;->sInstance:Lrouter/RouterInternal;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lrouter/RouterInternal;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lrouter/RouterInternal;->sInstance:Lrouter/RouterInternal;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lrouter/RouterInternal;

    invoke-direct {v0}, Lrouter/RouterInternal;-><init>()V

    sput-object v0, Lrouter/RouterInternal;->sInstance:Lrouter/RouterInternal;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lrouter/RouterInternal;->sInstance:Lrouter/RouterInternal;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRule(Ljava/lang/String;)Lrouter/rule/Rule;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lrouter/rule/Rule",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lrouter/RouterInternal;->mRules:Ljava/util/HashMap;

    .line 63
    .local v2, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lrouter/rule/Rule;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 65
    .local v1, "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<TT;TV;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<TT;TV;>;"
    check-cast v1, Lrouter/rule/Rule;

    .line 72
    .end local v3    # "scheme":Ljava/lang/String;
    .restart local v1    # "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<TT;TV;>;"
    :cond_1
    return-object v1
.end method

.method private initDefaultRouter()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "activity://"

    new-instance v1, Lrouter/rule/ActivityRule;

    invoke-direct {v1}, Lrouter/rule/ActivityRule;-><init>()V

    invoke-virtual {p0, v0, v1}, Lrouter/RouterInternal;->addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;

    .line 34
    const-string v0, "service://"

    new-instance v1, Lrouter/rule/ServiceRule;

    invoke-direct {v1}, Lrouter/rule/ServiceRule;-><init>()V

    invoke-virtual {p0, v0, v1}, Lrouter/RouterInternal;->addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;

    .line 35
    const-string v0, "receiver://"

    new-instance v1, Lrouter/rule/ReceiverRule;

    invoke-direct {v1}, Lrouter/rule/ReceiverRule;-><init>()V

    invoke-virtual {p0, v0, v1}, Lrouter/RouterInternal;->addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;

    .line 36
    return-void
.end method


# virtual methods
.method public final addRule(Ljava/lang/String;Lrouter/rule/Rule;)Lrouter/RouterInternal;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "rule"    # Lrouter/rule/Rule;

    .prologue
    .line 57
    iget-object v0, p0, Lrouter/RouterInternal;->mRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method final invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pattern"    # Ljava/lang/String;
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
    .line 98
    invoke-direct {p0, p2}, Lrouter/RouterInternal;->getRule(Ljava/lang/String;)Lrouter/rule/Rule;

    move-result-object v0

    .line 99
    .local v0, "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<*TV;>;"
    if-nez v0, :cond_0

    .line 100
    new-instance v1, Lrouter/exception/NotRouteException;

    const-string v2, "unknown"

    invoke-direct {v1, v2, p2}, Lrouter/exception/NotRouteException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    invoke-interface {v0, p1, p2}, Lrouter/rule/Rule;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final resolveRouter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lrouter/RouterInternal;->getRule(Ljava/lang/String;)Lrouter/rule/Rule;

    move-result-object v0

    .line 113
    .local v0, "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<**>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lrouter/rule/Rule;->resolveRule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
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
    .line 82
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lrouter/RouterInternal;->getRule(Ljava/lang/String;)Lrouter/rule/Rule;

    move-result-object v0

    .line 83
    .local v0, "rule":Lrouter/rule/Rule;, "Lrouter/rule/Rule<TT;*>;"
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Lrouter/exception/NotRouteException;

    const-string v2, "unknown"

    invoke-direct {v1, v2, p1}, Lrouter/exception/NotRouteException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-interface {v0, p1, p2}, Lrouter/rule/Rule;->router(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    return-object p0
.end method
