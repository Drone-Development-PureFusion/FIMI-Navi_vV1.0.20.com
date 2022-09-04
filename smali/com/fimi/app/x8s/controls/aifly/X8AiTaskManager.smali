.class public Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private aiExcuteView:Landroid/view/View;

.field private lastMode:I

.field private mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

.field private mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

.field private mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

.field private mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

.field private mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

.field private mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

.field private mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

.field private mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

.field private mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

.field private mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

.field private mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

.field private mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

.field private mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

.field private mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field public mIX8AerialGraphListener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

.field public mIX8AiFixedwingListener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

.field private mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

.field public mIX8AiHeadLockListener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

.field public mIX8AiLineExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

.field private mIX8AiSarListener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

.field private mIX8AiStateListener:Lcom/fimi/x8sdk/listener/IX8AiStateListener;

.field public mIX8AiSurroundExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

.field public mIX8AiTripodListener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

.field public mIX8Point2PointExcuteConttrollerListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

.field public mIX8ScrewListener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

.field public mX8AiAutoPhotoExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

.field public mX8AiFollowExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

.field private mX8TLRListener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "aiExcuteView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    .line 513
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiFixedwingListener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    .line 531
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiHeadLockListener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    .line 550
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiTripodListener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    .line 572
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AerialGraphListener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    .line 589
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8ScrewListener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    .line 643
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    .line 687
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiSarListener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    .line 748
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiLineExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    .line 787
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8TLRListener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    .line 818
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$11;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$11;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8Point2PointExcuteConttrollerListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    .line 857
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$12;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$12;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiSurroundExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    .line 893
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$13;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$13;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8AiAutoPhotoExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    .line 926
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$14;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$14;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8AiFollowExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    return-object p1
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    return-object p1
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    return-object p1
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    return-object p1
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    return-object p1
.end method

.method static synthetic access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    return-object p1
.end method

.method static synthetic access$802(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    return-object p1
.end method

.method static synthetic access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    return-object p1
.end method

.method private initAiAutoPhoto(Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;I)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;
    .param p2, "type"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .line 887
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8AiAutoPhotoExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;)V

    .line 888
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->openUi()V

    .line 890
    :cond_0
    return-void
.end method

.method private initAiGravitation(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;)V

    .line 637
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 638
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 639
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->openUi()V

    .line 641
    return-void
.end method

.method private intAiD2Point(Lcom/fimi/app/x8s/enums/X8AiPointState;)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/enums/X8AiPointState;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    if-nez v0, :cond_0

    .line 810
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiPointState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .line 811
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8Point2PointExcuteConttrollerListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;)V

    .line 812
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    .line 813
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->openUi()V

    .line 815
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->closeUi()V

    .line 353
    if-ne p1, v2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onShowAiFlyIcon()V

    .line 356
    :cond_0
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeUi()V

    .line 361
    if-ne p1, v2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onShowAiFlyIcon()V

    .line 364
    :cond_2
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->closeUi()V

    .line 369
    if-ne p1, v2, :cond_4

    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onShowAiFlyIcon()V

    .line 372
    :cond_4
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeUi()V

    .line 377
    if-ne p1, v2, :cond_6

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onShowAiFlyIcon()V

    .line 380
    :cond_6
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-eqz v0, :cond_8

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->cancleByModeChange(I)V

    .line 384
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .line 386
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->cancleByModeChange(I)V

    .line 388
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .line 390
    :cond_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_a

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->cancleByModeChange(I)V

    .line 392
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .line 394
    :cond_a
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-eqz v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->cancleByModeChange(I)V

    .line 396
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 398
    :cond_b
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-eqz v0, :cond_c

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->cancleByModeChange(I)V

    .line 400
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .line 402
    :cond_c
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-eqz v0, :cond_d

    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->cancleByModeChange(I)V

    .line 404
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .line 406
    :cond_d
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    if-eqz v0, :cond_e

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->cancleByModeChange(I)V

    .line 408
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .line 410
    :cond_e
    return-void
.end method

