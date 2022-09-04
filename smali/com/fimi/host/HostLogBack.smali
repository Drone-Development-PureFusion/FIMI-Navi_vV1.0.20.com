.class public Lcom/fimi/host/HostLogBack;
.super Ljava/lang/Object;
.source "HostLogBack.java"


# static fields
.field private static hostLogBack:Lcom/fimi/host/HostLogBack;


# instance fields
.field logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/host/HostLogBack;

    invoke-direct {v0}, Lcom/fimi/host/HostLogBack;-><init>()V

    sput-object v0, Lcom/fimi/host/HostLogBack;->hostLogBack:Lcom/fimi/host/HostLogBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "host_app_log"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/host/HostLogBack;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public static getInstance()Lcom/fimi/host/HostLogBack;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fimi/host/HostLogBack;->hostLogBack:Lcom/fimi/host/HostLogBack;

    return-object v0
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/host/HostLogBack;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App ==>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public writeRelayLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/host/HostLogBack;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relay==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 27
    return-void
.end method
