.class public Lcom/fimi/x8sdk/util/X8LogBack;
.super Ljava/lang/Object;
.source "X8LogBack.java"


# static fields
.field private static x9LogBack:Lcom/fimi/x8sdk/util/X8LogBack;


# instance fields
.field x9HandLogger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/fimi/x8sdk/util/X8LogBack;

    invoke-direct {v0}, Lcom/fimi/x8sdk/util/X8LogBack;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/util/X8LogBack;->x9LogBack:Lcom/fimi/x8sdk/util/X8LogBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "x9_hand_log"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/util/X8LogBack;->x9HandLogger:Lorg/slf4j/Logger;

    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/util/X8LogBack;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fimi/x8sdk/util/X8LogBack;->x9LogBack:Lcom/fimi/x8sdk/util/X8LogBack;

    return-object v0
.end method
