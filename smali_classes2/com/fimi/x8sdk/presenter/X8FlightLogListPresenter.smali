.class public Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;
.super Ljava/lang/Object;
.source "X8FlightLogListPresenter.java"

# interfaces
.implements Lcom/fimi/network/IDownProgress;
.implements Lcom/fimi/kernel/fds/IFdsCountListener;
.implements Lcom/fimi/kernel/fds/IFdsUiListener;


# static fields
.field public static fileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private fdsCount:Lcom/fimi/kernel/fds/FdsCount;

.field private isShow:Z

.field private isUpDownload:Z

.field private ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

.field private volatile lastProgrss:F

.field private volatile progrssSum:I

.field private time:J

.field private volatile uploadProgrss:F

.field private x8FlightLogFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;"
        }
    .end annotation
.end field

.field private x8FlightLogFilesTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;"
        }
    .end annotation
.end field

.field private x8FlightLogFilesUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;"
        }
    .end annotation
.end field

.field private x8PlaybackLogEntitiesDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/X8PlaybackLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private x8PlaybackLogEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/X8PlaybackLogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fileNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ix8FlightLogListAction"    # Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFiles:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesTemp:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8PlaybackLogEntitiesDownload:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadProgrss:F

    .line 55
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    .line 57
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/fds/FdsManager;->setFdsCountListener(Lcom/fimi/kernel/fds/IFdsCountListener;)V

    .line 58
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/fds/FdsManager;->setUiListener(Lcom/fimi/kernel/fds/IFdsUiListener;)V

    .line 59
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/network/DownNoticeMananger;->addDownNoticeList(Lcom/fimi/network/IDownProgress;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8PlaybackLogEntitiesDownload:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8PlaybackLogEntityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8PlaybackLogEntityList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;
    .param p1, "x1"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isCollectAndTime(Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesTemp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private isCollectAndTime(Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Z
    .locals 4
    .param p1, "x8FlightFile"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getDateSecond()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isFileLogCollect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synCompleteRefresh(Z)V
    .locals 1
    .param p1, "isSucceed"    # Z

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isShow:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isShow:Z

    .line 308
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->synCompleteRefreshUI(Z)V

    .line 311
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 1
    .param p1, "responseObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 250
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->synCompleteRefresh(Z)V

    .line 253
    return-void
.end method

.method public onProgress(Lcom/fimi/kernel/fds/IFdsFileModel;I)V
    .locals 6
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "progrss"    # I

    .prologue
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 211
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-lez p2, :cond_2

    .line 216
    const/16 v1, 0x64

    if-lt p2, v1, :cond_4

    .line 217
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->progrssSum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->progrssSum:I

    .line 218
    const/4 v1, 0x0

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadProgrss:F

    .line 219
    sget-object v1, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fileNames:Ljava/util/List;

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    if-eqz v1, :cond_5

    .line 227
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->progrssSum:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadProgrss:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->lastProgrss:F

    .line 234
    :goto_2
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->lastProgrss:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 235
    iput v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->lastProgrss:F

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    iget v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->lastProgrss:F

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->synTotalProgress(I)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    mul-float v0, v1, v3

    .line 222
    .local v0, "deviv":F
    int-to-float v1, p2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadProgrss:F

    goto :goto_1

    .line 229
    .end local v0    # "deviv":F
    :cond_5
    iget v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->progrssSum:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadProgrss:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->lastProgrss:F

    goto :goto_2
.end method

.method public onProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 1
    .param p1, "downState"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progrss"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 190
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    if-eqz v0, :cond_0

    .line 192
    div-int/lit8 p2, p2, 0x2

    .line 193
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadFlightLogFiles()V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->synTotalProgress(I)V

    .line 205
    :goto_1
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->synCompleteRefresh(Z)V

    goto :goto_0

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    if-eqz v0, :cond_2

    .line 201
    div-int/lit8 p2, p2, 0x2

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->synTotalProgress(I)V

    goto :goto_1
.end method

.method public onStop(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 1
    .param p1, "reasonObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 257
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public onSuccess(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 1
    .param p1, "responseObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsCount;->completeIncrease()V

    .line 243
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->synCompleteRefresh(Z)V

    .line 246
    return-void
.end method

.method public onUploadingCountChange(I)V
    .locals 2
    .param p1, "uploading"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsCount;->getTotal()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v1}, Lcom/fimi/kernel/fds/FdsCount;->getComplete()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_1

    .line 266
    if-nez p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    .line 279
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    goto :goto_0
.end method

.method public remioveDownNoticeList()V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/DownNoticeMananger;->remioveDownNoticeListAll()V

    .line 283
    return-void
.end method

.method public setFdsCount(Lcom/fimi/kernel/fds/FdsCount;)V
    .locals 0
    .param p1, "fdsCount"    # Lcom/fimi/kernel/fds/FdsCount;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    .line 297
    return-void
.end method

.method public setX8FlightLogFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "x8FlightLogFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesTemp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public synFlightPlaybackData(I)V
    .locals 8
    .param p1, "synType"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isShow:Z

    .line 70
    sget-object v2, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fileNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    const-string v1, ""

    .line 72
    .local v1, "startTime":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    const-wide/32 v4, 0x93a80

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    .line 74
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    mul-long/2addr v2, v6

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "endTime":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->getX8FlightPlayBackManagerInstans()Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    move-result-object v2

    new-instance v3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v4, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;

    invoke-direct {v4, p0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)V

    invoke-direct {v3, v4}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->getX8FlightPlaybackLog(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 159
    return-void

    .line 75
    .end local v0    # "endTime":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    const-wide/32 v4, 0x278d00

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    .line 77
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    mul-long/2addr v2, v6

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    const-wide/32 v4, 0xed4e00

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    .line 80
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    mul-long/2addr v2, v6

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 82
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->time:J

    .line 83
    const-string v1, "2018-01-01-00-00-00"

    goto :goto_0
.end method

.method public uploadFlightLogFiles()V
    .locals 6

    .prologue
    .line 162
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    invoke-interface {v4}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->noDataHint()V

    .line 186
    :cond_1
    return-void

    .line 166
    :cond_2
    iget-boolean v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->isUpDownload:Z

    if-nez v4, :cond_3

    .line 167
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->ix8FlightLogListAction:Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    invoke-interface {v4}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->startSyn()V

    .line 170
    :cond_3
    const/4 v2, 0x0

    .line 171
    .local v2, "position":I
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, "listSize":I
    add-int/lit8 v2, v2, 0x1

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->x8FlightLogFilesUpload:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 175
    .local v3, "x8FlightLogFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v4

    sget-object v5, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v4, v5, :cond_4

    .line 176
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v4

    sget-object v5, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    if-eq v4, v5, :cond_4

    .line 177
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v4

    sget-object v5, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v4, v5, :cond_5

    .line 178
    :cond_4
    invoke-virtual {v3, v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setSectionPostion(I)V

    .line 179
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setItemPostion(I)V

    .line 180
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fimi/kernel/fds/FdsManager;->startDownload(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    .line 182
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
