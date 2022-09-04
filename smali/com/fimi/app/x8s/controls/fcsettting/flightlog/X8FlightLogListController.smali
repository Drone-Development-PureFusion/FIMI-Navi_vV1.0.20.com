.class public Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;
.implements Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;


# instance fields
.field private final FLIGHT_DATA_REFRESH:I

.field private final TEST_NET_WORK:I

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fdsCount:Lcom/fimi/kernel/fds/FdsCount;

.field private handleView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private imgDelete:Landroid/widget/ImageView;

.field private isShowNotDNSDialog:Z

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field private synType:I

.field private tvNoFiles:Landroid/widget/TextView;

.field private x8BtnPlayback:Landroid/widget/Button;

.field private x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

.field private x8FlightLogListPresenter:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

.field private x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

.field private x8ImgPlaybackReturn:Landroid/widget/ImageView;

.field private x8ImgPlaybackSyn:Landroid/widget/ImageView;

.field private x8PlaybackDoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

.field private x8PrlFlightLogListInfo:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private x8RlFlightLogListContent:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

.field private x8TvPlaybackDistanceValue:Landroid/widget/TextView;

.field private x8TvPlaybackNumberValue:Landroid/widget/TextView;

.field private x8TvPlaybackTotalTimeValue:Landroid/widget/TextView;

.field private x8ViewAiAutoPhotoLoading:Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/widget/CustomLoadManage;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "customLoadManage"    # Lcom/fimi/widget/CustomLoadManage;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 71
    new-instance v0, Lcom/fimi/kernel/fds/FdsCount;

    invoke-direct {v0}, Lcom/fimi/kernel/fds/FdsCount;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->TEST_NET_WORK:I

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->FLIGHT_DATA_REFRESH:I

    .line 80
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;-><init>(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogListPresenter:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogListPresenter:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->setFdsCount(Lcom/fimi/kernel/fds/FdsCount;)V

    .line 82
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;

    invoke-direct {v0, p0, p2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/widget/CustomLoadManage;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handler:Landroid/os/Handler;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->seachFile(Z)V

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->isShowNotDNSDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->tvNoFiles:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->seachFile(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->deleteFile(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8RlFlightLogListContent:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8PrlFlightLogListInfo:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->imgDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ImgPlaybackReturn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->showUploadingEixtDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8PlaybackDoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8PlaybackDoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogListPresenter:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->synType:I

    return v0
.end method

.method static synthetic access$2502(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->synType:I

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/kernel/fds/FdsCount;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackNumberValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackTotalTimeValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackDistanceValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ViewAiAutoPhotoLoading:Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->testNetWorkOnSynProgress()V

    return-void
.end method

.method private deleteFile(Z)V
    .locals 6
    .param p1, "deleteAll"    # Z

    .prologue
    const/4 v3, 0x0

    .line 185
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handler:Landroid/os/Handler;

    move v4, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/os/Handler;ZZZ)V

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->start()V

    .line 186
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .param p1, "handleView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 133
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_img_playback_return:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ImgPlaybackReturn:Landroid/widget/ImageView;

    .line 134
    sget v2, Lcom/fimi/app/x8s/R$id;->img_delete:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->imgDelete:Landroid/widget/ImageView;

    .line 135
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_no_files:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->tvNoFiles:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_ryv_flight_log:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 138
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Lcom/fimi/app/x8s/widget/WrapContentLinearLayoutManager;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/fimi/app/x8s/widget/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 140
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 142
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_playback:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8BtnPlayback:Landroid/widget/Button;

    .line 144
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_rl_flight_log_list_content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8RlFlightLogListContent:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 145
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_prl_flight_log_list_info:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8PrlFlightLogListInfo:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 146
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_tv_playback_number_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackNumberValue:Landroid/widget/TextView;

    .line 147
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_tv_playback_total_time_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackTotalTimeValue:Landroid/widget/TextView;

    .line 148
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_tv_playback_distance_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8TvPlaybackDistanceValue:Landroid/widget/TextView;

    .line 149
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_view_ai_auto_photo_loading:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ViewAiAutoPhotoLoading:Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ViewAiAutoPhotoLoading:Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_playback_delete_loading_hint:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->setX8TvLoadingHint(Ljava/lang/String;)V

    .line 151
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_img_playback_syn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ImgPlaybackSyn:Landroid/widget/ImageView;

    .line 153
    return-void
.end method

.method private seachFile(Z)V
    .locals 6
    .param p1, "uploadSuccessfulAll"    # Z

    .prologue
    .line 180
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;-><init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/os/Handler;ZZZ)V

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->start()V

    .line 181
    return-void
.end method

.method private showDeleteDialog()V
    .locals 8

    .prologue
    .line 189
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_playback_delete_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "t":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_playback_delete_messge:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "m":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_playback_delete_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "checkStr":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_cancel:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "l":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_playback_delete:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$3;

    invoke-direct {v7, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-direct/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 214
    return-void
.end method

.method private showUploadingEixtDialog()V
    .locals 7

    .prologue
    .line 222
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_exit_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "t":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_exit_content:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "m":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_cancel:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "l":Ljava/lang/String;
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_confirm:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 245
    return-void
.end method

.method private testNetWorkOnSynProgress()V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcom/fimi/kernel/utils/DNSLookupThread;->isDSNSuceess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->isShowNotDNSDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->isShowNotDNSDialog:Z

    .line 158
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 159
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->stopAll()V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure:I

    .line 162
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure_hint:I

    .line 163
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8IMUCustomDialog:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActions()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ImgPlaybackReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->imgDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8BtnPlayback:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8ImgPlaybackSyn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    const/16 v2, 0x1f4

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_flight_log_list_layout:I

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    .line 261
    new-instance v1, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/interfaces/IX8FlightlogRenameFile;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .line 262
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->initView(Landroid/view/View;)V

    .line 264
    return-void
.end method

.method public isRunningTask()Z
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->hasUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->showUploadingEixtDialog()V

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public noDataHint()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_no_data_hint:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->unregister()V

    .line 474
    return-void
.end method

.method public onRenameFileSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 478
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/base/EventMessage;

    const-string/jumbo v2, "x8_flightlog_rename_file_event_key"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/base/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 479
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->seachFile(Z)V

    .line 480
    return-void
.end method

.method public remioveDownNoticeList()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogListPresenter:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->remioveDownNoticeList()V

    .line 484
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->unregister()V

    .line 485
    return-void
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 130
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    return-void
.end method

.method public startSyn()V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handleView:Landroid/view/View;

    .line 369
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_are_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->show()V

    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->setCanceledOnTouchOutside(Z)V

    .line 393
    return-void
.end method

.method public synCompleteRefreshUI(Z)V
    .locals 4
    .param p1, "isSucceed"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    return-void
.end method

.method public synTotalProgress(I)V
    .locals 1
    .param p1, "progrss"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->x8SingleCustomPlaybackSynDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->setX8PbPlaybackPlanValue(I)V

    .line 399
    :cond_0
    return-void
.end method
