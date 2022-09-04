.class public abstract Lcom/fimi/network/oauth2/CallBackListner;
.super Ljava/lang/Object;
.source "CallBackListner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
.end method
