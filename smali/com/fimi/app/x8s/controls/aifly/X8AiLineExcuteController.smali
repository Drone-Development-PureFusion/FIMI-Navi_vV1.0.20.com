.class public Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;,
        Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;
    }
.end annotation


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private count:I

.field private countAction:I

.field private deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private flagSmall:Landroid/view/View;

.field i:I

.field private imgAdd:Landroid/widget/ImageView;

.field private imgBack:Landroid/widget/ImageView;

.field private imgDelete:Landroid/widget/ImageView;

.field private imgEdit:Landroid/widget/ImageView;

.field private imgHistory:Landroid/widget/ImageView;

.field private imgNext:Landroid/widget/ImageView;

.field private imgVcToggle:Landroid/widget/ImageView;

.field private isDraw:Z

.field protected isNextShow:Z

.field protected isShow:Z

.field private lineId:J

.field private lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

.field private mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field private mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private mCurrentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mInterestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mListAtions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

.field private mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

.field private mX8AiLinesPointValueModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;

.field private mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

.field private mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

.field private mode:I

.field private model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

.field private nextRootView:Landroid/view/View;

.field private rlAdd:Landroid/view/View;

.field private timeSend:I

.field private totalPoint:I

.field private tvActionTip:Landroid/widget/TextView;

.field private tvAdd:Landroid/widget/TextView;

.field private tvFlag:Landroid/widget/TextView;

.field private tvP2PTip:Landroid/widget/TextView;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiLineState;IJ)V
    .locals 3
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mX8LineState"    # Lcom/fimi/app/x8s/enums/X8AiLineState;
    .param p4, "mode"    # I
    .param p5, "lineId"    # J

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 69
    new-instance v0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    .line 71
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 75
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 86
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mInterestList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mListAtions:Ljava/util/List;

    .line 116
    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->timeSend:I

    .line 124
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .line 317
    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->i:I

    .line 783
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 263
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 264
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 265
    iput p4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    .line 266
    iput-wide p5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeAiLine()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/enums/X8AiLineState;)Lcom/fimi/app/x8s/enums/X8AiLineState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/enums/X8AiLineState;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgHistory:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->flagSmall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->count:I

    return v0
.end method

