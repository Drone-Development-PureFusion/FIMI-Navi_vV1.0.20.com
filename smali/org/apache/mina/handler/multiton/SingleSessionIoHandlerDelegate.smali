.class public Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;
.super Ljava/lang/Object;
.source "SingleSessionIoHandlerDelegate.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HANDLER:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;

    const-string v2, "handler"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    .line 66
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 136
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public getFactory()Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    return-object v0
.end method

.method public inputClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 168
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p1}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->inputClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 169
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 148
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->messageReceived(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 160
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->messageSent(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 112
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionClosed()V

    .line 113
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    invoke-interface {v1, p1}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;->getHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    move-result-object v0

    .line 87
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionCreated()V

    .line 89
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 124
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    .line 125
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 100
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionOpened()V

    .line 101
    return-void
.end method
