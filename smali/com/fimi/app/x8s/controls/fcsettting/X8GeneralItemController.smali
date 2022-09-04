.class public Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8GeneralItemController.java"


# instance fields
.field private btnRestParams:Landroid/widget/Button;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private frequencyPoint:Landroid/widget/LinearLayout;

.field private gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private mContext:Landroid/content/Context;

.field private mListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

.field private mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

.field private mSbMapRectifyDeviation:Lcom/fimi/widget/SwitchButton;

.field private mSbShowLog:Lcom/fimi/widget/SwitchButton;

.field private mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private mllVersion:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private modifyMode:Landroid/widget/LinearLayout;

.field onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

.field private pbResetParams:Landroid/widget/ProgressBar;

.field restSystemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

.field private rlFcItem:Landroid/view/View;

.field private stubFcItem:Landroid/view/ViewStub;

.field private x8LlFlightlog:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 65
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->pbResetParams:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbMapRectifyDeviation:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->isShow:Z

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public initActions()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->onRestSystemListener:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;-><init>(Landroid/content/Context;Lcom/fimi/x8sdk/controller/X8GimbalManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->restSystemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mllVersion:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->modifyMode:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->x8LlFlightlog:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->frequencyPoint:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 60
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_general_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->stubFcItem:Landroid/view/ViewStub;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->isShow:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 289
    return-void
.end method

.method public setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 299
    return-void
.end method

.method public setListerner(Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;)V
    .locals 0
    .param p1, "listerner"    # Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    .line 285
    return-void
.end method

.method public setViewEnable(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbShowLog:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbShowLog:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbShowLog:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public showItem()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->stubFcItem:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_general_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    .line 199
    sget v1, Lcom/fimi/app/x8s/R$id;->th_map:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 200
    sget v1, Lcom/fimi/app/x8s/R$id;->swb_map_rectify_deviation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbMapRectifyDeviation:Lcom/fimi/widget/SwitchButton;

    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbMapRectifyDeviation:Lcom/fimi/widget/SwitchButton;

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$9;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbMapRectifyDeviation:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 217
    sget v1, Lcom/fimi/app/x8s/R$id;->swb_google_map:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

    .line 218
    sget v1, Lcom/fimi/app/x8s/R$id;->th_unity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 219
    sget v1, Lcom/fimi/app/x8s/R$id;->swb_show_log:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbShowLog:Lcom/fimi/widget/SwitchButton;

    .line 220
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_update:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mllVersion:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 221
    sget v1, Lcom/fimi/app/x8s/R$id;->ll_modify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->modifyMode:Landroid/widget/LinearLayout;

    .line 222
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ll_flightlog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->x8LlFlightlog:Landroid/widget/LinearLayout;

    .line 223
    sget v1, Lcom/fimi/app/x8s/R$id;->ll_frequency_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->frequencyPoint:Landroid/widget/LinearLayout;

    .line 225
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThMap:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapStyle()I

    move-result v1

    sget v5, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 227
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rest_params:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->btnRestParams:Landroid/widget/Button;

    .line 228
    sget v1, Lcom/fimi/app/x8s/R$id;->pb_restsystem_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->pbResetParams:Landroid/widget/ProgressBar;

    .line 229
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v1

    sget-object v5, Lcom/fimi/x8sdk/map/MapType;->GoogleMap:Lcom/fimi/x8sdk/map/MapType;

    if-ne v1, v5, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 230
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbGoogleMap:Lcom/fimi/widget/SwitchButton;

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 244
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mThUnity:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 245
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->mSbShowLog:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowLog()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->initActions()V

    .line 248
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->isShow:Z

    .line 249
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->setViewEnable(Z)V

    .line 250
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->rlFcItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void

    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 225
    goto :goto_0

    :cond_2
    move v1, v2

    .line 229
    goto :goto_1

    :cond_3
    move v1, v3

    .line 244
    goto :goto_2
.end method
