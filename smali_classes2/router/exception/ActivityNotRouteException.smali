.class public Lrouter/exception/ActivityNotRouteException;
.super Lrouter/exception/NotRouteException;
.source "ActivityNotRouteException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string v0, "activity"

    invoke-direct {p0, v0, p1}, Lrouter/exception/NotRouteException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
