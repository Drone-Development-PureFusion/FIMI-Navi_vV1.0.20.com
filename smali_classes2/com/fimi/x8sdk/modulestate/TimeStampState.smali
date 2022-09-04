.class public Lcom/fimi/x8sdk/modulestate/TimeStampState;
.super Ljava/lang/Object;
.source "TimeStampState.java"


# static fields
.field private static timeStampState:Lcom/fimi/x8sdk/modulestate/TimeStampState;


# instance fields
.field private timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/fimi/x8sdk/modulestate/TimeStampState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/TimeStampState;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/modulestate/TimeStampState;->timeStampState:Lcom/fimi/x8sdk/modulestate/TimeStampState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/modulestate/TimeStampState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fimi/x8sdk/modulestate/TimeStampState;->timeStampState:Lcom/fimi/x8sdk/modulestate/TimeStampState;

    return-object v0
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/TimeStampState;->timeStamp:J

    return-wide v0
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/TimeStampState;->timeStamp:J

    .line 22
    return-void
.end method
