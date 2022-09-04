.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8RCMatchCodeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;
    }
.end annotation


# instance fields
.field private btnStart:Landroid/widget/Button;

.field private final cancelDoing:I

.field checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;

.field private checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

.field private checkTip:Landroid/widget/TextView;

.field private checkView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private idealView:Landroid/view/View;

.field private imgAnimation:Landroid/widget/ImageView;

.field private imgResult:Landroid/widget/ImageView;

.field private imgReturn:Landroid/widget/ImageView;

.field private ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private matchBar:Landroid/widget/ProgressBar;

.field private matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

.field private rtBtn:Landroid/widget/Button;

.field private rtView:Landroid/view/View;

.field private final startDone:I

.field private timer:Ljava/util/Timer;

.field private tvRt:Landroid/widget/TextView;

.field private tvRtTip:Landroid/widget/TextView;

.field private tv_progress:Landroid/widget/TextView;

.field private tv_subTip:Landroid/widget/TextView;

.field private tv_tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->startDone:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->cancelDoing:I

    .line 58
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tvRtTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->cancelCheck()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->idealView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgResult:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tvRt:Landroid/widget/TextView;

    return-object v0
.end method

.method private cancelCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;->cancel()Z

    .line 188
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 192
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->timer:Ljava/util/Timer;

    .line 194
    :cond_1
    return-void
.end method

.method private cancelRcMatchCode()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcMatchCodeOrNot(I)V

    .line 92
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 94
    :cond_0
    return-void
.end method

.method private startCheck()V
    .locals 6

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->cancelCheck()V

    .line 180
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->timer:Ljava/util/Timer;

    .line 181
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTask:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$CheckTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 183
    return-void
.end method

.method private startRcMatchCode()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcMatchCodeOrNot(I)V

    .line 85
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public checkRcConnect(Z)V
    .locals 3
    .param p1, "isConnect"    # Z

    .prologue
    .line 213
    if-nez p1, :cond_4

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_match_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->cancelCheck()V

    .line 238
    :cond_2
    :goto_1
    return-void

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_match_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->startCheck()V

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_6

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTip:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_match_code_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 231
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_5

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_tip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_match_code_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public closeUi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 203
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeUi()V

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->idealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 100
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_rc_match_code_layout:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    .line 101
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgReturn:Landroid/widget/ImageView;

    .line 102
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_start_match:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->btnStart:Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_tip:Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_tip1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_subTip:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_animation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgAnimation:Landroid/widget/ImageView;

    .line 106
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgAnimation:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_animation:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgAnimation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 108
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 109
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rc_match_code_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->idealView:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rc_match_progress_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkView:Landroid/view/View;

    .line 111
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rc_match_code_result:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtView:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->calibration_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchBar:Landroid/widget/ProgressBar;

    .line 113
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tv_progress:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_check_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkTip:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_rt_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtBtn:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->rtBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_result_tip2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tvRtTip:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_result_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->tvRt:Landroid/widget/TextView;

    .line 119
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_result:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->imgResult:Landroid/widget/ImageView;

    .line 120
    return-void
.end method

.method public isCalibrationing()Z
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x1

    .line 251
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->matchStatus:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    if-ne v1, v2, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_start_match:I

    if-ne v0, v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->startRcMatchCode()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rt_confirm:I

    if-ne v0, v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 69
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->closeUi()V

    goto :goto_0

    .line 72
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 75
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->cancelRcMatchCode()V

    .line 76
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->closeUi()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public openUi()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->openUi()V

    .line 199
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 44
    return-void
.end method

.method public setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "ix8CalibrationListener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->ix8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 48
    return-void
.end method