.method public cancleLastMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "currentMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 339
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    .line 342
    :goto_0
    return-void

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->cancleByModeChange(I)V

    .line 260
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->cancleByModeChange()V

    .line 266
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->cancleByModeChange(I)V

    .line 272
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 276
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->cancleByModeChange(I)V

    .line 279
    :cond_3
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 283
    :pswitch_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->cancleByModeChange(I)V

    .line 286
    :cond_4
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 290
    :pswitch_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->cancleByModeChange(I)V

    .line 293
    :cond_5
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 297
    :pswitch_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->cancleByModeChange(I)V

    .line 300
    :cond_6
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 304
    :pswitch_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->cancleByModeChange(I)V

    .line 307
    :cond_7
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 311
    :pswitch_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->cancleByModeChange(I)V

    .line 314
    :cond_8
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 318
    :pswitch_a
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-eqz v0, :cond_9

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->cancleByModeChange(I)V

    .line 321
    :cond_9
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 324
    :pswitch_b
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    if-eqz v0, :cond_a

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->cancleByModeChange()V

    .line 327
    :cond_a
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 330
    :pswitch_c
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 333
    :pswitch_d
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-eqz v0, :cond_b

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->cancleByModeChange(I)V

    .line 336
    :cond_b
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public changeSarProceess(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 678
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->changeProcessByRc(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public doCurrentMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiPointState;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->intAiD2Point(Lcom/fimi/app/x8s/enums/X8AiPointState;)V

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->showAiPointView()V

    .line 151
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiSurround(Lcom/fimi/app/x8s/enums/X8AiSuroundState;)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiLine(Lcom/fimi/app/x8s/enums/X8AiLineState;IJ)V

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->showAiPointView()V

    .line 160
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 163
    :pswitch_4
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiAutoPhoto(Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;I)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 167
    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiTLRController(I)V

    .line 168
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 171
    :pswitch_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiTLRController(I)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 176
    :pswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiTLRController(I)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 181
    :pswitch_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiTLRController(I)V

    .line 182
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 186
    :pswitch_9
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiTLRController(I)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 192
    :pswitch_a
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiFollow(Lcom/fimi/app/x8s/enums/X8AiFollowState;I)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto :goto_0

    .line 196
    :pswitch_b
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiHeadLockListener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;)V

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->openUi()V

    .line 202
    :cond_0
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 205
    :pswitch_c
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    .line 207
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiFixedwingListener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;)V

    .line 208
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->openUi()V

    .line 211
    :cond_1
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 214
    :pswitch_d
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiTripodListener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->openUi()V

    .line 220
    :cond_2
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 223
    :pswitch_e
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initScrewExcuteController(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)V

    .line 224
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 227
    :pswitch_f
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AerialGraphListener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;)V

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->openUi()V

    .line 233
    :cond_3
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 237
    :pswitch_10
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-nez v0, :cond_4

    .line 238
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    sget-object v3, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->openUi()V

    .line 245
    :cond_4
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setX8AiState(Z)V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public initAiFollow(Lcom/fimi/app/x8s/enums/X8AiFollowState;I)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .param p2, "type"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiFollowState;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .line 922
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8AiFollowExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setX8AiFollowExcuteListener(Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;)V

    .line 923
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->openUi()V

    .line 925
    :cond_0
    return-void
.end method

.method public initAiLine(Lcom/fimi/app/x8s/enums/X8AiLineState;IJ)V
    .locals 9
    .param p1, "state"    # Lcom/fimi/app/x8s/enums/X8AiLineState;
    .param p2, "mode"    # I
    .param p3, "lineId"    # J

    .prologue
    .line 738
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-nez v0, :cond_0

    .line 739
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiLineState;IJ)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 740
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiLineExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;)V

    .line 741
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 742
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 743
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openUi()V

    .line 745
    :cond_0
    return-void
.end method

.method public initAiSurround(Lcom/fimi/app/x8s/enums/X8AiSuroundState;)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiSuroundState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .line 849
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiSurroundExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;)V

    .line 850
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 851
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openUi()V

    .line 853
    :cond_0
    return-void
.end method

.method public initAiTLRController(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 779
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    .line 781
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mX8TLRListener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8TLRListener;)V

    .line 782
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 783
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->openUi()V

    .line 785
    :cond_0
    return-void
.end method

.method public initScrewExcuteController()V
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initScrewExcuteController(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)V

    .line 615
    return-void
.end method

.method public initScrewExcuteController(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)V
    .locals 3
    .param p1, "state"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .line 621
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8ScrewListener:Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;)V

    .line 622
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 623
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->openUi()V

    .line 625
    :cond_0
    return-void
.end method

.method public isInSARMode()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskCanChangeBottom()Z
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "ret":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v1, :cond_0

    .line 103
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskRunning()Z
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 78
    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "ret":Z
    .local v1, "ret":Z
    move v2, v0

    .line 91
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_1
    return v2

    .line 80
    .end local v2    # "ret":I
    .restart local v0    # "ret":Z
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v3, :cond_2

    .line 81
    const/4 v0, 0x1

    move v1, v0

    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    move v2, v0

    .line 82
    .restart local v2    # "ret":I
    goto :goto_1

    .line 84
    .end local v1    # "ret":Z
    .end local v2    # "ret":I
    .restart local v0    # "ret":Z
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-eqz v3, :cond_0

    .line 87
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFixedwing:Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->onDroneConnected(Z)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->onDroneConnected(Z)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTripod:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->onDroneConnected(Z)V

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->onDroneConnected(Z)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->onDroneConnected(Z)V

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->onDroneConnected(Z)V

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->onDroneConnected(Z)V

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-eqz v0, :cond_7

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->onDroneConnected(Z)V

    .line 454
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-eqz v0, :cond_8

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->onDroneConnected(Z)V

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-eqz v0, :cond_9

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->onDroneConnected(Z)V

    .line 460
    :cond_9
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    if-eqz v0, :cond_a

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiTLRController:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->onDroneConnected(Z)V

    .line 463
    :cond_a
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->onDroneConnected(Z)V

    .line 466
    :cond_b
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-eqz v0, :cond_c

    .line 467
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->onDroneConnected(Z)V

    .line 470
    :cond_c
    if-nez p1, :cond_d

    .line 471
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    .line 473
    :cond_d
    return-void
