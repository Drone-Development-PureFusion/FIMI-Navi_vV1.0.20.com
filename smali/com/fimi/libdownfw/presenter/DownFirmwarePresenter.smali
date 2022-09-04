.class public Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;
.super Ljava/lang/Object;
.source "DownFirmwarePresenter.java"

# interfaces
.implements Lcom/fimi/network/IDownProgress;


# instance fields
.field iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;


# direct methods
.method public constructor <init>(Lcom/fimi/libdownfw/ivew/IFirmwareDownView;)V
    .locals 1
    .param p1, "iFirmwareDownView"    # Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;->iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    .line 18
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/network/DownNoticeMananger;->addDownNoticeList(Lcom/fimi/network/IDownProgress;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 1
    .param p1, "isResult"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progrss"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/libdownfw/presenter/DownFirmwarePresenter;->iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/libdownfw/ivew/IFirmwareDownView;->showDownFwProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public removerDownNoticeLisnter()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/network/DownNoticeMananger;->remioveDownNoticeList(Lcom/fimi/network/IDownProgress;)V

    .line 32
    return-void
.end method
