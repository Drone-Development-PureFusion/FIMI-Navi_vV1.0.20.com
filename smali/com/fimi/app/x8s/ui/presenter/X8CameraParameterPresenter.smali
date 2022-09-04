.class public Lcom/fimi/app/x8s/ui/presenter/X8CameraParameterPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8CameraParameterPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSdcard()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 95
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 32
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 37
    return-void
.end method

.method public setPreviewVideo(I)V
    .locals 0
    .param p1, "resolution"    # I

    .prologue
    .line 56
    return-void
.end method

.method public setTakePhotoParamter()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public setVideoParamters()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
