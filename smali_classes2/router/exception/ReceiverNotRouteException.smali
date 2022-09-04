.class public Lrouter/exception/ReceiverNotRouteException;
.super Lrouter/exception/NotRouteException;
.source "ReceiverNotRouteException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 7
    const-string v0, "receiver"

    invoke-direct {p0, v0, p1}, Lrouter/exception/NotRouteException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
