.class public Lcom/fimi/kernel/base/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/fimi/kernel/base/EventMessage;, "Lcom/fimi/kernel/base/EventMessage<TT;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fimi/kernel/base/EventMessage;->key:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/fimi/kernel/base/EventMessage;->message:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/fimi/kernel/base/EventMessage;, "Lcom/fimi/kernel/base/EventMessage<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/base/EventMessage;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/fimi/kernel/base/EventMessage;, "Lcom/fimi/kernel/base/EventMessage<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/base/EventMessage;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    .local p0, "this":Lcom/fimi/kernel/base/EventMessage;, "Lcom/fimi/kernel/base/EventMessage<TT;>;"
    iput-object p1, p0, Lcom/fimi/kernel/base/EventMessage;->key:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/fimi/kernel/base/EventMessage;, "Lcom/fimi/kernel/base/EventMessage<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/fimi/kernel/base/EventMessage;->message:Ljava/lang/Object;

    .line 30
    return-void
.end method
