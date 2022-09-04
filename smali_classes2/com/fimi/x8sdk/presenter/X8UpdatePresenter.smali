.class public Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8UpdatePresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IUpdateAction;
.implements Lcom/fimi/kernel/connect/session/UpdateDateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;,
        Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;
    }
.end annotation


# instance fields
.field private final CONTINUOUS_MAX_NUMBER:I

.field private final EACH_PACKAGE_LEN:I

.field private final UPDATE_STATE_END:I

.field private final WAIT_UPDATE_TIMEOUT:I

.field private final WHAT_UPDATE_FINISH:I

.field private final WHAT_UPDATE_PROGRESS:I

.field private aggregateProgress:I

.field alreadyExist:Z

.field private callbackOffset:I

.field cameraConnectedState:I

.field private cheackUpdateTimeOut:I

.field private checkUpdateTimeout:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private currentProgressEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;",
            ">;"
        }
    .end annotation
.end field

.field private fileBytes:[B

.field private fileProgress:I

.field private firewareName:Ljava/lang/String;

.field private fwInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile fwInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fwNumber:I

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private hasAccumulate:Z

.field isCameraUpdate:Z

.field private isLockOffset:Z

.field private ix8UpdateProgressView:Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

.field public mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

.field private notifyProgress:I

.field volatile offset:D

.field private packNum:I

.field private residueNum:I

.field private sendPackageNum:I

.field startCheckUpdateTimeOut:Z

.field private subPackageNum:I

.field private total:J

.field private updateFailure:Z

.field updateFileEnd:Z

.field updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field private updateThread:Ljava/lang/Thread;

.field private updateTimeoutAddTime:I

.field private updateTimeoutProgress:I

.field private waitSend:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 57
    const/16 v0, 0x400

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->EACH_PACKAGE_LEN:I

    .line 58
    const/16 v0, 0x10

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->CONTINUOUS_MAX_NUMBER:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->WHAT_UPDATE_PROGRESS:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->WHAT_UPDATE_FINISH:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->WAIT_UPDATE_TIMEOUT:I

    .line 62
    const/16 v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->UPDATE_STATE_END:I

    .line 66
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->packNum:I

    .line 72
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    .line 77
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->hasAccumulate:Z

    .line 78
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateTimeout:Ljava/util/Timer;

    .line 79
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->startCheckUpdateTimeOut:Z

    .line 85
    sget-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    .line 118
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFileEnd:Z

    .line 665
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isLockOffset:Z

    .line 666
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    .line 667
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->waitSend:Z

    .line 729
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->handler:Landroid/os/Handler;

    .line 768
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->cheackUpdateTimeOut:I

    .line 769
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutProgress:I

    .line 770
    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutAddTime:I

    .line 820
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->alreadyExist:Z

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->cameraConnectedState:I

    .line 896
    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isCameraUpdate:Z

    .line 924
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 88
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->initDate()V

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->total:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->subPackageNum:I

    return v0
.end method

.method static synthetic access$1002(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->subPackageNum:I

    return p1
.end method

.method static synthetic access$102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->total:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->packNum:I

    return p1
.end method

.method static synthetic access$1200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->ix8UpdateProgressView:Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateTimeout:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->disposeAddedData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->cheackUpdateTimeOut:I

    return v0
.end method

.method static synthetic access$1708(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->cheackUpdateTimeOut:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->cheackUpdateTimeOut:I

    return v0
.end method

.method static synthetic access$1800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->waitSend:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutProgress:I

    return v0
.end method

.method static synthetic access$2002(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutProgress:I

    return p1
.end method

.method static synthetic access$2100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutAddTime:I

    return v0
.end method

.method static synthetic access$2102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutAddTime:I

    return p1
.end method

.method static synthetic access$2108(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutAddTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateTimeoutAddTime:I

    return v0
.end method

.method static synthetic access$2200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->containRemoteControl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isLockOffset:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isLockOffset:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    return v0
.end method

.method static synthetic access$702(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    return p1
.end method

.method static synthetic access$800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)[B
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # [B

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->residueNum:I

    return v0
.end method

.method static synthetic access$902(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->residueNum:I

    return p1
.end method

.method private containCamera(II)Z
    .locals 2
    .param p1, "modelID"    # I
    .param p2, "typeID"    # I

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "tempSteta":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 653
    const/4 v0, 0x1

    .line 657
    :goto_0
    return v0

    .line 655
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containRemoteControl()Z
    .locals 5

    .prologue
    .line 631
    const/4 v1, 0x0

    .line 632
    .local v1, "tempSteta":Z
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 634
    .local v0, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 635
    const/4 v1, 0x1

    .line 642
    .end local v0    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_0
    return v1

    .line 638
    .restart local v0    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_1
    const/4 v1, 0x0

    .line 640
    goto :goto_0
.end method

.method private disposeAddedData()V
    .locals 4

    .prologue
    .line 462
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 494
    :cond_0
    return-void

    .line 463
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 464
    new-instance v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-direct {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 465
    .local v0, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getDevModuleID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 466
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getDevTargetID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 467
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getSchedule()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSchedule(I)V

    .line 468
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSysName(BB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getSchedule()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    .line 470
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getResult()I

    move-result v2

    if-nez v2, :cond_3

    .line 471
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSoftwareVer(BB)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSoftwareVer(S)V

    .line 473
    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 477
    :cond_3
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 479
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    :cond_4
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 486
    iget v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    .line 487
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getSoftwareVer(BB)S
    .locals 6
    .param p1, "modelId"    # B
    .param p2, "typeId"    # B

    .prologue
    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "softwareVer":S
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    if-nez v4, :cond_0

    move v2, v1

    .end local v1    # "softwareVer":S
    .local v2, "softwareVer":S
    move v3, v1

    .line 622
    .end local v2    # "softwareVer":S
    .local v3, "softwareVer":I
    :goto_0
    return v3

    .line 617
    .end local v3    # "softwareVer":I
    .restart local v1    # "softwareVer":S
    :cond_0
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 618
    .local v0, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v5

    if-ne v5, p2, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSoftwareVer()S

    move-result v1

    goto :goto_1

    .end local v0    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_2
    move v2, v1

    .end local v1    # "softwareVer":S
    .restart local v2    # "softwareVer":S
    move v3, v1

    .line 622
    .restart local v3    # "softwareVer":I
    goto :goto_0
.end method

.method private getSysName(BB)Ljava/lang/String;
    .locals 6
    .param p1, "modelId"    # B
    .param p2, "typeId"    # B

    .prologue
    .line 604
    const-string v1, ""

    .line 605
    .local v1, "sysName":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    if-nez v4, :cond_0

    move-object v2, v1

    .end local v1    # "sysName":Ljava/lang/String;
    .local v2, "sysName":Ljava/lang/String;
    move-object v3, v1

    .line 611
    .end local v2    # "sysName":Ljava/lang/String;
    .local v3, "sysName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 606
    .end local v3    # "sysName":Ljava/lang/String;
    .restart local v1    # "sysName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 607
    .local v0, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v5

    if-ne v5, p2, :cond_1

    .line 608
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v0    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_2
    move-object v2, v1

    .end local v1    # "sysName":Ljava/lang/String;
    .restart local v2    # "sysName":Ljava/lang/String;
    move-object v3, v1

    .line 611
    .end local v2    # "sysName":Ljava/lang/String;
    .restart local v3    # "sysName":Ljava/lang/String;
    goto :goto_0
.end method

.method private isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z
    .locals 4
    .param p1, "fwInfo"    # Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .prologue
    .line 823
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 824
    .local v0, "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v3

    if-ne v2, v3, :cond_0

    .line 825
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->alreadyExist:Z

    goto :goto_0

    .line 827
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->alreadyExist:Z

    goto :goto_0

    .line 831
    .end local v0    # "info":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->alreadyExist:Z

    return v1
.end method

.method private updateProgressView(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 717
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    sget-object v2, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    if-ne v1, v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 719
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 720
    const/16 v1, 0x64

    if-ge v1, p2, :cond_2

    .line 721
    const/16 p2, 0x64

    .line 723
    :cond_2
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 724
    iget v1, v0, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkUpdateOutStatus()V
    .locals 6

    .prologue
    .line 773
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateTimeout:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateTimeout:Ljava/util/Timer;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateTimeout:Ljava/util/Timer;

    new-instance v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 818
    return-void
.end method

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
    .line 578
    .local p1, "fwInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfoList:Ljava/util/List;

    .line 579
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/util/List;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public getErrorCodeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 835
    const-string v0, ""

    .line 836
    .local v0, "str":Ljava/lang/String;
    int-to-byte v1, p1

    packed-switch v1, :pswitch_data_0

    .line 892
    :goto_0
    :pswitch_0
    return-object v0

    .line 838
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 842
    goto :goto_0

    .line 844
    :pswitch_3
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 845
    goto :goto_0

    .line 847
    :pswitch_4
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_3:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    goto :goto_0

    .line 850
    :pswitch_5
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_4:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 851
    goto :goto_0

    .line 853
    :pswitch_6
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_5:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    goto :goto_0

    .line 856
    :pswitch_7
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_6:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 857
    goto :goto_0

    .line 859
    :pswitch_8
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_7:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 860
    goto :goto_0

    .line 862
    :pswitch_9
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_21:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    goto :goto_0

    .line 865
    :pswitch_a
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_22:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    goto :goto_0

    .line 868
    :pswitch_b
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_23:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 869
    goto :goto_0

    .line 871
    :pswitch_c
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_24:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    goto :goto_0

    .line 874
    :pswitch_d
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_25:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    goto :goto_0

    .line 877
    :pswitch_e
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_26:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    goto :goto_0

    .line 880
    :pswitch_f
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_27:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    goto/16 :goto_0

    .line 883
    :pswitch_10
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_28:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    goto/16 :goto_0

    .line 886
    :pswitch_11
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_29:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 887
    goto/16 :goto_0

    .line 889
    :pswitch_12
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_255:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 836
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method initDate()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->addNoticeListener(Lcom/fimi/kernel/connect/session/UpdateDateListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateOutStatus()V

    .line 98
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 108
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 109
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 103
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 104
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 113
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 114
    return-void
.end method

.method public onUpdateDateCallBack(Lcom/fimi/kernel/connect/model/UpdateDateMessage;)V
    .locals 7
    .param p1, "updateDateMessage"    # Lcom/fimi/kernel/connect/model/UpdateDateMessage;

    .prologue
    const/4 v6, 0x1

    .line 671
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->getFileOffset()I

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    .line 683
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->waitSend:Z

    .line 688
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    sget-object v2, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateFile:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    if-eq v1, v2, :cond_1

    .line 708
    :cond_0
    :goto_1
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 690
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    if-nez v1, :cond_2

    .line 691
    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isLockOffset:Z

    .line 692
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    goto :goto_1

    .line 695
    :cond_2
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->total:J

    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 696
    const/16 v1, 0x32

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    .line 697
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    invoke-direct {p0, v6, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    .line 698
    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFileEnd:Z

    .line 699
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 701
    :cond_3
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->total:J

    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 702
    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isLockOffset:Z

    .line 703
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->callbackOffset:I

    add-int/lit16 v1, v1, -0x400

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    goto :goto_1
.end method

.method public queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 571
    new-instance v1, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->queryCurUpdateStatus()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 572
    .local v0, "command":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 573
    return-void
.end method

.method public removeNoticeList()V
    .locals 2

    .prologue
    .line 962
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->removeNoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V

    .line 963
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->removeNoticeListener()V

    .line 964
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 10
    .param p1, "isAck"    # Z
    .param p2, "groupId"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 276
    const/16 v6, 0x10

    if-ne p2, v6, :cond_0

    .line 293
    const/4 v6, 0x3

    if-ne p3, v6, :cond_1

    .line 295
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    sget-object v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->requestUpdate:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    if-ne v6, v7, :cond_0

    .line 296
    sget-object v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->sendUploadInformation:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 299
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->uploadFwFile()V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/4 v6, 0x4

    if-ne p3, v6, :cond_10

    move-object v1, p4

    .line 305
    check-cast v1, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;

    .line 307
    .local v1, "autoNotifyFwFile":Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    if-nez v6, :cond_2

    .line 308
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 310
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    .line 311
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 315
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 317
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    .line 318
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 321
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    if-nez v6, :cond_4

    .line 322
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getFwNumber()I

    move-result v6

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwNumber:I

    .line 323
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->startCheckUpdateTimeOut:Z

    goto :goto_0

    .line 325
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 326
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    .line 327
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    goto :goto_0

    .line 331
    :cond_5
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 332
    sget-object v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->fileCheckResults:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 333
    const/16 v6, 0x32

    iget v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    if-eq v6, v7, :cond_6

    .line 334
    const/16 v6, 0x32

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    .line 337
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getSchedule()I

    move-result v6

    iget v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    add-int v2, v6, v7

    .line 338
    .local v2, "currentValue":I
    if-nez v2, :cond_7

    .line 339
    const/4 v6, 0x0

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v2    # "currentValue":I
    :goto_1
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevModuleId()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevTargetId()I

    move-result v7

    int-to-byte v7, v7

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSysName(BB)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    .line 370
    const/4 v6, 0x1

    iget v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    iget v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I

    add-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    .line 371
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->hasAccumulate:Z

    goto/16 :goto_0

    .line 341
    .restart local v2    # "currentValue":I
    :cond_7
    :try_start_1
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwNumber:I

    if-eqz v6, :cond_8

    .line 342
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwNumber:I

    div-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I

    goto :goto_1

    .line 347
    .end local v2    # "currentValue":I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 344
    .restart local v2    # "currentValue":I
    :cond_8
    const/4 v6, 0x0

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 373
    .end local v2    # "currentValue":I
    :cond_9
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    .line 375
    new-instance v4, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-direct {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 376
    .local v4, "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevModuleId()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 377
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevTargetId()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 378
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getSchedule()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSchedule(I)V

    .line 379
    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v6

    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSysName(BB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    if-nez v6, :cond_a

    .line 381
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 382
    const-string v6, "0"

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v6

    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSoftwareVer(BB)S

    move-result v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSoftwareVer(S)V

    .line 391
    :goto_2
    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 392
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    .line 393
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    :cond_a
    const-string v6, "1"

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setErrorCode(Ljava/lang/String;)V

    goto :goto_2

    .line 397
    .end local v4    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_b
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_d

    .line 398
    iget-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->hasAccumulate:Z

    if-nez v6, :cond_0

    .line 399
    new-instance v4, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-direct {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 400
    .restart local v4    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevModuleId()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 401
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getDevTargetId()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 402
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getSchedule()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSchedule(I)V

    .line 403
    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v6

    invoke-virtual {v4}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getSysName(BB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 404
    const-string v6, "1"

    invoke-virtual {v4, v6}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setUpdateResult(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->isAdd(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 406
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->aggregateProgress:I

    .line 407
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->hasAccumulate:Z

    goto/16 :goto_0

    .line 412
    .end local v4    # "fwInfo":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_d
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getNotifyType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 413
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_e

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    if-nez v6, :cond_f

    .line 414
    :cond_e
    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    goto/16 :goto_0

    .line 416
    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFailure:Z

    .line 417
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->getResult()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firewareName:Ljava/lang/String;

    .line 418
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateProgressView(II)V

    goto/16 :goto_0

    .line 423
    .end local v1    # "autoNotifyFwFile":Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;
    :cond_10
    const/4 v6, 0x6

    if-ne p3, v6, :cond_0

    move-object v0, p4

    .line 424
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;

    .line 425
    .local v0, "ackUpdateCurrentProgress":Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->getDeviceNumber()I

    move-result v3

    .line 426
    .local v3, "deviceNumber":I
    if-eqz v3, :cond_0

    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwNumber:I

    if-ne v6, v3, :cond_0

    .line 427
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    if-nez v6, :cond_11

    .line 428
    const/16 v6, 0x32

    iput v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    .line 430
    :cond_11
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->getUpdateCurrentProgressEntitys()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    .line 432
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 433
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getDevModuleID()I

    move-result v7

    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getDevTargetID()I

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->containCamera(II)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-direct {p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->containRemoteControl()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 434
    :cond_12
    iget v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileProgress:I

    iget v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->notifyProgress:I

    add-int/2addr v6, v7

    const/16 v7, 0x64

    if-eq v6, v7, :cond_13

    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->currentProgressEntityList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->getSchedule()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_14

    .line 436
    :cond_13
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;

    invoke-direct {v7, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    const-wide/16 v8, 0x9c4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 454
    :cond_15
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->hasAccumulate:Z

    goto/16 :goto_0
.end method

.method public requestStartUpdate(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 523
    new-instance v1, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 524
    .local v1, "fwUpdateCollection":Lcom/fimi/x8sdk/command/FwUpdateCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->requestStartUpdate()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 525
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 528
    return-void
.end method

.method public requestUploadFile()V
    .locals 6

    .prologue
    .line 534
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    if-nez v4, :cond_0

    .line 541
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    array-length v5, v5

    invoke-static {v4, v5}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v2

    .line 536
    .local v2, "crc":I
    invoke-static {v2}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    .line 537
    .local v0, "byteCrc":[B
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fileBytes:[B

    array-length v4, v4

    invoke-static {v4}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v3

    .line 538
    .local v3, "fileSize":[B
    new-instance v4, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v4}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v4, v3, v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->requestUploadFile([B[B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 539
    .local v1, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setOnUpdateProgress(Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;)V
    .locals 0
    .param p1, "ix8UpdateProgressView"    # Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->ix8UpdateProgressView:Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    .line 663
    return-void
.end method

.method public uploadFwFile()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->fwInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFileEnd:Z

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateThread:Ljava/lang/Thread;

    .line 173
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method
