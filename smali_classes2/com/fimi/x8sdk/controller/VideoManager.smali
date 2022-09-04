.class public Lcom/fimi/x8sdk/controller/VideoManager;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "VideoManager.java"


# instance fields
.field presenter:Lcom/fimi/x8sdk/presenter/VideoPresenter;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/session/VideodDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/VideodDataListener;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 18
    new-instance v0, Lcom/fimi/x8sdk/presenter/VideoPresenter;

    invoke-direct {v0, p1}, Lcom/fimi/x8sdk/presenter/VideoPresenter;-><init>(Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/VideoManager;->presenter:Lcom/fimi/x8sdk/presenter/VideoPresenter;

    .line 19
    return-void
.end method


# virtual methods
.method public removeVideoDataListener()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/VideoManager;->presenter:Lcom/fimi/x8sdk/presenter/VideoPresenter;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/VideoManager;->presenter:Lcom/fimi/x8sdk/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/VideoPresenter;->removeVideaListener()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/VideoManager;->presenter:Lcom/fimi/x8sdk/presenter/VideoPresenter;

    .line 26
    :cond_0
    return-void
.end method
