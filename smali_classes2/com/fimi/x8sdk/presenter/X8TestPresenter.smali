.class public Lcom/fimi/x8sdk/presenter/X8TestPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8TestPresenter.java"


# instance fields
.field fileDataTcpConnect:Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;

.field iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

.field listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

.field mHandler:Landroid/os/Handler;

.field updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;Lcom/fimi/x8sdk/ivew/IAOATestView;)V
    .locals 1
    .param p1, "updateView"    # Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;
    .param p2, "iaoaTestView"    # Lcom/fimi/x8sdk/ivew/IAOATestView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 37
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$1;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8TestPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    .line 141
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;-><init>(Lcom/fimi/x8sdk/presenter/X8TestPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    .line 51
    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    .line 52
    new-instance v0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->fileDataTcpConnect:Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;

    .line 53
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->addNoticeListener(Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public connectDataChanel()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->fileDataTcpConnect:Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->getFileSocketManager()Lcom/fimi/kernel/connect/tcp/SocketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/SocketManager;->connect()Z

    move-result v0

    .line 97
    .local v0, "isConnect":Z
    const-string v1, "moweiru"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public disConnectDataChanel()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

.method public getCameraVer()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getCameraVer()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 58
    return-void
.end method

.method public getTestContent(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/x8sdk/common/BasePresenter;->onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    .line 68
    const/16 v2, 0x10

    if-ne p1, v2, :cond_2

    .line 69
    const/16 v2, -0x4f

    if-ne p2, v2, :cond_0

    move-object v0, p3

    .line 70
    check-cast v0, Lcom/fimi/x8sdk/dataparser/CameraVersion;

    .line 71
    .local v0, "a12Version":Lcom/fimi/x8sdk/dataparser/CameraVersion;
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/CameraVersion;->getMainVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/CameraVersion;->getStepVer()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->showA12Version(Ljava/lang/String;)V

    .line 73
    .end local v0    # "a12Version":Lcom/fimi/x8sdk/dataparser/CameraVersion;
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    move-object v1, p3

    .line 74
    check-cast v1, Lcom/fimi/x8sdk/dataparser/CameraRequestUpdate;

    .line 75
    .local v1, "reqUpdate":Lcom/fimi/x8sdk/dataparser/CameraRequestUpdate;
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/CameraRequestUpdate;->getMsgRpt()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->reqestUpdate(I)V

    .line 78
    .end local v1    # "reqUpdate":Lcom/fimi/x8sdk/dataparser/CameraRequestUpdate;
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->requstUploadFileACK(I)V

    .line 84
    :cond_2
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->requestStartUpdate()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 63
    return-void
.end method

.method public requestUploadFile()V
    .locals 5

    .prologue
    .line 87
    sget-object v4, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    invoke-static {v4}, Lcom/fimi/kernel/utils/FileUtil;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 88
    .local v2, "fileBytes":[B
    array-length v4, v2

    invoke-static {v2, v4}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v1

    .line 89
    .local v1, "crc":I
    invoke-static {v1}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    .line 90
    .local v0, "byteCrc":[B
    array-length v4, v2

    invoke-static {v4}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v3

    .line 91
    .local v3, "fileSize":[B
    new-instance v4, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v4}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v4, v3, v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->requestUploadFile([B[B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 92
    return-void
.end method

.method public sendContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/fimi/x8sdk/command/AoaTestColletion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/AoaTestColletion;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/AoaTestColletion;->getTestContent(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 131
    return-void
.end method

.method public uploadFwFile()V
    .locals 8

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v6, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "fis":Ljava/io/FileInputStream;
    const/16 v6, 0x2800

    new-array v3, v6, [B

    .line 114
    .local v3, "sendBuffer":[B
    const/4 v2, 0x0

    .line 115
    .local v2, "length":I
    const-wide/16 v4, 0x0

    .line 116
    .local v4, "total":J
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 118
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->fileDataTcpConnect:Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v2}, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->sendFileData([BII)V

    .line 119
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "length":I
    .end local v3    # "sendBuffer":[B
    .end local v4    # "total":J
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 122
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "length":I
    .restart local v3    # "sendBuffer":[B
    .restart local v4    # "total":J
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
