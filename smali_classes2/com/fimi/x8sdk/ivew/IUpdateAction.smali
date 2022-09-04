.class public interface abstract Lcom/fimi/x8sdk/ivew/IUpdateAction;
.super Ljava/lang/Object;
.source "IUpdateAction.java"


# virtual methods
.method public abstract firmwareBuildPack(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract removeNoticeList()V
.end method

.method public abstract setOnUpdateProgress(Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;)V
.end method
