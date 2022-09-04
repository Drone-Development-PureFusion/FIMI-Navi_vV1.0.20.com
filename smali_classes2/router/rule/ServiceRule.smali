.class public Lrouter/rule/ServiceRule;
.super Lrouter/rule/BaseIntentRule;
.source "ServiceRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrouter/rule/BaseIntentRule",
        "<",
        "Landroid/app/Service;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVICE_SCHEME:Ljava/lang/String; = "service://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lrouter/rule/BaseIntentRule;-><init>()V

    return-void
.end method


# virtual methods
.method public throwException(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lrouter/exception/ServiceNotRouteException;

    invoke-direct {v0, p1}, Lrouter/exception/ServiceNotRouteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
