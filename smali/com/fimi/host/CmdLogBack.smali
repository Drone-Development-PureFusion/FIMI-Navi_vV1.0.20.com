.class public Lcom/fimi/host/CmdLogBack;
.super Ljava/lang/Object;
.source "CmdLogBack.java"


# static fields
.field private static hostLogBack:Lcom/fimi/host/CmdLogBack;


# instance fields
.field private isLog:Z

.field logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fimi/host/CmdLogBack;

    invoke-direct {v0}, Lcom/fimi/host/CmdLogBack;-><init>()V

    sput-object v0, Lcom/fimi/host/CmdLogBack;->hostLogBack:Lcom/fimi/host/CmdLogBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/host/CmdLogBack;->isLog:Z

    .line 15
    const-string/jumbo v0, "x8s_cmd_log"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/host/CmdLogBack;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public static getInstance()Lcom/fimi/host/CmdLogBack;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fimi/host/CmdLogBack;->hostLogBack:Lcom/fimi/host/CmdLogBack;

    return-object v0
.end method


# virtual methods
.method public writeLog([BZ)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "isUp"    # Z

    .prologue
    .line 24
    iget-boolean v2, p0, Lcom/fimi/host/CmdLogBack;->isLog:Z

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "logStr":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v1, "send-->"

    .line 27
    .local v1, "logTag":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/fimi/host/CmdLogBack;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 29
    .end local v0    # "logStr":Ljava/lang/String;
    .end local v1    # "logTag":Ljava/lang/String;
    :cond_0
    return-void

    .line 26
    .restart local v0    # "logStr":Ljava/lang/String;
    :cond_1
    const-string v1, "recv-->"

    goto :goto_0
.end method
