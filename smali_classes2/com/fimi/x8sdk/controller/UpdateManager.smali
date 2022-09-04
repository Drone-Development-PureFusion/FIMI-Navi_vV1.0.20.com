.class public Lcom/fimi/x8sdk/controller/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IUpdateAction;


# instance fields
.field updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {v0, p1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/UpdateManager;->updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;

    .line 23
    return-void
.end method


# virtual methods
.method public firmwareBuildPack(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "fwInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/UpdateManager;->updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IUpdateAction;->firmwareBuildPack(Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/UpdateManager;->updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IUpdateAction;->queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 28
    return-void
.end method

.method public removeNoticeList()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/UpdateManager;->updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/IUpdateAction;->removeNoticeList()V

    .line 43
    return-void
.end method

.method public setOnUpdateProgress(Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;)V
    .locals 1
    .param p1, "ix8UpdateProgressView"    # Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/UpdateManager;->updateAction:Lcom/fimi/x8sdk/ivew/IUpdateAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IUpdateAction;->setOnUpdateProgress(Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;)V

    .line 38
    return-void
.end method