.end method

.method public openAiAutoPhoto(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 881
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    invoke-direct {p0, v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiAutoPhoto(Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;I)V

    .line 882
    return-void
.end method

.method public openAiD2Point()V
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiPointState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiPointState;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->intAiD2Point(Lcom/fimi/app/x8s/enums/X8AiPointState;)V

    .line 806
    return-void
.end method

.method public openAiFollow(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 917
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    invoke-virtual {p0, v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiFollow(Lcom/fimi/app/x8s/enums/X8AiFollowState;I)V

    .line 918
    return-void
.end method

.method public openAiGravitation()V
    .locals 1

    .prologue
    .line 629
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiGravitation(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)V

    .line 630
    return-void
.end method

.method public openAiLine(IJ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "lineId"    # J

    .prologue
    .line 729
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiLine(Lcom/fimi/app/x8s/enums/X8AiLineState;IJ)V

    .line 730
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 731
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isExecuteCurveProcess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isExecuteCurveProcess"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public openAiSarUi()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    .line 710
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiSarListener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;)V

    .line 711
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 712
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->openUi()V

    .line 714
    :cond_0
    return-void
.end method

.method public openAiSurround()V
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initAiSurround(Lcom/fimi/app/x8s/enums/X8AiSuroundState;)V

    .line 844
    return-void
.end method

.method public removeAlls()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 347
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 511
    return-void
.end method

.method public setIX8AiStateListener(Lcom/fimi/x8sdk/listener/IX8AiStateListener;)V
    .locals 0
    .param p1, "IX8AiStateListener"    # Lcom/fimi/x8sdk/listener/IX8AiStateListener;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiStateListener:Lcom/fimi/x8sdk/listener/IX8AiStateListener;

    .line 954
    return-void
.end method

.method public setManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "mFcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p2, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 505
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 506
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 507
    return-void
.end method

.method public setX8AiState(Z)V
    .locals 1
    .param p1, "aiRunning"    # Z

    .prologue
    .line 958
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiStateListener:Lcom/fimi/x8sdk/listener/IX8AiStateListener;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mIX8AiStateListener:Lcom/fimi/x8sdk/listener/IX8AiStateListener;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/listener/IX8AiStateListener;->aiState(Z)V

    .line 961
    :cond_0
    return-void
.end method

.method public showAiView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    .line 116
    .local v0, "currentMode":I
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    if-eq v1, v2, :cond_0

    .line 118
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->cancleLastMode(II)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->cancleByModeChange(I)V

    .line 120
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 123
    :cond_0
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->cancleByModeChange()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    .line 128
    :cond_1
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    if-ne v1, v2, :cond_3

    .line 130
    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->cancleByModeChange(I)V

    .line 141
    :cond_3
    :goto_0
    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->lastMode:I

    .line 142
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->doCurrentMode(I)V

    .line 143
    return-void

    .line 132
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 134
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->cancleByModeChange(I)V

    goto :goto_0
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiHeadlock:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAerailShot:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    goto :goto_0
.end method

.method public switchLine(JI)V
    .locals 1
    .param p1, "lineId"    # J
    .param p3, "type"    # I

    .prologue
    .line 771
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->switchLine(JI)V

    .line 774
    :cond_0
    return-void
.end method

.method public switchMapVideo(Z)V
    .locals 1
    .param p1, "isVideo"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiGravitation:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->switchMapVideo(Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiScrew:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->switchMapVideo(Z)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->switchMapVideo(Z)V

    .line 502
    :cond_2
    :goto_0
    return-void

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiLine:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->switchMapVideo(Z)V

    goto :goto_0

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiAutoPhoto:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->switchMapVideo(Z)V

    goto :goto_0

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->switchMapVideo(Z)V

    goto :goto_0

    .line 499
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiPoint2Point:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->switchMapVideo(Z)V

    goto :goto_0
.end method

.method public switchUnityEvent()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSurround:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->switchUnityEvent()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiFollow:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->switchUnityEvent()V

    .line 482
    :cond_1
    return-void
.end method

.method public updateSarValue()V
    .locals 4

    .prologue
    .line 717
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->mAiSar:Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->aiExcuteView:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    :cond_0
    return-void
.end method
