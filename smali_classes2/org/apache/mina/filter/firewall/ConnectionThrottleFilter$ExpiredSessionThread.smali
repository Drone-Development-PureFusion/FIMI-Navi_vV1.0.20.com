.class Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
.super Ljava/lang/Thread;
.source "ConnectionThrottleFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpiredSessionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
    .param p2, "x1"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;-><init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 69
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    .local v2, "currentTime":J
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    :try_start_1
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 84
    .local v6, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 86
    .local v5, "session":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    .local v0, "creationTime":J
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J

    move-result-wide v8

    add-long/2addr v8, v0

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    .line 89
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "creationTime":J
    .end local v5    # "session":Ljava/lang/String;
    .end local v6    # "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v8}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 70
    .end local v2    # "currentTime":J
    :catch_0
    move-exception v4

    .line 95
    :goto_1
    return-void

    .line 93
    .restart local v2    # "currentTime":J
    .restart local v6    # "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->this$0:Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v7}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method
