.class public Lcom/fimi/x8sdk/controller/X8VcManager;
.super Ljava/lang/Object;
.source "X8VcManager.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IVcAction;


# instance fields
.field vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8VcPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/X8VcManager;->vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;

    .line 15
    return-void
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8VcManager;->vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;

    check-cast v0, Lcom/fimi/x8sdk/presenter/X8VcPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->setContext(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public setVcFpvLostSeq(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "seq"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8VcManager;->vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IVcAction;->setVcFpvLostSeq(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 33
    return-void
.end method

.method public setVcFpvMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8VcManager;->vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IVcAction;->setVcFpvMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 27
    return-void
.end method

.method public setVcRectF(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIIII)V
    .locals 7
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "classfier"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8VcManager;->vcAction:Lcom/fimi/x8sdk/ivew/IVcAction;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/fimi/x8sdk/ivew/IVcAction;->setVcRectF(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIIII)V

    .line 22
    return-void
.end method
