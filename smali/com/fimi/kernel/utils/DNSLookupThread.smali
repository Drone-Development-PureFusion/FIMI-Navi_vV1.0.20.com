.class public Lcom/fimi/kernel/utils/DNSLookupThread;
.super Ljava/lang/Thread;
.source "DNSLookupThread.java"


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fimi/kernel/utils/DNSLookupThread;->hostname:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static isDSNSuceess()Z
    .locals 4

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "ret":Z
    new-instance v0, Lcom/fimi/kernel/utils/DNSLookupThread;

    const-string/jumbo v2, "www.baidu.com"

    invoke-direct {v0, v2}, Lcom/fimi/kernel/utils/DNSLookupThread;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "dnsTh":Lcom/fimi/kernel/utils/DNSLookupThread;
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->start()V

    .line 42
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/utils/DNSLookupThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->getIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 49
    :cond_0
    return v1

    .line 43
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized set(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fimi/kernel/utils/DNSLookupThread;->addr:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/utils/DNSLookupThread;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/fimi/kernel/utils/DNSLookupThread;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 34
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/utils/DNSLookupThread;->hostname:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 20
    .local v0, "add":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->set(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0    # "add":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v1

    goto :goto_0
.end method
