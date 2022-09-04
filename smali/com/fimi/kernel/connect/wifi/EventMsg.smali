.class public abstract Lcom/fimi/kernel/connect/wifi/EventMsg;
.super Ljava/lang/Object;
.source "EventMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;
    }
.end annotation


# instance fields
.field private msg_content:Ljava/lang/Object;

.field private msg_id:I

.field private type:Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg_content()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->msg_content:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->msg_id:I

    return v0
.end method

.method public getType()Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->type:Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;

    return-object v0
.end method

.method public setMsg_content(Ljava/lang/Object;)V
    .locals 0
    .param p1, "msg_content"    # Ljava/lang/Object;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->msg_content:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->msg_id:I

    .line 23
    return-void
.end method

.method public setType(Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;)V
    .locals 0
    .param p1, "type"    # Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/kernel/connect/wifi/EventMsg;->type:Lcom/fimi/kernel/connect/wifi/EventMsg$msgType;

    .line 31
    return-void
.end method
