.class public Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8AOATestPresenter.java"


# instance fields
.field iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

.field private isInterrupt:Z

.field private isRunning:Z

.field mHandler:Landroid/os/Handler;

.field private recvDataLen:J

.field private sendDataLen:J

.field videodDataListener:Lcom/fimi/kernel/connect/session/VideodDataListener;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/ivew/IAOATestView;)V
    .locals 4
    .param p1, "iaoaTestView"    # Lcom/fimi/x8sdk/ivew/IAOATestView;

    .prologue
    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->recvDataLen:J

    .line 23
    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendDataLen:J

    .line 26
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->videodDataListener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    .line 51
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;-><init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->videodDataListener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->addNoticeListener(Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    .line 47
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->recvDataLen:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->recvDataLen:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendDataLen:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendDataLen:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isInterrupt:Z

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->recvDataLen:J

    .line 41
    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendDataLen:J

    .line 42
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isRunning:Z

    return v0
.end method

.method public killDataChanel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isInterrupt:Z

    .line 68
    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isRunning:Z

    .line 71
    return-void
.end method

.method public sendContent(Ljava/lang/String;ZJ)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z
    .param p3, "time"    # J

    .prologue
    .line 102
    iput-boolean p2, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isInterrupt:Z

    .line 103
    if-eqz p2, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->isRunning:Z

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;-><init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public startReceivedData()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v5, [B

    .line 81
    .local v0, "data":[B
    aput-byte v3, v0, v2

    .line 82
    aput-byte v3, v0, v4

    .line 83
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 84
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 85
    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 86
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 87
    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 88
    const/4 v1, 0x7

    aput-byte v5, v0, v1

    .line 89
    const/16 v1, 0x8

    aput-byte v2, v0, v1

    .line 90
    const/16 v1, 0x9

    aput-byte v4, v0, v1

    .line 91
    new-instance v1, Lcom/fimi/x8sdk/command/AoaTestColletion;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/AoaTestColletion;-><init>()V

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/AoaTestColletion;->getTestContent([B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 92
    return-void
.end method
