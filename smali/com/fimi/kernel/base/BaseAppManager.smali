.class public Lcom/fimi/kernel/base/BaseAppManager;
.super Ljava/lang/Object;
.source "BaseAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/fimi/kernel/base/BaseAppManager;

.field private static mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/fimi/kernel/base/BaseAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/base/BaseAppManager;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/base/BaseAppManager;->instance:Lcom/fimi/kernel/base/BaseAppManager;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/base/BaseAppManager;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->instance:Lcom/fimi/kernel/base/BaseAppManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/fimi/kernel/base/BaseAppManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->instance:Lcom/fimi/kernel/base/BaseAppManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fimi/kernel/base/BaseAppManager;

    invoke-direct {v0}, Lcom/fimi/kernel/base/BaseAppManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/base/BaseAppManager;->instance:Lcom/fimi/kernel/base/BaseAppManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->instance:Lcom/fimi/kernel/base/BaseAppManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 56
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseAppManager;->removeActivity(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 59
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 55
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 61
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearToTop()V
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 65
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseAppManager;->removeActivity(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    sget-object v2, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 64
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getForwardActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseAppManager;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseAppManager;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fimi/kernel/base/BaseAppManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
