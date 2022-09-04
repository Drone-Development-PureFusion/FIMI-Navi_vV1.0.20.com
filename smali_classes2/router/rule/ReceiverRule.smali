.class public Lrouter/rule/ReceiverRule;
.super Lrouter/rule/BaseIntentRule;
.source "ReceiverRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrouter/rule/BaseIntentRule",
        "<",
        "Landroid/content/BroadcastReceiver;",
        ">;"
    }
.end annotation


# static fields
.field public static final RECEIVER_SCHEME:Ljava/lang/String; = "receiver://"


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
    new-instance v0, Lrouter/exception/ReceiverNotRouteException;

    invoke-direct {v0, p1}, Lrouter/exception/ReceiverNotRouteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
