.class public Lcom/fimi/x8sdk/presenter/VideoPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "VideoPresenter.java"


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/session/VideodDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/VideodDataListener;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/presenter/VideoPresenter;->addNoticeListener(Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public removeVideaListener()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/VideoPresenter;->removeFpvListener()V

    .line 19
    return-void
.end method
