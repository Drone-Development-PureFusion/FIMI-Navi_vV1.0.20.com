.class final Lcom/github/moduth/blockcanary/HandlerThreadFactory;
.super Ljava/lang/Object;
.source "HandlerThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;
    }
.end annotation


# static fields
.field private static sLoopThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

.field private static sWriteLogThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    const-string v1, "loop"

    invoke-direct {v0, v1}, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->sLoopThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    .line 24
    new-instance v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    const-string v1, "writer"

    invoke-direct {v0, v1}, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->sWriteLogThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimerThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->sLoopThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getWriteLogThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->sWriteLogThread:Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/HandlerThreadFactory$HandlerThreadWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