.method static synthetic access$1808(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->count:I

    return v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->totalPoint:I

    return v0
.end method

.method static synthetic access$2002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->totalPoint:I

    return p1
.end method

.method static synthetic access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mInterestList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->countAction:I

    return v0
.end method

.method static synthetic access$2308(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->countAction:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->countAction:I

    return v0
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mListAtions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isDraw:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeNextUiFromNext(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method private closeAiLine()V
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->stopVideo()V

    .line 825
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeUi()V

    .line 826
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineBackClick()V

    .line 829
    :cond_0
    return-void
.end method

.method private closeNextUiFromNext(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeNextUi(Z)V

    .line 821
    return-void
.end method

.method private historyUirendering()V
    .locals 20

    .prologue
    .line 1181
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v15

    sget-object v16, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v10, 0x1

    .line 1182
    .local v10, "mapType":I
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLineInfoById(J)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 1183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    if-nez v15, :cond_2

    .line 1272
    :cond_0
    :goto_1
    return-void

    .line 1181
    .end local v10    # "mapType":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1187
    .restart local v10    # "mapType":I
    :cond_2
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v10, v0, v1}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLatlngByLineId(IJ)Ljava/util/List;

    move-result-object v8

    .line 1188
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSpeed()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setSpeed(F)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v15}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getRunByMapOrVedio()I

    move-result v14

    .line 1191
    .local v14, "type":I
    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1192
    sget-object v15, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 1197
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v9, "mapPointList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v4, "interestList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_d

    .line 1201
    new-instance v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v11}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1202
    .local v11, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .line 1204
    .local v7, "latlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getNumber()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    .line 1205
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 1206
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 1207
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitude()I

    move-result v15

    int-to-float v15, v15

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 1209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v15}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v15

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 1210
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getGimbalPitch()I

    move-result v15

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->gimbalPitch:I

    .line 1211
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getPointActionCmd()I

    move-result v15

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    .line 1212
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getRoration()I

    move-result v15

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    .line 1213
    if-nez v14, :cond_6

    const/4 v15, 0x1

    :goto_4
    iput-boolean v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isMapPoint:Z

    .line 1214
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitudePOI()I

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitudePOI()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v15, v16, v18

    if-nez v15, :cond_7

    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitudePOI()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v15, v16, v18

    if-nez v15, :cond_7

    .line 1236
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v16, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1237
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYaw()F

    move-result v15

    invoke-virtual {v11, v15}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 1240
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v15}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v15

    if-nez v15, :cond_b

    .line 1241
    const/4 v15, 0x0

    iput v15, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 1257
    :cond_4
    :goto_6
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1194
    .end local v3    # "i":I
    .end local v4    # "interestList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    .end local v7    # "latlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .end local v9    # "mapPointList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    .end local v11    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_5
    sget-object v15, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    goto/16 :goto_2

    .line 1213
    .restart local v3    # "i":I
    .restart local v4    # "interestList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    .restart local v7    # "latlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .restart local v9    # "mapPointList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    .restart local v11    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    .line 1217
    :cond_7
    new-instance v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v5}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 1218
    .local v5, "interestPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitudePOI()D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 1219
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitudePOI()D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 1220
    invoke-virtual {v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitudePOI()I

    move-result v15

    int-to-float v15, v15

    iput v15, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 1221
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    .line 1222
    const/4 v6, 0x0

    .line 1223
    .local v6, "isAdd":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1224
    .local v13, "tempPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-wide v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v13, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_8

    iget-wide v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v13, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_8

    iget v0, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move/from16 v16, v0

    iget v0, v13, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_8

    .line 1226
    const/4 v6, 0x1

    .line 1230
    .end local v13    # "tempPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_9
    if-nez v6, :cond_a

    .line 1231
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_a
    iput-object v5, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    goto/16 :goto_5

    .line 1242
    .end local v5    # "interestPoint":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v6    # "isAdd":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v15}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 1244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v15}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1245
    const/4 v2, 0x0

    .line 1246
    .local v2, "angle":F
    if-nez v3, :cond_c

    .line 1248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v12

    .line 1249
    .local v12, "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v2

    .line 1255
    :goto_7
    iput v2, v11, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    goto/16 :goto_6

    .line 1252
    .end local v12    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_c
    add-int/lit8 v15, v3, -0x1

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 1253
    .restart local v12    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v2

    goto :goto_7

    .line 1259
    .end local v2    # "angle":F
    .end local v7    # "latlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .end local v11    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v12    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v15

    invoke-virtual {v15, v9, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setAiLineMarkByHistory(Ljava/util/List;Ljava/util/List;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v15

    if-eqz v15, :cond_e

    .line 1261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addSmallMakerByHistory()V

    .line 1266
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->isFarToHome()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->showMaxSaveDialog()V

    goto/16 :goto_1

    .line 1263
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v15}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addSmallMarkerByInterest()V

    goto :goto_8
.end method

.method private onDisconnectTaskComplete()V
    .locals 2

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeUi()V

    .line 1103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineBackClick()V

    .line 1105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineComplete(Z)V

    .line 1107
    :cond_0
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeUi()V

    .line 1091
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->stopVideo()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineBackClick()V

    .line 1096
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineComplete(Z)V

    .line 1098
    :cond_1
    return-void
.end method

.method private returnTipString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    const-string v0, ""

    .line 338
    .local v0, "tip":Ljava/lang/String;
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-nez v1, :cond_0

    .line 339
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_point_model_no_save_exit:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 341
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_vedio_model_no_save_exit:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 343
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_curve_model_no_save_exit:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_no_save_exit:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->stopVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 842
    return-void
.end method


# virtual methods
.method public addInreterstMarker()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "taskMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 1074
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->onTaskComplete(Z)V

    .line 1075
    return-void

    .line 1074
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeModelView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v0, v1, :cond_2

    .line 456
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    .line 465
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 471
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    .line 472
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v0, v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 478
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->HISTORY:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public closeIconByNextUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    return-void
.end method

.method public closeNextUi(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 753
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 757
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    .line 758
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 759
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 760
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 761
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$5;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 775
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isShow:Z

    .line 720
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 721
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->clearAiLineMarker()V

    .line 722
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->resetMapEvent()V

    .line 723
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcClose()V

    .line 724
    sput-boolean v2, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 725
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 729
    :cond_1
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 730
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public getAiLinePoi(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V
    .locals 8
    .param p1, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .prologue
    .line 935
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->hasInterrestPoint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "isAdd":Z
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mInterestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .line 938
    .local v1, "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitudePOI()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLongitudePOI()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitudePOI()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getLatitudePOI()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 939
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitudePOI()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getAltitudePOI()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 940
    const/4 v0, 0x1

    .line 944
    .end local v1    # "point":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    :cond_1
    if-nez v0, :cond_2

    .line 945
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mInterestList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    .end local v0    # "isAdd":Z
    :cond_2
    return-void
.end method

.method public getAiLinePoint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 901
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->count:I

    .line 902
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->countAction:I

    .line 903
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 904
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mListAtions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 905
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mInterestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 906
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v2, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiLinePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 926
    return-void
.end method

.method public getAllPoint(I)V
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 958
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$10;

    invoke-direct {v2, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$10;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;I)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->getAiLinePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_0
    return-void
.end method

.method public getAllPointValue()V
    .locals 3

    .prologue
    .line 999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->totalPoint:I

    if-ge v0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->getAiLinePointValue(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    return-void
.end method

.method public getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
    .locals 2
    .param p1, "from"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "to"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    .line 1276
    .local v0, "angle":F
    return v0
.end method

.method public getDeletePosition()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 207
    .local v1, "viewRect":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 208
    .local v0, "location":[I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 209
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 210
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 211
    aget v2, v0, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 212
    aget v2, v0, v4

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 213
    return-object v1
.end method

.method public getOration()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getRunningPoint()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    if-ne v0, v1, :cond_1

    .line 889
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->FIRST:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .line 890
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAiLinePoint()V

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    if-ne v0, v1, :cond_0

    .line 892
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL_VALUE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mAiLineGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .line 893
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAllPointValue()V

    goto :goto_0
.end method

.method public getmX8AiLineInterestPointController()Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    return-object v0
.end method

.method public goHistoryActivity()V
    .locals 3

    .prologue
    .line 1280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    const-class v2, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1281
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    const v2, 0xf4242

    invoke-virtual {v1, v0, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1282
    return-void
.end method

.method public historyUi2NextUi(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 9
    .param p1, "lineInfo"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1050
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1051
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 1056
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/entity/X8AilinePrameter;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 1057
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setParentLevel(I)V

    .line 1058
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setAiLineExcuteMode(I)V

    .line 1059
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCurrentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

    .line 1060
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    if-nez v0, :cond_0

    .line 1061
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    .line 1062
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    .line 1065
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    int-to-float v3, v3

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1066
    .local v6, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1067
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1069
    .end local v6    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    .line 1070
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public initActions2()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 645
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 647
    return-void
.end method

.method public initView2(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 500
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 501
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_p2p_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvP2PTip:Landroid/widget/TextView;

    .line 502
    sget v0, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 503
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    .line 506
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgHistory:Landroid/widget/ImageView;

    .line 507
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    .line 508
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    .line 509
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_line_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    .line 510
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_line_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvAdd:Landroid/widget/TextView;

    .line 511
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_action_tip1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvActionTip:Landroid/widget/TextView;

    .line 513
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    .line 514
    sget v0, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->flagSmall:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->handleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 519
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->flagSmall:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_line_point_value_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    .line 523
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_line_next_blank:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    .line 524
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    .line 525
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesPointValueModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;

    .line 528
    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    sget v0, Lcom/fimi/app/x8s/R$id;->rl_x8_ai_surround:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget v1, Lcom/fimi/app/x8s/R$id;->img_interest_point:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v3, v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .line 529
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->setListener(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;)V

    .line 537
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->initViewVisiableByStateAndMode(Landroid/view/View;)V

    .line 538
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 284
    return-void
.end method

.method public initViewVisiableByStateAndMode(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setLineMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V

    .line 543
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v0, v1, :cond_7

    .line 544
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-nez v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 547
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_delete2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 552
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_map_select_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    .line 558
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    sget v0, Lcom/fimi/app/x8s/R$id;->img_interest_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickListener()V

    .line 563
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 564
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    .line 616
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isDraw:Z

    .line 617
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setMode()V

    .line 628
    :goto_1
    return-void

    .line 565
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v4, :cond_4

    .line 567
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 568
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_delete2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 573
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_vedio_select_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    .line 579
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickListener()V

    .line 582
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 583
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    goto/16 :goto_0

    .line 584
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->historyUirendering()V

    goto/16 :goto_0

    .line 594
    :cond_5
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 596
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 597
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 600
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 601
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_delete2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 602
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 604
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_map_select_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    .line 608
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 610
    sget v0, Lcom/fimi/app/x8s/R$id;->img_interest_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 611
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickListener()V

    .line 613
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMapClickValid(Z)V

    .line 614
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setOnMarkerClickValid(Z)V

    goto/16 :goto_0

    .line 619
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvActionTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isDraw:Z

    goto/16 :goto_1
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 280
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isShow:Z

    return v0
.end method

.method public lineTaskExite()V
    .locals 2

    .prologue
    .line 870
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiLineState;->STOP:Lcom/fimi/app/x8s/enums/X8AiLineState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 871
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiLineExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 885
    return-void
.end method

.method public onChangeGoLocation(FFFFII)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1155
    return-void
.end method

.method public onChangeMarkerAltitude(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setMarkerViewInfo(F)V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 353
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_4

    .line 354
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v8, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v8, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v1, v8, :cond_2

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->showExitDialog()V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->showNoSaveExit()V

    goto :goto_0

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeAiLine()V

    goto :goto_0

    .line 363
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_line_history:I

    if-ne v0, v1, :cond_5

    .line 364
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->goHistoryActivity()V

    goto :goto_0

    .line 365
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_line_next_blank:I

    if-ne v0, v1, :cond_6

    .line 366
    invoke-direct {p0, v9}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeNextUiFromNext(Z)V

    goto :goto_0

    .line 367
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_line_edit:I

    if-ne v0, v1, :cond_7

    .line 368
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openPointValue(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    goto :goto_0

    .line 369
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_line_add:I

    if-ne v0, v1, :cond_8

    .line 372
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 373
    .local v2, "latitude":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    .line 374
    .local v4, "longitude":D
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v6

    .line 375
    .local v6, "height":F
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getDeviceAngle()F

    move-result v7

    .line 376
    .local v7, "angle":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setAiLineMark(DDFF)V

    .line 394
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 395
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "height":F
    .end local v7    # "angle":F
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_line_delete:I

    if-ne v0, v1, :cond_a

    .line 396
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v8, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v1, v8, :cond_9

    .line 397
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->showDelteDialog()V

    goto/16 :goto_0

    .line 400
    :cond_9
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v8, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v1, v8, :cond_1

    .line 401
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->deleteMarker(Z)V

    goto/16 :goto_0

    .line 405
    :cond_a
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    if-ne v0, v1, :cond_b

    .line 406
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openNextUi()V

    .line 408
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getAiLinePointSize()I

    move-result v8

    iget-object v9, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 409
    invoke-virtual {v9}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getAiLineDistance()F

    move-result v9

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 410
    invoke-virtual {v10}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 408
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setPointSizeAndDistance(IFLjava/util/List;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;)V

    .line 411
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineInfo:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v1, v8}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    goto/16 :goto_0

    .line 417
    :cond_b
    sget v1, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    if-ne v0, v1, :cond_d

    .line 418
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_c

    .line 419
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcOpen()V

    goto/16 :goto_0

    .line 421
    :cond_c
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcClose()V

    goto/16 :goto_0

    .line 423
    :cond_d
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 425
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 427
    :cond_e
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 1079
    if-nez p1, :cond_1

    .line 1081
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->onDisconnectTaskComplete()V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->sysAiVcCtrlMode()V

    goto :goto_0
.end method

.method public onInterestSizeEnable(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->setInterestEnable(Z)V

    .line 201
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onMarkerSelect(ZFLcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 0
    .param p1, "onSelect"    # Z
    .param p2, "altitude"    # F
    .param p3, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p4, "isClick"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    if-nez p4, :cond_0

    .line 150
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openPointValue(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onMarkerSizeChange(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 157
    if-lez p1, :cond_3

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_delete_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    :goto_0
    if-ne p1, v3, :cond_4

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 172
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rlAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    if-nez p1, :cond_5

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvAdd:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_add_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    :cond_1
    :goto_2
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v3, :cond_2

    .line 184
    if-nez p1, :cond_6

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_vedio_select_tip:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 192
    :cond_2
    :goto_3
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_delete2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvAdd:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_add_size:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 186
    :cond_6
    if-ne p1, v3, :cond_7

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_vedio_select_tip1:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_3

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_vedio_select_tip2:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineTaskExite()V

    .line 138
    :cond_1
    return-void
.end method

.method public onRunIndex(II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    const-string v0, ""

    .line 219
    .local v0, "msg":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v5

    const-string v6, "isExecuteCurveProcess"

    invoke-virtual {v5, v6, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 248
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 219
    goto :goto_0

    .line 222
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 245
    :goto_2
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_to_point_action:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvActionTip:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvActionTip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 224
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_na:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    goto :goto_2

    .line 227
    :pswitch_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_hover:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    goto :goto_2

    .line 230
    :pswitch_3
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_record:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    goto :goto_2

    .line 236
    :pswitch_4
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_one_photo:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    goto :goto_2

    .line 239
    :pswitch_5
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_5s_photo:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    goto :goto_2

    .line 242
    :pswitch_6
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_action_three_photo:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method public onTouchActionUp()V
    .locals 0

    .prologue
    .line 1172
    return-void
.end method

.method public onTracking()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1177
    return-void
.end method

.method public openNextUi()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 733
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 736
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setAiLineExcuteMode(I)V

    .line 737
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/entity/X8AilinePrameter;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 738
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    invoke-virtual {v0, v7}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->setParentLevel(I)V

    .line 739
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeIconByNextUi()V

    .line 740
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCurrentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

    .line 741
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    if-nez v0, :cond_0

    .line 742
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    .line 743
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    .line 746
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    int-to-float v3, v3

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 747
    .local v6, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 748
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 750
    .end local v6    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public openPointValue(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 10
    .param p1, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1029
    if-nez p1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeIconByNextUi()V

    .line 1035
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesPointValueModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v5

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;->init(Landroid/app/Activity;Landroid/view/View;ILcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 1036
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLinesPointValueModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesPointValueModule;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCurrentModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;

    .line 1037
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    if-nez v0, :cond_0

    .line 1038
    iput-boolean v9, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isNextShow:Z

    .line 1040
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    .line 1042
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->width:I

    int-to-float v3, v3

    aput v3, v2, v8

    const/4 v3, 0x0

    aput v3, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1043
    .local v7, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1044
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 491
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isShow:Z

    .line 492
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 493
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->handleView:Landroid/view/View;

    .line 494
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->initView2(Landroid/view/View;)V

    .line 495
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->initActions2()V

    .line 496
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 497
    return-void
.end method

.method public openVcToggle()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAiVcClose()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$13;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$13;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 1135
    return-void
.end method

.method public setAiVcNotityFc()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$14;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$14;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1150
    return-void
.end method

.method public setAiVcOpen()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$12;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1121
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 1342
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 780
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcNotityFc()V

    .line 1162
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    .line 272
    return-void
.end method

.method public setMode()V
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-nez v0, :cond_1

    .line 651
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 652
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByAiLineMap()V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 654
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 655
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByAiLineVideo()V

    goto :goto_0

    .line 656
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 657
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByAiLineMap()V

    goto :goto_0

    .line 658
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 659
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 660
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByAiLineMap()V

    goto :goto_0
.end method

.method public setModel(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;)V
    .locals 0
    .param p1, "model"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 276
    return-void
.end method

.method public showAiPointView()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v0, v1, :cond_1

    .line 852
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiLineState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 853
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    const-string v1, "showAiPointView"

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcOpen()V

    .line 856
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openVcToggle()V

    .line 857
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineRunning()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->removeMapClickListener()V

    .line 861
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isDraw:Z

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getWpNUM()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setAiLineIndexPoint(I)V

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getRunningPoint()V

    goto :goto_0
.end method

.method public showDelteDialog()V
    .locals 5

    .prologue
    .line 435
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_delete_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_delete_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$2;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 450
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->deleteDialoag:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 452
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 308
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_route:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_route_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 313
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 315
    return-void
.end method

.method public showMaxSaveDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1309
    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_line_history_disable_excute:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, "t":Ljava/lang/String;
    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_line_history_disable_excute_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "m":Ljava/lang/String;
    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v4, v6, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    .line 1312
    .local v2, "str1":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    new-instance v5, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$15;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$15;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    .line 1320
    .local v0, "farHomeDialog":Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 1321
    return-void
.end method

.method public showNoSaveExit()V
    .locals 5

    .prologue
    .line 320
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_no_save_exit_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->returnTipString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 333
    .local v0, "dialogExiteNoSave":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 334
    return-void
.end method

.method public switchLine(JI)V
    .locals 3
    .param p1, "lineId"    # J
    .param p3, "type"    # I

    .prologue
    .line 1285
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->clearAiLineMarker()V

    .line 1289
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineId:J

    .line 1290
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->historyUirendering()V

    goto :goto_0
.end method

.method public switchMapVideo(Z)V
    .locals 6
    .param p1, "sightFlag"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->handleView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-eq v0, v1, :cond_2

    .line 670
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    .line 671
    if-eqz p1, :cond_3

    .line 673
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v0, v1, :cond_0

    .line 681
    if-nez p1, :cond_6

    .line 683
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v4, :cond_4

    .line 685
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 689
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-nez v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto :goto_0

    .line 692
    :cond_5
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v5, :cond_0

    .line 694
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto :goto_0

    .line 699
    :cond_6
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v4, :cond_7

    .line 700
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 704
    :cond_7
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-nez v0, :cond_8

    .line 705
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto :goto_0

    .line 707
    :cond_8
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mode:I

    if-ne v0, v5, :cond_0

    .line 709
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8AiLineInterestPointController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    goto/16 :goto_0
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->mX8LineState:Lcom/fimi/app/x8s/enums/X8AiLineState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    if-ne v0, v1, :cond_0

    .line 1325
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->timeSend:I

    if-nez v0, :cond_1

    .line 1326
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->timeSend:I

    .line 1327
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$16;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$16;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_MISSION:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 1333
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 1327
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->timeSend:I

    goto :goto_0
.end method
