.class public Lcom/fimi/kernel/dataparser/CmdSession;
.super Ljava/lang/Object;
.source "CmdSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;
    }
.end annotation


# instance fields
.field private cmd:Lcom/fimi/kernel/connect/BaseCommand;

.field public cmdQue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connect:Lcom/fimi/kernel/connect/BaseConnect;

.field public sendCount:I

.field public seq:I

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/BaseCommand;Lcom/fimi/kernel/connect/BaseConnect;)V
    .locals 2
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;
    .param p2, "connect"    # Lcom/fimi/kernel/connect/BaseConnect;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->startTime:J

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmdQue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 30
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    .line 31
    iput-object p2, p0, Lcom/fimi/kernel/dataparser/CmdSession;->connect:Lcom/fimi/kernel/connect/BaseConnect;

    .line 32
    new-instance v0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;-><init>(Lcom/fimi/kernel/dataparser/CmdSession;)V

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->start()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/dataparser/CmdSession;)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/dataparser/CmdSession;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/dataparser/CmdSession;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/kernel/dataparser/CmdSession;

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/dataparser/CmdSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/dataparser/CmdSession;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/CmdSession;->reSend()V

    return-void
.end method

.method private reSend()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->connect:Lcom/fimi/kernel/connect/BaseConnect;

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/BaseConnect;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getCmd()Lcom/fimi/kernel/connect/BaseCommand;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession;->cmd:Lcom/fimi/kernel/connect/BaseCommand;

    .line 50
    return-void
.end method
